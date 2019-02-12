<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
   <h4 class="page-head-line">Remove Course (s)</h4> 
   
   <?php 
   
      if(isset($_GET['id'])){
    $courseID=urlencode($_GET['id']); 
    $delete=mysqli_query($connection,"DELETE FROM course WHERE id ='$courseID' ");
    if($delete)
    {
    echo "<div class='alert alert-success'>Course deleted successfully</div>";   
    }else{
    
    echo "<div class='alert alert-success'>Deletion failed</div><br/>".mysqli_error($connection);   
        }

    }
    
    $coursecode=htmlspecialchars($_POST['coursecode']);
   $semesterid=htmlspecialchars($_POST['semester']);
   $courstitle=htmlspecialchars($_POST['coursetitle']); 
   $creditunit=htmlspecialchars($_POST['creditunit']);   
   
   $sql = mysqli_query ($connection,"SELECT * FROM course WHERE semester_id='".$_POST['semester']."'");
    if(mysqli_num_rows($sql)==0){
      echo "nothing found" ;
    } else{
       echo ' <div class="table-responsive"> 
       <form method="post" action="deleteMultipleCourse.php">   
      <table  border="2px" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                              <th>COURSE CODE</th>
                                                <th>COURSE TITLE</th> 
                                                <th>CREDIT UNIT</th> 
                                                 
                                             <th>  <div style=" float:left;">
           &nbsp;<input type="checkbox" id="selectall"/> Check All   &nbsp;&nbsp;
           
          <abbr title="Remove Course!">  <button  class="btn btn-danger" name="delete" type="submit" id="delete" value="Delete" onClick="return show_confirm22();" style="background:#F52126; color:#fff; border:none; font-size:16px; padding:4px 8px;">
                <i class="fa fa-remove ">DELETE</i></button>  </abbr>
         </div>
         <div style="clear:both;"></div>
    </div> </th>     
                                                
                                        </tr>
                                    </thead>
                                    <tbody>  ';  
    //$array = array();          ?>
              <tr>
    <?php
    $sn=0; 
    while ($row = mysqli_fetch_array($sql)) {
        $sn =$sn + 1;
        ?>  
                                    <tr>
                                            <td><?php echo $sn;?></td>
                                              <td><?php  echo $coursecode=htmlentities($row['name']);?></td>
                                              <td><?php  echo $courstitle=htmlentities($row['coursetitle']);?></td>
                                              <td><?php  echo $courstitle=htmlentities($row['creditunit']);?></td>
                                              
                           <td> <abbr title="Remove subjects!">     <input type="checkbox" name="delid[]" class="case" value="<?php echo $row['id']; ?>" /></abbr> </td>                       
                                    </tr>         
        
    <?php } $sn++;?>
<?php     
}

   
?>
     
    </tbody>
    </table>
     

                </div>  
                
          </div>
     
 <?php require("includes/footer.php"); ?>