<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?> 

      
      <h4 class="page-head-line">Notifications</h4>
    <div style="width:40%; margin-left:200px;heigth:200px;  z-index: -1;  ">
       <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item dropdown">
            <a class="nav-link" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unread Book Request
                <?php
                $query =mysqli_query($connection,"SELECT matricno, LOGS, MES, status, username, id, count(id) as num from `request` where `status` = 'unread' AND username ='".$_SESSION['username']."' order by `LOGS` DESC");
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
                $query =mysqli_query($connection,"SELECT matricno, LOGS, MES, status,name, username, id from `request` where  username ='".$_SESSION['username']."' order by `LOGS` DESC"); 
                 if(mysqli_num_rows($query)>0){
                     foreach($query as $i){
                ?>
              <a style ="
                         <?php
                            if($i['status']=='unread'){
                                echo "font-weight:bold;color:red;";
                            }
                         ?>
                         " class="dropdown-item" href="views.php?id=<?php echo $i['id'] ?>">
                <small><i><?php echo date('F j, Y, g:i a',strtotime($i['LOGS'])) ?></i></small><br/>
                     <?php 
                  
                 $name = $i['name'];
                    echo $name."  ". "requested a book.";
               
                  
                  ?>
                </a> 
              <div class="dropdown-divider"></div>
                <?php
                     }
                 }else{
                     echo "No Records yet.";
                 }
                     ?>
            </div>
          </li>
        </ul>
        
          
        
                <ul class="navbar-nav mr-auto">
          <li class="nav-item dropdown">
            <a class="nav-link" href="http://example.com" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unread Students Reactions
                <?php
                $query =mysqli_query($connection,"SELECT  matricno, LOGS, MES,username, status, id, count(id) as num from complain where `status` = 'unread' AND username ='".$_SESSION['username']."'  order by `LOGS` DESC");
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
              $query =mysqli_query($connection,"SELECT  matricno, name, LOGS, MES,username, status, id from complain where  username='".$_SESSION['username']."'  order by `LOGS` DESC"); 
                 if(mysqli_num_rows($query)>0){
                     foreach($query as $i){
                ?>
                    <?php 
    $check=mysqli_query($connection,"SELECT * FROM admin WHERE username='".$_SESSION['username']."' AND rank = 'admin' ");
     if(mysqli_num_rows($check) > 0)
    {
   // echo '<div style="opacity: .5; pointer-events: none">' ; 
    }else{
        echo '<div style="opacity: .7; pointer-events: none;">' ;
   echo "<small class='btn btn-warning' style='color:;'>Access denied, Only the admin can respond to student queries</small>"; 
    }
     
    ?> 
              <a style ="
                         <?php
                            if($i['status']=='unread'){
                                echo "font-weight:bold;color:red;";
                            }
                         ?>
                         " class="dropdown-item" href="view.php?id=<?php echo $i['id'] ?>">
                
                     <?php 
                  
                 $name = $i['name'];
                    echo $name."  ". "sent admin a message.";
               
                  
                  ?>
                  <small><i>  <?php echo date('F j, Y,g:i A',strtotime($i['LOGS'])) ?> <br/>Read / reply</i></small><br/> 
                </a>
                
                <a style ="
                         <?php
                            if($i['status']=='unread'){
                                echo "font-weight:bold;color:red;";
                            }
                         ?>
                         " class="dropdown-item" href="replyComplaint.php?id=<?php echo $i['id'] ?>">
                <small><i>chat with</i></small>
                     <?php 
                  
                 $name = $i['name'];
                 echo $name;
               
                  
                  ?>
                </a>
              <div class="dropdown-divider"></div>
                <?php
                     }
                 }else{
                     echo "No Records yet.";
                 }
                     ?>
            </div>
          </li>
        </ul>
      </div>
    </nav>
     </div> 
                    
                </div>  
                
          </div>
     
     
 <?php require("includes/footer.php"); ?>