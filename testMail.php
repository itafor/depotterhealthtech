<?php require_once("includes/connection.php");?> 
<?php include("includes/header.php"); ?>
    
 <div class="frontContent">
    <div class="title">MY CONTENT TITLE</div>      
    <div class="container"> 
      
           <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">Please Login To Enter </h4>
                          <?php
include('Mail.php'); // includes the PEAR Mail class, already on your server.

$username = 'admin@depotterhealthtech.sch.ng'; // your email address
$password = 'depotter/tech/001'; // your email address password

$from = "admin@depotterhealthtech.sch.ng";
$to = "itaforfrancis@gmail.com";
$subject = "This is a sample smtp script";
$body= "Welcome to QServers.net Secure Mailing Platform.";

$headers = array ('From' => $from, 'To' => $to, 'Subject' => $subject); // the email headers
$smtp = Mail::factory('smtp', array ('host' =>'localhost', 'auth' => true, 'username' => $username, 'password' => $password, 'port' => '25')); // SMTP protocol with the username and password of an existing email account in your hosting account
$mail = $smtp->send($to, $headers, $body); // sending the email

if (PEAR::isError($mail)){
echo("<p>" . $mail->getMessage() . "</p>");
}
else {
echo("<p>Message successfully sent!</p>");
// header("Location: http://www.example.com/"); // you can redirect page on successful submission.
}
?>

 
                </div>

            </div

            </div>
        </div> <!--content-wraper end-->
 
    
       
    </div>
 </div>

   
<?php require("includes/footer.php"); ?> 