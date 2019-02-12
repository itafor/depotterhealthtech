<?php ob_start(); ?>  

<?php

/*
***************************************************
*** Online Examination System                   ***
***---------------------------------------------***
*** License: GNU General Public License V.3     ***
*** Author: Manjunath Baddi                     ***
*** Title: Database Library Functions           ***
***************************************************
*/

include_once 'dbsettings.php';

$conn=false;

function executeQuery($query)
{
    global $conn,$dbserver,$dbname,$dbpassword,$dbusername,$success,$_GLOBALS;
    global $message;
    if (!($conn = @mysqli_connect($dbserver,$dbusername,$dbpassword,$dbname)))
         $message="Cannot connect to server";
    if (!@mysqli_select_db($conn,$dbname))
         $message="Cannot select database";

    $result=mysqli_query($conn,$query);
    if(!$result)
        $message="Error while executing query.<br/>Mysql Error: ";
    else
        return $result;

}

// global $conn,$dbserver,$dbname,$dbpassword,$dbusername;
//    global $message, $success ;
//$conn=mysqli_connect($dbserver,$dbusername,$dbpassword,$dbname);
//if(mysqli_connect_errno()){
//    die("database connection failed: ".mysqli_connect_error());
//}

function closedb()
{
    //global $conn;
//    if(!$conn)
//    mysqli_close($conn); 
}


?>
