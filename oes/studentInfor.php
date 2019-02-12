<?php ob_start(); ?> 
 
<?php global $_GLOBALS, $msg,$username,$password,$phone,$name,$subjcode,$sub;  require("includes/header.php"); ?> 
<?php
   session_start();
 include_once 'oesdb.php'; 
 if(isset($_POST['submit'])){
$username=htmlspecialchars($_POST['username']);
$password=htmlspecialchars($_POST['password']);
$phone=htmlspecialchars($_POST['phone']);
$name=htmlspecialchars($_POST['name']);
$subjcode=htmlspecialchars($_POST['subjcode']);
$sub=htmlspecialchars($_POST['subject']); 

if($username=="" || $password=="" || $phone=="" || $name=="" || $subjcode=="" || $sub==""){
$msg = "All fields are required";
}else{
$sel=mysqli_query($conn,"select * FROM candidates where phone='$phone'");
 if(mysqli_num_rows($sel) > 0){
 $msg = "This phone number  ".$phone.  "  already exist";
 }else{
  $insert=mysqli_query($conn,"INSERT INTO candidates Values('','$username','$password','$phone','$name','$subjcode','$sub',now())");
  if($insert){
    $msg = "You have successfully submited your exam details";
  }else{
    $msg = "Exam details could not be submitted due to unknown error, pls try again".mysqli_error($conn);  
  }
 }
 }
 
 }
?>
  <h2 style="margin-top:30px; color:white;">Fill this form correctly, else the examiner may not record your result!</h2>
<form  id="stdinfo" action="studentInfor.php" method="post" onsubmit="return validateStudentInfoform('stdinfo');">

<table  style="width:700px; height:500px; margin-top:-140px;">
 <tr><td><?php echo $msg; ?></td></tr> 
<tr>
<td><label>Username</label></td>
 <td><input type="text" name="username" value="<?php echo $username; ?> " size="30"></td><br>
</tr> 
<tr>
<td><label>Password</label></td>
 <td><input type="text" name="password" value="<?php echo $password; ?> " size="30"></td><br>
 </tr>
 <tr> 
 <td><label>Phone no</label></td><br>
 <td><input type="text" name="phone" value="<?php echo $phone; ?> " size="30" onkeyup="isnum(this)"></td><br>
 </tr> 
  <tr> 
 <td><label>Fullname</label> </td><br>
 <td><input type="text" name="name" value="<?php echo $name; ?> " size="30" onkeyup="isalphaWhitspace(this)" ></td><br>
 </tr> 
   <tr> 
 <td><label>Subject Code(s)</label> </td><br>
 <td><input type="text" name="subjcode" value="<?php echo $subjcode; ?> " size="30" ></td><br>
 </tr> 
 <tr> 
 <td><label>Subject(s) Title</label> </td><br>
 <td><input type="text" name="subject" value="<?php echo $sub; ?> " size="30"></td><br>
 </tr> 
 <tr> 
 <td><input type="submit" name="submit" value="SUBMIT" size="30"></td><br>
 </tr> 
 </table>
</form>