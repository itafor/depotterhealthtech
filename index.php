<?php ob_start(); ?>
<?php require_once("includes/connection.php");?> 
<?php include("includes/header.php"); ?>
  
    <style>
      body{
 margin: 0;
 padding: 0;
 font-family: 'Coiny', cursive;
}
.carousel-inner{
margin-top: -20px;
height: 100vh;
}
.carousel-inner .item{
height: 100vh;
margin-top: -200px;

}
.carousel-caption{
 padding-bottom: 110px;
}

.carousel-caption h2{
 text-transform: uppercase;
 font-size: 50px;
 
}
 .carousel-control.right{
 background-image: none;
 }
 .carousel-control.left{
 background-image: none;
 }

.item .applynow a{
margin-top: 20px;
width: 250px;
border-radius:50px;
margin-left: -120px;
background: blue;
color:white;
font-weight: bold;
height: 50px;
position: absolute;
text-decoration: none;
text-align: center;
padding-top: 5px;
font-size: 30px;
}
.item .applynow a:hover{
background: white;
color:blue;
}
@media (max-width: 600px) { 
   
.carousel-inner{
margin-top: -20px;
margin-bottom: 0px;
height: 30vh;
}
.carousel-inner .item{
height: auto;
margin-top: -50px;

}
.carousel-caption{
 padding-bottom: 40px;
}

.carousel-caption h2{
 text-transform: uppercase;
 font-size: 20px;

}

.carousel-caption h3{
  font-size: 12px;
}
 .carousel-control.right{
 background-image: none;
 }
 .carousel-control.left{
 background-image: none;
 }

.item .applynow a{
margin-top: -5px;
width: 150px;
border-radius:50px;
margin-left: -80px;
background: blue;
color:white;
font-weight: bold;
height: 30px;
position: absolute;
text-decoration: none;
text-align: center;
padding-top: 1px;
font-size: 20px;
}
.item .applynow a:hover{
background: white;
color:blue;
}

}
    </style>

 
 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="http://www.depotterhealthtech.sch.ng/images/graduant.png" alt="graduants" >
      <div class="carousel-caption">
        <h2 class="animated rollIn" style="animated-delay: 2s;">Good to go health Care Providers</h2>
        <h3 class="animated fadeInRight" style="animated-delay: 3s;">Our mission is to train middle level health care providers</h3> 
      </div>
    </div>
    <div class="item">
      <img src="http://www.depotterhealthtech.sch.ng/images/dpstudnes.jpg" alt="depotter gate" style="width: 100%;">
      <div class="carousel-caption">
         <h2 class="animated zoomIn" style="animated-delay: 3s;">Welcome To De Potter College</h2>
       <div class="applynow" > <a href="applicationForm.php" class="animated lightSpeedIn" style="animated-delay: 5s;">APPLY NOW </a></div> 
       <div class="applynow" > <a href="applicationForm.php" class="animated lightSpeedOut" style="animated-delay: 5s;">APPLY NOW </a></div> 
      </div>
    </div>
    <div class="item">
      <img src="http://www.depotterhealthtech.sch.ng/images/LAB.jpg" alt="depotter lab" style="width: 100%;">
      <div class="carousel-caption">
         <h2 class="animated slideInDown" style="animated-delay: 2s;">Well Equipped Laboratory</h2>
       <h3 class="animated slideInRight" style="animated-delay: 3s;">Students learn faster with practicals</h3>
      </div>
    </div>
     </div>
  
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
  
  
  

 
     <script type="text/javascrpt">
        $(function(){
            SyntaxHighlighter.all();
        });
        $(window).load(function(){
        $('.flexslider').flexslider({
          animation: "slide",
          start: function(slider){
           $('body').removeClass('loading');
          }
        });
        });
     </script> 
     
     
     <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.6/sweetalert2.min.js"></script>
 <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.6.6/sweetalert2.css">
 
//  <script>
//  $(document).ready(function(){
//  swal({
//  title: 'Enter your email to subscribe to our newsletter for more update',
//  input: 'email',
//  showCancelButton: true,
//  confirmButtonText: 'Submit',
//  showLoaderOnConfirm: true,
//  preConfirm: function (email) {
//  return new Promise(function (resolve, reject) {
//  setTimeout(function() {
//  $.ajax({
//  type: 'post',
//  url: 'check_email.php',
//  data: {email:email},
//  success: function(result){
//  if(result>0){
//  reject('This email is already taken.')
//  }
//  else{
//  $.ajax({
//  type: 'post',
//  url: 'subscribe.php',
//  data: {email:email},
//  success: function(data){
//  resolve()
//  }
//  });

//  }
//  }
//  });

//  }, 1000)
//  })
//  },
//  allowOutsideClick: true
//  }).then(function (email) {
//  swal({
//  type: 'success',
//  title: 'Thank you! You have successfully subscribed to depotter newsletter',
//  html: 'Submitted email: ' + email
//  })
//  })
//  });
// </script> 

<?php require("includes/footer.php"); ?>  
