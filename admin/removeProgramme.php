<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
   <h4 class="page-head-line">Remove PROGRAMME(s)</h4> 
   
   
   <?php 
   
      if(isset($_GET['id'])){
    $courseID=urlencode($_GET['id']); 
    $delete=mysqli_query($connection,"DELETE FROM depts WHERE id ='$courseID' ");
    if($delete)
    {
    echo "<div class='alert alert-success'>Programme removed successfully</div>";   
    }else{
    
    echo "<div class='alert alert-success'>Deletion failed</div><br/>".mysqli_error($connection);   
        }

    }
    
    $dept=htmlspecialchars($_POST['dept']);
   $facultyid=htmlspecialchars($_POST['faculty']);
   
   $sql = mysqli_query ($connection,"SELECT * FROM depts where faculty_id='".$_POST['faculty']."'");
    if(mysqli_num_rows($sql)==0){
      echo "nothing found" ;
    } else{
       echo ' <div class="table-responsive">   
       <form method="post" action="deleteMultipleprogramme.php"> 
      <table  border="2px" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                              <th>PROGRAMMES</th>
                                                
                                                <th>REMOVE</th>  
                                                 
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
                                              
                                             <td><a href="removeProgramme.php?id=<?php echo $row['id']?>" onclick="return confirm('Are you sure you want to remove this programme? You cant revert this action!')">
                            <abbr title="Remove course!"><button  class="btn btn-danger" role="button"><i class="fa fa-remove"></i></button> </abbr></a> </td> 
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