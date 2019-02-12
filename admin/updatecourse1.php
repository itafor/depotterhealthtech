<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
                   
                           <h4 class="page-head-line">UPLOAD STUDENTS' RESULT</h4>
                           
                                     
 <?php
  if(isset($_POST['submit'])){ 
 ?>                          
<?php
    //$matricno=htmlspecialchars($_POST['matricno']);
   $session=htmlspecialchars($_POST['session']);
   $faculty=htmlspecialchars($_POST['faculty']);
   $dept=htmlspecialchars($_POST['dept']);
   $level=htmlspecialchars($_POST['level']);
   $semester=htmlspecialchars($_POST['semester']);
   $course=$_POST['course'];
      
    if(empty($session)){
     $failure = "Please enter current session."; 
   } else if(empty($faculty)){
     $failure = "Please enter faculty."; 
   }else if(empty($dept)){
     $failure = "Please enter your dept."; 
   }else if(empty($level)){
     $failure = "Please enter your level."; 
   } else if(empty($semester)){
     $failure = "Please enter semester."; 
   }elseif(empty($course)) {
    $failure = "Please enter course.";    
   }else{
     ?>
      
        <table  id="studentresultdetail"> 
        <tr>  
        <td>
        <?php 
   $result=mysqli_query($connection,"select DISTINCT faculties.name as facultyname, depts.name  as deptname, level.name as levelname,course.name as coursecode,
semester.name as semestername, course.coursetitle as coursetile, course.creditunit as creditunit, courseregister.session as sessionname
from  courseregister join faculties on faculties.id= courseregister.faculty 
join depts on depts.id= courseregister.dept join level on level.id=courseregister.level 
join semester on semester.id=courseregister.semester 
join course on course.id=courseregister.course
 where  courseregister.course='".$_POST['course']."' AND courseregister.faculty='".$_POST['faculty']."' AND courseregister.dept='".$_POST['dept']."' AND courseregister.level='".$_POST['level']."' AND courseregister.semester='".$_POST['semester']."' AND courseregister.session='".$_POST['session']."'");                       
    if(!$result){
     $failure = "Information not matched";
    }else{
    while($data=mysqli_fetch_array($result)){
   
      echo "<P>".
        "<strong>DEPARTMENT:</strong>"."  <span style='color:#000000; text-align:center; margin-left:20px;'>" .$name=$data['facultyname']." </span>   ". 
        "<strong>PROGRAMME:</strong>   "."<span style='color:#000000;  margin-left:20px;'>" .$name=$data['deptname']."</span>".
        "<strong>LEVEL: </strong>  " ."<span style='color:#000000;  margin-left:20px;'>".$name=$data['levelname']."</span> <br/><br/>".
        "<strong>COURSE TITLE:</strong>   "."<span style='color:#000000;  margin-left:20px;'>" .$name=$data['coursetile']."</span>    ".
        "<strong>COURSE CODE:</strong>    "."<span style='color:#000000;  margin-left:20px;'>".$name=$data['coursecode']."  </span>   ".    
        "<strong>CREDIT UNIT:</strong>    "."<span style='color:#000000;  margin-left:20px;'>"  .$name=$data['creditunit']."</span><br/><br/>".
       
       "<strong>SESSION:</strong>   "."<span style='color:#000000;  margin-left:20px;'>" .$name=$data['sessionname']." </span>  ".
       "<strong>SEMESTER:</strong>   "."<span style='color:#000000;  margin-left:20px;'>" .$name=$data['semestername']."</span><br/><br/>".
      "</P>";
    echo"  </td> ";
    echo "<br/>";
    
 
 }
  
?>
 </tr> 
  </table>  
                
    <br/><br/>
   
  <?php     
$sql=mysqli_query($connection," select  faculties.name as facultyname, courseregister.courseRegId as CRId, 
 depts.name  as deptname, level.name as levelname,
semester.name as semestername, course.name as coursename ,
 course.coursetitle as coursetile, course.creditunit as creditunit, courseregister.*
from  courseregister join faculties on faculties.id= courseregister.faculty 
join depts on depts.id= courseregister.dept join level on level.id=courseregister.level 
join semester on semester.id=courseregister.semester 
join course on course.id=courseregister.course
 where  courseregister.course='".$_POST['course']."' AND courseregister.faculty='".$_POST['faculty']."' AND courseregister.dept='".$_POST['dept']."' AND courseregister.level='".$_POST['level']."' AND courseregister.semester='".$_POST['semester']."' AND courseregister.session='".$_POST['session']."'");
 //$norow=mysqli_num_rows($sql);
   if(mysqli_num_rows($sql) == 0) {
     $failure = "No student had register the selected course";
   } else{
  echo '   
         <form  id="myform" method="POST" action="multipleUpdate.php">
      <div class="table-responsive">   
      <table id="editable_table" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                              <th>STUDENT NAME</th>
                                                <th>MATRIC NO</th> 
                                                  <th>CA SCORE 30%</th>
                                                  <th>EXAM SCORE 70%</th>
                                                  <th>TOTAL SCORE 100%</th>
                                                  <th>GRADE</th>  
                                                  <th>REMARK</th>
                                        </tr>
                                    </thead>
                                    <tbody>  '; 
   ?>
                                        
 <?php       
$sn=0;
while($row=mysqli_fetch_array($sql))
{  
$sn =$sn + 1;     
?>
          <tr>
              <td><?php echo $sn;?>
<?php echo "<input type='hidden' name='CRId[$sn]' value='{$row['CRId']}'>";?>
</td>
                <td><?php echo htmlentities($row['fullname']);?></td>
                <td><?php echo htmlentities($row['matricno']);?></td>
 <?php  $ca= htmlentities($row['cascore']);?>
<td><?php echo "<input id='ca' type='text' name='cascore[$sn]' value='{$row['cascore']}'>";?></td>
    <?php $exam =htmlentities($row['examscore']);?>
<td><?php echo "<input id='exam' type='text' name='examscore[$sn]' value='{$row['examscore']}'>";?></td> 
                 <td><?php echo  $total=$exam + $ca; ?></td>
                 <td><?php echo grade($total);?></td>
                 <td><?php echo remark($total);?></td>
              
                
              <td>
               <div class="row">
              <div class="col-md-6">
              <div class="form-group">                                      
              </td>

    </div>
</div>
</div>
              
          </tr>
        
<?php   
}
//$sn++; 
}  

  } 
 } 
  }
 ?> 
      
                                    </tbody>
                                </table>
                                <div class="col-md-6">
      <input type="submit" name="update" value="ENTER SCORES!" class="form-control  btn btn-primary" style="font-size: 30px; height: 50px;"> </div>
                                </form>  
                                </div> 
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


<script type="text/javascript">
  document.getElementById('myform').addEventListener('submit', saveScore);

function saveScore(e) {
var ca = document.getElementById('ca').value;
var exam = document.getElementById('exam').value;

  if(!validateForm(ca, exam)){ 
   e.preventDefault();
 return false;
}

 }  
    
  function validateForm(ca, exam){
  if(!ca || !exam) {
  alert('Please fill in the form');
  return false;
}

if( ca > 30) {
  alert('CA score must not be more than 30');
  return false;
}

 if(exam > 70) {
  alert('EXAM score must not be more than 70');
  return false;
}

if(isNaN(ca)) {
  alert('Please enter a valid score, ca must be a number');
  return false;
}
if(isNaN(exam)) {
  alert('Please enter a valid score, exam must be a number');
  return false;
}
 return true;
  }

</script>
  <?php require("includes/footer.php"); ?>