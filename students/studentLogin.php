<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
 <?php include("includes/functions.php"); ?>
  
    <?php
 if(isset($_SESSION["matricno"])){
  header("location: index.php");
  exit();
 } 
?>
<div class="userheader">
<a href="http://www.depotterhealthtech.sch.ng/index.php"><img src="images/logo.png" class="img-responsive" alt="MY PROFILE" width="40" height="40"></a>
 
</div>
   <?php 
                   $message = "";
                   
                    if(isset($_POST['login'])){  
    //get form data
     $matricno=addslashes(strip_tags($_POST['matricno']));
    $password=md5(addslashes(strip_tags($_POST['password'])));
    //$rememberme=addslashes(strip_tags($_POST['rememberme']));
    
    
    if($matricno == "" || $password == ""){
    $message = "<div>Please enter your matric number and password</div>";  
    }else{
      $login=mysqli_query($connection,"SELECT * FROM students  WHERE matricno='$matricno' AND user_status='Inactive'");
      if(mysqli_num_rows($login) > 0){
         $message  = "<div>your Account has been disabled, please contact the admin  </div>";  
      }else{
         $chkpass=mysqli_query($connection,"SELECT * FROM students  WHERE password='$password' AND matricno='$matricno'  ");
      if(mysqli_num_rows($chkpass) ==0){
         $message  = "<div>You entered a wrong password or matric number </div>";  
      }else{
      $_SESSION['matricno']=$matricno; 
  
         header("location: https://www.depotterhealthtech.sch.ng/students/index.php");
         exit();
 
   } 
  } 
  }
  }
?>
             
              
               <div class="container"> 
              
                            <div class="admincontent">
                                 <h4 class="page-head-line">STUDENT LOGIN FORM</h4>
                                  <?php
              if(!empty($message)){
              echo "<span class='btn btn-danger'>" .$message."</span>";    
              }
              ?>  
  <form action="studentLogin.php" method="post" role="form">
<div class="controls">
           <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                   MATRIC NUMBER:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="matricno" class="form-control" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
         <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                  PASSWORD:<span style="color:red">*</span>
                    <input id="form_name" type="password" name="password" class="form-control" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2">
                <div class="form-group">
                    <input id="form_name" type="submit" name="login" value="Login" class="btn btn-success btn-send" class="form-control" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="form-group">
                   <a href="../students/foregotten_pass.php"> <input id="form_name" type="button"  value="Forgot password?" class="btn btn-success btn-info" class="form-control" ></a>
                    <div class="help-block with-errors"></div>
                </div>
            </div><div class="col-md-2">
                <div class="form-group">
                  <a href="../studentRegForm.php">  <input id="form_name" type="button"  value="Create Account" class="btn btn-info btn-" class="form-control" ></a>
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
       </div>
</form>
                </div>
        </div>
  <?php require("includes/footer.php"); ?>