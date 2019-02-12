<?php ob_start(); ?> 
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
 <?php include("includes/functions.php"); ?> 
 <?php include("includes/studenthead.php"); ?>
 <?php include("includes/studentMenu.php"); ?>
                               
                                 <img src="images/resulheader.png" class="img-responsive" id="resultsheet"  >
                            <h4 id="resulttitle">Result Sheet</h4>         
 <?php
 global $initalsum, $failure ;
  if(isset($_POST['submit'])){ 
 ?>                          
<?php
    $matricno=htmlspecialchars($_POST['matricno']);
   $session=htmlspecialchars($_POST['session']);
   $faculty=htmlspecialchars($_POST['faculty']);
   $dept=htmlspecialchars($_POST['dept']);
   $level=htmlspecialchars($_POST['level']);
   $semester=htmlspecialchars($_POST['semester']);
   
      
   if(empty($matricno)){
     $failure = "Please enter your matric no."; 
   }else if(empty($session)){
     $failure = "Please enter current session."; 
   } else if(empty($faculty)){
     $failure = "Please enter faculty."; 
   }else if(empty($dept)){
     $failure = "Please enter your dept."; 
   }else if(empty($level)){
     $failure = "Please enter your level."; 
   } else if(empty($semester)){
     $failure = "Please enter semester."; 
   }else {
     ?>
       
                 <table  id="studentresultdetail"> 
        <tr>  
        <td class='tblwidth'>
        <?php 
   $result=mysqli_query($connection,"select DISTINCT faculties.name as facultyname, depts.name  as deptname, level.name as levelname,courseregister.discipline as discipline,
semester.name as semestername, courseregister.fullname as fullname, courseregister.matricno as matricno, courseregister.session as sessionname
from  courseregister join faculties on faculties.id= courseregister.faculty 
join depts on depts.id= courseregister.dept join level on level.id=courseregister.level 
join semester on semester.id=courseregister.semester 
join course on course.id=courseregister.course
 where  courseregister.matricno='".$_POST['matricno']."' AND courseregister.faculty='".$_POST['faculty']."' AND courseregister.dept='".$_POST['dept']."' AND courseregister.level='".$_POST['level']."' AND courseregister.semester='".$_POST['semester']."' AND courseregister.session='".$_POST['session']."'");        
    if(!$result){
     $failure = "Information not matched";
    }else{
    while($data=mysqli_fetch_array($result)){
    //$picture=$data['picture'];
      echo "<P>".
        "<span class='stddetals'>FULL NAME: </span>"."<br/>".
        "<span class='stddetals'>MATRIC.NO: </span>  "."<br/>".
        "<span class='stddetals'>DEPARTMENT:</span>  "."<br/>".  
       "<span class='stddetals'>PROGRAMME:</span>  "."<br/>".
       "<span class='stddetals'>LEVEL: </span>  "."<br/>".
    
       "<span class='stddetals'>SESSION:  </span>"."<br/>".
       "<span class='stddetals'>SEMESTER: </span>  "."<br/>".
      "</P>";
      echo"  </td> "; 
      echo"  <td class='tblwidth'> ". 
         "<span class='stddetals' >" .$name=$data['fullname']."</span><br/>".
        " <span class='stddetals'>" .$name=$data['matricno']."</span><br/>".
         " <span class='stddetals'>" .$name=$data['facultyname']."</span><br/>".  
       " <span class='stddetals'>" .$name=$data['deptname']."</span><br/>".
       " <span class='stddetals'>" .$name=$data['levelname']."</span><br/>".
       
       " <span class='stddetals'>" .$name=$data['sessionname']."</span><br/>".
       "<span class='stddetals'>" .$name=$data['semestername']."</span><br/>".
     " </td> ";
    
    echo "<br/>";
     echo"  <td class='tblwidth'> "; 
 // echo "<img src='$picture' alt=\"My profile picture\" class='prof_img'>"."<br>"."<h3 style='color: white;'>". $name=$data['firstname']." ".$data['lastname']."</h3>";
 }
 ?>  
 
  <?php 
    $matricno=$_SESSION['matricno'];
    $select_profile="SELECT * FROM students WHERE matricno='$matricno'";
    $result=mysqli_query($connection,$select_profile);
    while($data=mysqli_fetch_array($result)){
    $picture=$data['picture']; 
    echo "<br/>";
 // echo "Welcome: ". $name=$data['firstname']."<br/>";
  echo "<img src='$picture' alt=\"My profile picture\">";         
 }
?>
   </td>   

 </tr> 
  </table> 
    <br/><br/>
       
  <?php     
$sql=mysqli_query($connection,"select  faculties.name as facultyname, courseregister.courseRegId as CRId, 
 depts.name  as deptname, level.name as levelname,
semester.name as semestername, course.name as coursename,
course.coursetitle as coursetile, course.creditunit as creditunit, courseregister.*
from  courseregister join faculties on faculties.id= courseregister.faculty 
join depts on depts.id= courseregister.dept join level on level.id=courseregister.level 
join semester on semester.id=courseregister.semester 
join course on course.id=courseregister.course
 where  courseregister.matricno='".$_POST['matricno']."' AND courseregister.faculty='".$_POST['faculty']."' AND courseregister.dept='".$_POST['dept']."' AND courseregister.level='".$_POST['level']."' AND courseregister.semester='".$_POST['semester']."' AND courseregister.session='".$_POST['session']."'");
 //$norow=mysqli_num_rows($sql);
   if(mysqli_num_rows($sql) == 0) {
     $failure = "You have not register any course for the selected session and semester, please register your course(s)";
   } else{
  echo '             <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                                <th>COURSE CODE</th>
                                                <th>COURSE TITLE</th>
                                                <th>CREDIT UNIT</th> 
                                                 <th>CA SCORE (30%)</th> 
                                                 <th>EXAM SCORE (70%)</th> 
                                                 <th>TOTAL (100%)</th>
                                                 <th>GRADE</th> 
                                                 <th>REMARK</th>    
                                        </tr>
                                    </thead>
                                    <tbody>  '; 
   ?>
                                        
 <?php  
 $initalsum= 0;      
$sn=0;
while($row=mysqli_fetch_array($sql))
{  
$sn =$sn + 1;     
?>


                                        <tr>
                                            <td><?php echo $sn;?></td>
                                             
                                             <td><?php echo htmlentities($row['coursename']);?></td>
                                              <td><?php echo htmlentities($row['coursetile']);?></td>
                                              <td><?php echo htmlentities($row['creditunit']);?></td> 
                                               <td><?php echo $ca= htmlentities($row['cascore']);?></td> 
                                               <td><?php echo $exam =htmlentities($row['examscore']);?></td> 
                                                <td><?php echo  $total=$exam + $ca; ?></td>
                                               <td><?php echo grade($total);?></td>
                                               <td><?php echo remark($total);?></td> 
                                         <?php $finalsum =$row['creditunit'];
                                              $initalsum +=$finalsum;?>            
                                           
                                        </tr>
                                        
                                    
                                      
                                      
<?php 
}
$sn++; 
} ?>  
  <?php
  } 
       
 } 
}
 ?>   
 <?php
 if(!$failure)              
                     echo '<tr>
                      <td></td>
                      <td></td>   <td><strong>TOTAL CREDIT UNIT REGISTERED:</strong></td>';
                      ?>
                      <td><?php echo $initalsum ; ?></td><td></td><td></td><td></td><td></td><td></td> 
                    </tr>
      
                                    </tbody>
                                </table>
                      <?php 
    if(!empty($failure)){
     echo "<span class='btn btn-warning'>" .$failure."</span>"; 
    }
     if(!empty($success)){
     } 
     ?>
      
      <div class="row">  
     <div class="col-md-6"> 
       <div class="form-group">   
          <input type="button" value="Print" onclick="javascript:printDiv('print')" />   
      </div>
   </div> 
   <div class="col-md-6"> 
       <div class="form-group">  
           
          <h4 style="text-align: center;">Signation:___________Date:______________<br/>HEAD OF DEPARTMENT</h4> 
                     
      </div>
   </div> 
 </div> 
                </div>
        </div>   
        
        </div>
        
  <?php require("includes/footer.php"); ?>