<?php ob_start(); ?> 
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
 <?php include("includes/functions.php"); ?> 
 <?php include("includes/studenthead.php"); ?>
 <?php include("includes/studentMenu.php"); ?>
                            
                       <?php     
    if(isset($_GET['id'])) {
    $id=urlencode($_GET['id']);
    $del=mysqli_query($connection,"DELETE FROM  anouncement WHERE id='$id'");
    if($del) {
     echo "Anouncement removed successfully" ;
    }
    }  
     $matric=$_SESSION['matricno'];                          
        $sql=mysqli_query($connection,"SELECT * FROM anouncement WHERE matricno = '".$matric."' ");
      
        if(mysqli_num_rows($sql) > 0)
        {
            echo "<table  class='table table-bordered'>";
                    echo "<tr>";
                        echo "<th>S/N</th>";
                        echo "<th>MATRIC NO.</th>"; 
                        echo "<th>ANOUNCEMENT</th>";
                        echo "<th>LOGS</th>";
                        echo "<th>ACTION</th>"; 
                    echo "</tr>";
                    $i=0;
                while($row=mysqli_fetch_array($sql))
                {
                    $i++;
                    echo "<tr>";
                    echo "<td>{$i}</td>";
                     echo "<td>{$row["matricno"]}</td>";   
                    echo "<td>{$row["mes"]}</td>";
                    echo "<td>{$row["date"]}</td>";
                    ?>
                    <td>
                       <a href="deleteAnouncement.php?id=<?php echo $row['id']?>"  onclick="return confirm('Are you sure you want to delete this anouncement?')">
                            <button  class="btn btn-danger" role="button"><i class="fa fa-trash"></i>  DELETE</button> </a>                                        
                      <?php
                    echo "</tr>";
                }
            echo "</table>";
        }
        else
        {
            echo "<p class='error'>No Anouncement yet</p>";
        }
    ?>                                                           


                </div>
        </div>
  <?php require("includes/footer.php"); ?>