<?php ob_start(); ?>  

<?php

/*
***************************************************
*** Online Examination System                   ***
***---------------------------------------------***
*** License: GNU General Public License V.3     ***
*** Author: Manjunath Baddi                     ***
*** Title: Student Welcome                      ***
***************************************************
*/

error_reporting(E_ALL);
session_start();
include_once 'oesdb.php';
global $_GLOBALS;
        if(!isset($_SESSION['stdname'])){
            $_GLOBALS['message']="Session Timeout.Click here to <a href=\"index.php\">Re-LogIn</a>";
        }
        else if(isset($_REQUEST['logout'])){
                unset($_SESSION['stdname']);
            $_GLOBALS['message']="You are Loggged Out Successfully.";
            header('Location: index.php');
        }
?>
<?php require("includes/header.php"); ?>  
            <div class="menubar">

                <form name="stdwelcome" action="stdwelcome.php" method="post">
                    <ul id="menu">
                        <?php if(isset($_SESSION['stdname'])){ ?>
                        <li><input type="submit" value="LogOut" name="logout" class="subbtn" title="Log Out"/></li>
                        <li><button style="height:40px; width:120px; text-decoration:none; color:white;" class="subbtn" ><a href="studentInfor.php" target="_blank">Fill this form</a></button></li> 
                      <marquee> <a href="studentInfor.php" target="_blank" style="color:red; font-size: 25px; background-color: black;" >You must fill the form above, else your result may not be recorded!</a></marquee>
                        
                        <?php } ?>
                    </ul>
                </form>
            </div>
            <div class="stdpage">
                <?php if(isset($_SESSION['stdname'])){ ?>

        
                <img height="600" width="100%" alt="back" src="images/trans.png" class="btmimg" />
                <div class="topimg">
                    <p><img height="500" width="600" style="border:none;"  src="images/stdwelcome.jpg" alt="image"  usemap="#oesnav" /></p>

                    <map name="oesnav">
                        <area shape="circle" coords="150,120,70" href="viewresult.php" alt="View Results" title="Click to View Results" />
                        <area shape="circle" coords="450,120,70" href="stdtest.php" alt="Take a New Test" title="Take a New Test" />
                        <area shape="circle" coords="300,250,60" href="editprofile.php?edit=edit" alt="Edit Your Profile" title="Click this to Edit Your Profile." />
                        <area shape="circle" coords="150,375,70" href="practicetest.php" alt="Practice Test" title="Click to take a Practice Test" />
                        <area shape="circle" coords="450,375,70" href="resumetest.php" alt="Resume Test" title="Click this to Resume Your Pending Tests." />
                    </map>
                </div>
                <?php }?>

            </div>

<?php require("includes/footer.php"); ?> 