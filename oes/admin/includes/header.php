<?php ob_start(); ?> 
<html>
    <head>
       <title>De Potter OES</title>
     <link rel="icon" type="image/png" href="https://www.depotterhealthtech.sch.ng/dpoes/oes/images/depotterlogo.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <link rel="stylesheet" type="text/css" href="../oes.css"/>
        <script type="text/javascript" src="../validate.js" ></script> 
         <script type="text/javascript" src="../validator.js" ></script> 
        <script type="text/javascript" src="../tiny_mce/tiny_mce.js"></script>
         <link rel="stylesheet" type="text/css" media="all" href="../calendar/jsDatePick.css" />
        <script type="text/javascript" src="../calendar/jsDatePick.full.1.1.js"></script>
        
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
         
        <script type="text/javascript">
            window.onload = function(){
                new JsDatePick({
                    useMode:2,
                    target:"testfrom"
                    //limitToToday:true <-- Add this should you want to limit the calendar until today.
                });

                new JsDatePick({
                    useMode:2,
                    target:"testto"
                    //limitToToday:true <-- Add this should you want to limit the calendar until today.
                });
            };
        </script>

       
<script language="javascript" type="text/javascript">
        function printDiv(divID) {
            //Get the HTML of div
            var divElements = document.getElementById(divID).innerHTML;
            //Get the HTML of whole page
            var oldPage = document.body.innerHTML;

            //Reset the page's HTML with div's HTML only
            document.body.innerHTML = 
              "<html><head><title></title></head><body>" + 
              divElements + "</body>";

            //Print Page
            window.print();

            //Restore orignal HTML
            document.body.innerHTML = oldPage;

          
        }
    </script>
     
    </head>
    <body>
        <?php
       /********************* Step 2 *****************************/
        if(isset($_GLOBALS['message'])) {
            echo "<div class=\"message\">".$_GLOBALS['message']."</div>";
        }
        ?>
        <div class="header" style="width:1750px;">
         <img style="margin:10px 2px 2px 10px;float:left; height:60px; width:60px; margin-left:78px;  " src="../images/depotterlogo.png" alt="OES"/><img style="margin:10px 2px 2px 10px;float:right; margin-right:130px; height:80px; width:200px;" src="../images/logo.gif" alt="OES"/><h3 class="headtext"> &nbsp;De-Potter HealthTech </h3><h4 style="color:#ffffff;text-align:center;margin:0 0 5px 5px;"><i>...Re-defining lost hope</i></h4>                
            
           </div> 
        <div id="container">
         
             