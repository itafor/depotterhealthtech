<?php ob_start(); ?> 
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
 <?php include("includes/functions.php"); ?> 
 <?php include("includes/studenthead.php"); ?>
 <?php include("includes/studentMenu.php"); ?>
 
   <h4 class="page-head-line">COURSE REGISTRATION FORM</h4>
 <?php
  if(isset($_POST['submit'])){
    $discipline=htmlspecialchars($_POST['discipline']);
   $fullname=htmlspecialchars($_POST['fullname']);
   $matricno=htmlspecialchars($_POST['matricno']);
   $session=htmlspecialchars($_POST['session']);
   $faculty=htmlspecialchars($_POST['faculty']);
   $dept=htmlspecialchars($_POST['dept']);
   $level=htmlspecialchars($_POST['level']);
   $semester=htmlspecialchars($_POST['semester']);
   $course=$_POST['course'];
  
  // $examscore=htmlspecialchars($_POST['examscore']);
  //$cascore=htmlspecialchars($_POST['cascore']);
   $regdate= date("Y-m-d h:i:sa"); 
   
   if(empty($fullname)){
     $failure = "Please enter your full name"; 
   }else if(empty($matricno)){
     $failure = "Please enter your matric no."; 
   }else if(empty($semester)){
     $failure = "Please enter current session."; 
   } else if(empty($faculty)){
     $failure = "Please enter faculty."; 
   }else if(empty($dept)){
     $failure = "Please enter your dept."; 
   }else if(empty($level)){
     $failure = "Please enter your level."; 
   } else if(empty($semester)){
     $failure = "Please enter semester."; 
   }else if(empty($course)){
     $failure = "Please enter course."; 
   }else{
    foreach($_POST['course'] as $key => $chkcourse){ 
          
  $sel=mysqli_query($connection,"SELECT * FROM  courseregister WHERE  course='".$chkcourse."' AND matricno = '$matricno' AND faculty='$faculty' AND dept='$dept' AND session='$session' AND level='$level' AND semester='$semester' ");             
   $norow=mysqli_num_rows($sel);
       }
  if($norow >=1) {
     $failure = "You have already registered the selected course(s)";
   } else{
   foreach($_POST['course'] as $mycourse){ 
   $query=mysqli_query($connection,"INSERT INTO courseregister (courseRegId,discipline,fullname,matricno,session,faculty,dept,level,semester,course,examscore,cascore,regdate) 
   VALUES('','$discipline','$fullname','$matricno','$session','$faculty','$dept','$level','$semester','".mysqli_real_escape_string($connection, $mycourse)."','0','0','$regdate')");
   }
   if($query) {
     $success = "You have successfully registere the selected courses";
   } else{
       $failure =  "Course registration failed".mysqli_error($connection); 
   }
          
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
  
<form action="" method="post" class="regform" role="form" >
 

 <div class="controls"> 
  <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   <span style="color:red"></span>
                    <input id="form_name" type="hidden" name="discipline" onblur="inputValidation(this)" class="form-control" placeholder="Please enter your course of study. *" readonly="readonly"  value="<?php $query =mysqli_query($connection,"SELECT * FROM students where matricno = '".$_SESSION['matricno']."'");
                      while($data=mysqli_fetch_array($query)){
                       echo $data['discipline'];
                      }
                     ?>">
                    <div id="textField"></div>
                </div>
            </div>
        </div>
 <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   FULL NAME:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="fullname" onblur="disciplineValidation(this)" class="form-control" placeholder="Please enter your ful name starting with surname. *"   readonly="readonly"  value="<?php $query =mysqli_query($connection,"SELECT * FROM students where matricno = '".$_SESSION['matricno']."'");
                      while($data=mysqli_fetch_array($query)){
                       echo $data['firstname'] ." ". $data['middlename'] ." ". $data['lastname'];
                      }
                     ?>">
                  <div id="discipline"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   MATRIC NUMBER:<span style="color:red">*</span>
                    <input id="form_name" type="text" name="matricno" onblur="matricValidation(this)" class="form-control" value="<?php echo $_SESSION['matricno'];?>"  readonly="readonly" data-error="Firstname is required.">
                  <div id="matric"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                   CURRENT SESSION (YEAR):<span style="color:red">*</span>
                   
  <?php
   $already_selected_value = '- Select current Session-';
   $earliest_year = 1950;

print '<select name="session" class="form-control col-lg-12 col-md-12 col-sm-4 col-xs-12" style=" height:50px;" onblur="sessionValidation(this)" >';
echo ' <option  value="0">- Select current Session-</option>';  
foreach (range(date('Y'), $earliest_year) as $x) {
    print '<option value="'.$x.'"'.($x === $already_selected_value ? ' selected="selected"' : '').'>'.$x.'</option>';
}
print '</select>';
echo '<div id="session"></div>';
?>
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div><br/>
<div class="row">  
    <div class="col-md-6"> 
        <div class="form-group"> 
            <label for="form_message">DEPARTMENT</label>
            <select  id="faculty" name="faculty"  class="form-control col-lg-12 col-md-12 col-sm-4 col-xs-12" style=" height:50px;">
            <option value="0">Select dept</option>
            <?php  
                 
 $query =$connection->query("SELECT * FROM faculties"); 
 $rowCount=$query->num_rows;
 
       if($rowCount > 0){
  while($row=$query->fetch_assoc()){ 
   echo '<option value= "'.$row['id'].'">'.$row['name'].'</option>';
 }
   }else{
     echo '<option value="">dept not found </option>';
   }
 ?>
  </select> 
    
  </div>
   </div>
   </div>
     <br/>
   
   <div class="row">  
     <div class="col-md-6"> 
       <div class="form-group">  
         <label for="form_message">PROGRAMME</label> 
        <select id="dept"  name="dept" class="form-control col-lg-12 col-md-12 col-sm-4 col-xs-12" style=" height:50px;">
       <option value="">Select dept first </option>
       </select> 
      </div>
   </div> 
 </div>
   <br/>
 
 
 <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="form_message">LEVEL</label>
                         <select id="level"  name="level" class="form-control col-lg-12 col-md-12 col-sm-4 col-xs-12" style=" height:50px;">
                            <option value="">Select programme first </option>
                            </select>
                    <div class="help-block with-errors"></div>
                </div>
            </div>
  </div>  <br/>
  <div class="row">          
              <div class="col-md-6"> 
                    <div class="form-group">  
                         <label for="form_message">SEMESTER</label> 
                             <select id="semester"  name="semester" class="form-control col-lg-12 col-md-12 col-sm-4 col-xs-12" style=" height:50px;">
                    <option value="">Select level first </option>
                          </select> 
                         </div>
                </div>
        </div>
           <br/> 
        <div class="row">          
              <div class="col-md-12"> 
                    <div class="form-group">  
                         <label for="form_message">COURSES</label> 
                             <select id="course"  name="course[]" multiple="multiple" class="form-control col-lg-12 col-md-12 col-sm-4 col-xs-12" style=" height:300px;">
                    <option value="">Select semester first </option>
                          </select> 
                         </div>
                </div>
        </div> <br/>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <input type="submit" name="submit"  value="REGISTER COURSE(S)" style=" height:50px;" class="btn btn-success btn-send">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
 </form> 
 </div>
 </div>
        
 <?php require("includes/footer.php"); ?>