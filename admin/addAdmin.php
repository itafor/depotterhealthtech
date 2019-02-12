<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
   <h4 class="page-head-line">Add New Staff</h4> 
  <?php 
      include('Mail.php'); // includes the PEAR Mail class, already on your server.
        $username = 'admin@depotterhealthtech.sch.ng'; // your email address
        $password = 'depotter/tech/001'; // your email address password       

    if(isset($_POST['create']))
    {
        
    //get form data
    $fullname=htmlspecialchars(strip_tags($_POST['fullname']));
    $phone=htmlspecialchars(strip_tags($_POST['phone'])); 
    $email=htmlspecialchars(strip_tags($_POST['email'])); 
    $usernam=htmlspecialchars(strip_tags($_POST['username']));
    $pass=md5(htmlspecialchars(strip_tags($_POST['password'])));
    $confirm_pass=md5(htmlspecialchars(strip_tags($_POST['confirmpassword'])));
    $date=date("Y-m-d h:i:sa");
     
    if( $fullname=="" || $phone=="" || $usernam=="" || $pass=="" || $email=="" || $confirm_pass==""){
    $erro= "please fill out all fields";
    }else{
         //check if username has already been taken
         $checkusername=mysqli_query($connection,"SELECT * FROM admin WHERE username='$usernam'");
         if(mysqli_num_rows($checkusername) >= 1){
          $erro="username already taken";
          }else{
               //check if email has already been taken
         $checkemail=mysqli_query($connection,"SELECT * FROM admin WHERE email='$email'");
         if(mysqli_num_rows($checkemail) >= 1){
         $erro= "Email already taken";
          }else{
            //check if phone has already been taken
         $checkphone=mysqli_query($connection,"SELECT * FROM admin WHERE phone='$phone'");
         if(mysqli_num_rows($checkphone) >= 1){
          $erro= "Phone number already taken";
          }else{
              if(!preg_match("/^([a-zA-Z0-9])+([a-zA-Z0-9._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9._-]+)+$/", $_POST['email'])) 
                {
                $erro=  "Your email is not valid.";    
                }else{
                    if($pass !=$confirm_pass){
                     $erro=  "passwords don't matched."; 
                    }else{
           //generate random codes
           $code=md5(rand(11111111,99999999));
           //send activation email
          $username = 'admin@depotterhealthtech.sch.ng'; // your email address
         $password = 'depotter/tech/001'; // your email address password   
             $to=$email;
             $from = 'admin@depotterhealthtech.sch.ng';
             
        $body= "Hello $usernam,\n\n you have been added as a satff on de-potter website and need to confirm your email address.Click on the link below or past it into the URL bar of your browser to confirm your email ,Please note that this account may be disabled as soon as you are done with the task given to you by the admin \n\n https://depotterhealthtech.sch.ng/admin/activate.php?code=$code\n\n";
        
           $subject= 'activate your account with de potter college';
         
           
           
    $headers = array ('From' => $from, 'To' => $to, 'Subject' => $subject); // the email headers
$smtp = Mail::factory('smtp', array ('host' =>'localhost', 'auth' => true, 'username' => $username, 'password' => $password, 'port' => '25')); // SMTP protocol with the username and password of an existing email account in your hosting account
$mail = $smtp->send($to, $headers, $body, $subject); // sending the email

if (PEAR::isError($mail)){
$erro = "<p>" . $mail->getMessage() ."we couldn't sign you up at this time. pls try again later". "</p>";
 
}else {
 $register=mysqli_query($connection,"INSERT INTO admin(id,fullname,email,username,password,phone,picture,code,active,regdate,user_status,rank)
        VALUES('','$fullname','$email','$usernam','$pass','$phone','n','$code','0','$date','Active','staff')");
        if(!$register)
        echo " sign up failed".mysqli_error($connection);    
       else
        $success = "you have been registered successfully! please check your email ($email) to activate your account "; 
}
           
  
           }
         }
       }                   
    }
   } 
}
}  
?>

<?php 
    if(!empty($erro)){
     echo "<span class='btn btn-danger'>" .$erro."</span>"; 
    }
     if(!empty($success)){
     echo "<span class='btn btn-success'>" .$success."</span>";
     } 
     ?>
<?php 
    $check=mysqli_query($connection,"SELECT * FROM admin WHERE username='".$_SESSION['username']."' AND rank = 'admin' ");
     if(mysqli_num_rows($check) > 0)
    {
   // echo '<div style="opacity: .5; pointer-events: none">' ; 
    }else{
        echo '<div style="opacity: .5; pointer-events: none;">' ;
   echo "<h3 style='color:red;'>Forbidden Area, Only the admin can access this area</h3>"; 
    }
     
    ?>  
    
    
<form action="addAdmin.php" method="post" role="form">
<div class="controls">  
<div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   FULL NAME:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="fullname" class="form-control" placeholder="Please enter your full name *"  data-error="Firstname is required." value="<?php echo isset($_POST['fullname']) ? $_POST['fullname'] : '' ?>">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   PHONE NUMBER:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="phone" class="form-control" placeholder="Please enter your full name *"  data-error="Firstname is required." value="<?php echo isset($_POST['phone']) ? $_POST['phone'] : '' ?>">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   EMAIL:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="email" class="form-control" placeholder="Please enter your email *"  data-error="Firstname is required." value="<?php echo isset($_POST['email']) ? $_POST['email'] : '' ?>">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   USER NAME:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="username" class="form-control" placeholder="Please enter your username *"  data-error="Firstname is required." value="<?php echo isset($_POST['username']) ? $_POST['username'] : '' ?>">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   PASSWORD:<span style="color:red">*</span>
                    <input id="form_name" type="password" name="password" class="form-control" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                 CONFIRM  PASSWORD:<span style="color:red">*</span>
                    <input id="form_name" type="password" name="confirmpassword" class="form-control" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input id="form_name" type="submit" name="create" value="Create Account" class="btn btn-success btn-send" class="form-control" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
     
      </div>
</form>
                                                                                   

                </div>  
                
          </div>
           </div>
     
 <?php require("includes/footer.php"); ?>