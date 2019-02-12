<?php
//insert.php
//$connect = mysqli_connect("localhost", "root", "", "depotter");
 include("includes/connection.php"); 
if(isset($_POST["item_name"]))
{
 $item_name = $_POST["item_name"];
   $sel_fa=mysqli_query($connection,"SELECT * FROM faculties WHERE name='$item_name'");
   $norow=mysqli_num_rows($sel_fa);
   if($norow ==1) {
     echo "FACULTY ALREADY EXIST";
   } else{  
     
 $query = '';
 for($count = 0; $count<count($item_name); $count++)
 {
  $item_name_clean = mysqli_real_escape_string($connection, $item_name[$count]);
  
  if($item_name_clean != '')
  {
   $query .= '
   INSERT INTO faculties(id,name) 
   VALUES("","'.$item_name_clean.'"); 
   ';
  }
 }
 if($query != '')
 {
  if(mysqli_multi_query($connection, $query))
  {
   echo 'Item Data Inserted';
  }
  else
  {
   echo 'Error'.mysqli_error($connection);
  }
 }
 else
 {
  echo 'All Fields are Required';
 }
}
}
?>
