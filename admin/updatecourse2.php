<?php ob_start(); ?>
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
<?php include("includes/functions.php"); ?>
<?php include("includes/adminHead.php"); ?>
 <?php include("includes/adminMenu.php"); ?>
 
                                 <h4 class="page-head-line">UPLOAD STUDENTS' RESULT</h4>
                                 <?php
                                 $id=$_REQUEST['courseRegId'];
                                 
                    $query=mysqli_query($connection,"SELECT * FROM courseregister WHERE  courseRegId='".$id."'");
        
                    $result=mysqli_fetch_array($query); 
          ?>            
        <form  id="result" method="post" action="updatecourse3.php" role="form"  >
<div class="messages"></div>

    <div class="controls">
    <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                <span style="color:red">*</span>
                    <input id="form_name" type="hidden" name="courseRegId" class="form-control" value="<?php echo $result['courseRegId']  ?>">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
            <div class="row"> 
            <div class="col-md-6">
                <div class="form-group">
                    EXAM SCORE (70%):<span style="color:red">*</span>
                    <input id="form_phone" type="text" name="examscore" class="form-control" value="<?php echo $result['examscore'] ?>" required="required" onkeyup="isnum(this)">
                    <div class="help-block with-errors"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    CA SCORE (30%):<span style="color:red">*</span>
                    <input id="form_phone" type="text" name="cascore" class="form-control" value="<?php echo $result['cascore'] ?>"  required="required" onkeyup="isnum(this)" >
                    <div class="help-block with-errors"></div>
                </div>
            </div>
            <div class="col-md-12">
                <input type="submit" name="edit" class="btn btn-success btn-send" value="UPLOAD RESULT">
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <p class="text-muted"><strong style="color:red;">*</strong> These fields are required.</p>
            </div>
        </div>
    </div>
    
</form>  
                </div>
        </div>
  <?php require("includes/footer.php"); ?>