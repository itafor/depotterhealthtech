<?php ob_start(); 
 session_start();
include_once '../oesdb.php';

?>
  <?php require("includes/header.php");?>
   <li><button style="height:40px; width:100px; text-decoration:none; color:#ffffff; margin-top:30px;" class="subbtn"><a href="rsltmng.php" >GO BACK</a></button></li> 
 <?php
                              if(isset($_GET['id'])){
                               $id=$_GET['id']; 
                                
                                 
                    $query=mysqli_query($conn,"DELETE FROM candidates WHERE  id='".$id."'");
        
                    
                    if($query){
                    $success = "Candidate deleted successfully";
                    }else{
                     $failure = "Candidate deletion failed";
                    }
                     }
          ?>            
     <?php     
$sql=mysqli_query($conn,"select * FROM candidates ORDER BY date DESC");
 //$norow=mysqli_num_rows($sql);
   if(mysqli_num_rows($sql) <=0) {
     $failure = "Notheing found";
   } else{
     echo  "<h2 style='margin-top:30px; color:white'>CANNDIDATES DETAILS</h2>"."<p style='margin-top:30px; color:white'>Candidates must submit their login details, check each candidate's result with the details below</p>";
  echo '             <table class="table table-bordered" style="margin-top:30px; color:white;">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                                <th>USERNAME</th>
                                                <th>PASSWORD</th>
                                                <th>PHONE NO.</th> 
                                                <th>FULL NAME</th> 
                                                <th>SUBJECT CODE (S).</th>
                                                <th>SUBJECT(S)</th>
                                                <th>DATE</th>   
                                                 <th>ACTION</th>  
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
                                             
                                             <td><?php echo htmlentities($row['username']);?></td>
                                              <td><?php echo htmlentities($row['password']);?></td>
                                              <td><?php echo htmlentities($row['phone']);?></td> 
                                              <td><?php echo htmlentities($row['name']);?></td>
                                              <td><?php echo htmlentities($row['subjcode']);?></td>
                                              <td><?php echo htmlentities($row['subject']);?></td>   
                                                <td><?php echo htmlentities($row['date']);?></td> 
                                               <td>
                                               <div class="row">
            <div class="col-md-6">
                <div class="form-group">
           
                                            <a href="admViewCandidates.php?id=<?php echo $row['id']?>" target="_blank" onclick="return confirm('Are you sure you want to delete this candidate?')">
                            <button  class="btn btn-danger" role="button"><i class="fa fa-remove "></i> Delete</button> </a>                                        

                                  </div>
            </div>
        </div>
                                            </td> 
                                                  
                                            
                                            
                                        </tr>
                                        
                                    
                                      
                                      
<?php 
}
$sn++; 
} ?> 
 
    <?php 
    if(!empty($failure)){
     echo "<span class='btn btn-warning'>" .$failure."</span>"; 
    }
     if(!empty($success)){
         echo "<span class='btn btn-success'>" .$success."</span>"; 
     } 
     ?>    
     
