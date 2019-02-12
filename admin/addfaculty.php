<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
                   <br /><br />
                      <?php 
    $check=mysqli_query($connection,"SELECT * FROM admin WHERE username='".$_SESSION['username']."' AND rank = 'admin' ");
     if(mysqli_num_rows($check) > 0)
    {
   // echo '<div style="opacity: .5; pointer-events: none">' ; 
    }else{
        echo '<div style="opacity: .5; pointer-events: none;">' ;
   echo "<h3 style='color:red;'>Forbidden Area, Only the admin can access this area</h3>"; 
    }
     
    ?>
  <div class="container">
   <br />
   <h2 align="center">DEPARTMENTS</h2>
   <br />
   <div class="table-responsive">
    <table class="table table-bordered" id="crud_table">
     <tr>
      <th width="35%">DEPARTMENT NAME</th>
     </tr>
     <tr>
      <td contenteditable="true" class="item_name"></td>
      <td width="5%"></td>
     </tr>
    </table>
    <div align="right">
     <button type="button" name="add" id="add" class="btn btn-success btn-xs">+</button>
    </div>
    <div align="center">
     <button type="button" name="save" id="save" class="btn btn-info">Save</button>
    </div>
    <br />
    <div id="inserted_item_data"></div>
   </div>
   
  </div>

   
          
  </div>
  </div> 
  </div>
 <?php require("includes/footer.php"); ?>