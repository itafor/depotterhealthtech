<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
                   
 <h4 class="page-head-line">UPLOAD STUDENTS' RESULT</h4>
        
          <?php    
    if(isset($_POST['update'])) {

           $size = count($_POST['cascore']);                     
    $i = 0;
    
    while ( $i <= $size) {
        $exam = $_POST['examscore'][$i];
        $ca = $_POST['cascore'][$i];
        $id =$_POST['CRId'][$i];
        $qurey = mysqli_query($connection,"UPDATE courseregister SET cascore = '$ca', examscore = '$exam' WHERE courseRegId= '$id' LIMIT 1 ");
        if($qurey){
            header('location: index.php');
        }

        ++$i;
        }   
}
       
          ?> 