<?php
require 'PHPMailerAutoload.php';
require 'PHPMailer.php';
$mail = new PHPMailer;

$mail->isSMTP();                                   // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';                    // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                            // Enable SMTP authentication
$mail->Username = 'itaforfrancis@gmail.com';          // SMTP username
$mail->Password = 'itaforo8/50053'; // SMTP password
$mail->SMTPSecure = 'tls';                         // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587;                                 // TCP port to connect to

$mail->setFrom('mohsin@gmail.com', 'Mohsin SHoukat');
$mail->addReplyTo('mohsin@gmail.com', 'Mohsin SHoukat');
$mail->addAddress('itaforfrancis@gmail.com');   // Add a recipient
//$mail->addCC('cc@example.com');
//$mail->addBCC('bcc@example.com');

$mail->isHTML(true);  // Set email format to HTML

$bodyContent = '<h1>Sending Email From LocalHost</h1>';
$bodyContent .= '<p>Finaly Now I can send mail <b>offline</b></p>';

$mail->Subject = 'Email from Localhost By Mohsin Shoukat';
$mail->Body    = $bodyContent;

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
} else {
    echo 'Message has been sent';
	// visit our site www.studyofcs.com for more learning
}
?>
