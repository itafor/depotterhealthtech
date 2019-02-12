<?php ob_start(); ?> 
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
 <?php include("includes/functions.php"); ?> 
 <?php include("includes/studenthead.php"); ?>
 <?php include("includes/studentMenu.php"); ?>
  
  
 
    <?php
       if(isset($_GET['id'])) {
    $id=urlencode($_GET['id']);
    $del=mysqli_query($connection,"DELETE FROM complain WHERE id='$id'");
    if($del) {
     echo "student reaction removed successfully" ;
    }
    }  
    ?>
         <h4 class="page-head-line">ANOUNCEMENTS</h4>
    <div style="width:40%; margin-left:200px;heigth:200px;">
       <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item dropdown">
            <a class="nav-link" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unread Anouncement
                <?php
                $query =mysqli_query($connection,"SELECT  name,subject, date, mes, status, id, count(id) as num from anouncement where `status` = 'unread' AND matricno ='".$_SESSION['matricno']."'  order by `date` DESC");
                if(mysqli_num_rows($query)> 0){
                ?>
                <span style="color:red;" class="badge badge-light"><?php 
      
                  while($data=mysqli_fetch_array($query)){
                echo $data['num']; } ?></span>
              <?php
                }
                    ?>
              </a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
                <?php
                $query =mysqli_query($connection, "SELECT  DISTINCT name,id,subject,date, mes,matricno,status from anouncement WHERE matricno ='".$_SESSION['matricno']."' order by date DESC");
                 if(mysqli_num_rows($query)>0){
                     foreach($query as $i){
                ?>
              <a style ="
                         <?php
                            if($i['status']=='unread'){
                                echo "font-weight:bold;color:red;";
                            }
                         ?>
                         " class="dropdown-item" href="view.php?id=<?php echo $i['id'] ?>">
                <small><i><?php echo date('F j, Y, g:i a',strtotime($i['date'])) ?></i></small><br/>
                     <?php 
                  
                 $name = $i['name'];
                    echo  "Anouncement from   " .$name."  ";
               
                  
                  ?>
                </a>
              <div class="dropdown-divider"></div>
                <?php
                     }
                 }else{
                     echo "No Anouncement yet.";
                 }
                     ?>
            </div>
          </li>
        </ul>
        
        
               
      </div>
    </nav>
     </div> 
     
               
         <?php
                $select_complain=mysqli_query($connection,"SELECT * from complain WHERE matricno ='".$_SESSION['matricno']."' AND username='admin'");
                if(mysqli_num_rows($select_complain)> 0){
                  $sn=0; 
                 while($row=mysqli_fetch_array($select_complain)){
                     
                      echo '<table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>S/N</th>
                                                <th>MESSAGES</th>
                                                <th>DATE</th>
                                                <th>ADMIN REPLY</th>
                                                 <th>DELETE</th>
                                        </tr>
                                    </thead>
                                    <tbody>'; 
                     $sn =$sn + 1; 
                 ?>
                   <tr>
              <td><?php echo $sn;?></td> 
               <td><?php echo htmlentities($row['MES']);?></td> 
              <td><?php echo htmlentities($row['LOGS']);?></td> 
              <td>
                       <a href="replyAdmin.php?id=<?php echo $row['id']?>">
                            <button  class="btn btn-info" role="button"><i class="fa fa-"></i>View Admin Reply</button> </a></td>
                            <td>
                       <a href="index.php?id=<?php echo $row['id']?>" target="_blank" onclick="return confirm('Are you sure you want to delete this message? Your chats with admin will be deleted')">
                            <button  class="btn btn-danger" role="button"><i class="fa fa-trash"></i></button> </a>  
              </tr>
                 <?php
                }  
                $sn++;
                }
            ?>
      
            
           </tbody>
        </table>
                </div>
        </div>
  <?php require("includes/footer.php"); ?>