<?php ob_start(); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <title>De Potter OES</title>
     <link rel="icon" type="image/png" href="https://kodelicious.000webhostapp.com/depotterhealthTech/DP/dpoes/oes/images/depotterlogo.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="oes.css"/>
    <script type="text/javascript" src="validate.js" ></script> 
   
    
    
    
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

        if($_GLOBALS['message'])
        {
         echo "<div class=\"message\">".$_GLOBALS['message']."</div>";
        }
      ?>
           <div class="header" style="width:1750px;"> 
           <img style="margin:10px 2px 2px 10px;float:left; height:60px; width:60px; margin-left:78px;  " src="images/depotterlogo.png" alt="OES"/><a href="index.php"><img style="margin:10px 2px 2px 10px;float:right; margin-right:130px; height:80px; width:200px;" src="images/logo.gif" alt="OES"/></a><h3 class="headtext"> &nbsp;De-Potter HealthTech </h3><h4 style="color:#ffffff;text-align:center;margin:0 0 5px 5px;"><i>...Re-defining lost hope</i></h4>
           </div>
      <div id="container">
            
                
              
            