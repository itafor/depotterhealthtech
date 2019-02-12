<?php ob_start(); ?>
 <?php include("includes/bkheader.php"); ?>
 <?php include("includes/connection.php"); ?>
 <?php include("includes/functions.php"); ?>  
<div class="userheader">
<a href="index.php"><img src="https://www.depotterhealthtech.sch.ng/admin/images/logo.png" class="img-responsive" alt="MY PROFILE" width="40" height="40"></a>
 
</div> 
<div class="container">
    <div style="width:400px; margin-top:50px;">
   <h4 class="page-head-line">change password form</h4>        
  <?php 
                  global $success;
        include('Mail.php'); // includes the PEAR Mail class, already on your server.
        $username = 'admin@depotterhealthtech.sch.ng'; // your email address
        $password = 'depotter/tech/001'; // your email address password  
if(isset($_POST['change'])){
$email=htmlspecialchars($_POST['email']);
if(!preg_match("/^([a-zA-Z0-9])+([a-zA-Z0-9._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9._-]+)+$/", $_POST['email'])) 
                {
                echo "Your email is not valid.";    
                }else{
if(!empty($email)){
$check_email=mysqli_query($connection,"SELECT * FROM admin WHERE email='$email'");
    if(mysqli_num_rows($check_email)==0){
        echo "This email address ".$email." does not exist in our records";
    }else{
          $link='please click the link below or copy and paste on your browser bar  to change your password  https://www.depotterhealthtech.sch.ng/admin/foregotten_pass_op.php';
          $to=$email;
          $from="admin@depotterhealthtech.sch.ng";
          $body=$link;
          $subject="Depotter Password Reset Link";
          
          $headers = array ('From' => $from, 'To' => $to, 'Subject' => $subject); // the email headers
$smtp = Mail::factory('smtp', array ('host' =>'localhost', 'auth' => true, 'username' => $username, 'password' => $password, 'port' => '25')); // SMTP protocol with the username and password of an existing email account in your hosting account
$mail = $smtp->send($to, $headers, $body,$subject); // sending the email

if (PEAR::isError($mail)){
$erro = "<p>" . $mail->getMessage() . "</p>";
}
else {
$success = " We just send you a password reset link "."\n"."kindly login to your email to change your password ";
}
        
    }
}else{
    $erro = "Please enter your email address"."<br/>";
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
<form action="foregotten_pass.php" method="POST">
 <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                  Email Address:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="email" class="form-control" placeholder="Please enter your email address here to continue" value="<?php echo isset($_POST['email']) ? $_POST['email'] : '' ?>" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input id="form_name" type="submit" name="change" value="proceed to change password" class="btn btn-success btn-send" class="form-control" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
</form>

  </div>
  </div>
 <?php require("includes/footer.php"); ?> 