<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
 
                                 <h4 class="page-head-line">UPLOAD STUDENTS' RESULT</h4>
                      <?php   
      if(isset($_POST['edit'])) {
      
          $id=$_REQUEST['courseRegId'];
          $examscore=$_REQUEST['examscore']; 
          $cascore=$_REQUEST['cascore'];
          
           if($examscore >70){
             $failure = "Exam score must not be more than 70%  " . " you entered " .$examscore."%";
           }elseif($cascore > 30){
               $failure = "CA score must not be more than 30%  "."you entered " .$cascore."%";
           }elseif(empty($examscore)){
             $failure = "Please enter exam score";
           }elseif(empty($cascore)){
            $failure = "Please enter CA score";   
           }elseif(!preg_match('/^[0-9]*$/',$examscore)){
                 $failure = "Exam score must be numbers only not letters "."you entered " .$examscore;    
              }elseif(!preg_match('/^[0-9]*$/',$cascore)){
               $failure = "CA score must be numbers only not letters "."you entered " .$cascore;     
              }else{
    
    
     $query=mysqli_query($connection,"UPDATE courseregister SET examscore='".$examscore."', cascore='".$cascore."' WHERE courseRegId='".$id."'");
        
          if(!$query)
          {die ("An unexpected error occured while saving the record, Please try again!");}
          else
         {
         $success = "Scores uploaded  successfully!";
           
         }
      }
    }
     ?>                                                              
         <?php 
    if(!empty($failure)){
     echo "<span class='btn btn-warning'>" .$failure."</span>"; 
    }
     if(!empty($success)){
     echo "<span class='btn btn-success'>" .$success."</span>";
  
     } 
     ?> 
                </div>
        </div>
  <?php require("includes/footer.php"); ?>