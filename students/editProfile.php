<?php ob_start(); ?> 
<?php include("includes/bkheader.php"); ?>
<?php include("includes/connection.php"); ?>
 <?php include("includes/functions.php"); ?> 
 <?php include("includes/studenthead.php"); ?>
 <?php include("includes/studentMenu.php"); ?>
    
 <div style="width: 800px; height:auto; margin-top:100px;">
                             
 <table class="table table-bordered table-striped">
    <thead>
     <tr>
      <th width="10%">ID</th>
      <th width="40%">SURNAME</th>  
       <th width="40%">MIDDLENAME</th>
       <th width="40%">LASTNAME</th>
      <th width="10%">MATRIC.NO</th>
      <th width="30%">DEPARTMEN</th>
      <th width="10%">PROGRAMME</th>
      <th width="10%">LEVEL</th>
     
      <th width="10%">EMAIL ADDRESS</th>
      <th width="30%">PHONE NUMBER</th>
      <th width="10%">CONTACT ADDRESS</th>
      <th width="10%">GENDER</th>
      <th width="30%">DATE OF BIRTH</th>
      <th width="10%">RELIGION</th>
      <th width="10%">MARITAL STATUS</th>
      <th width="40%">NEXT OF KING NAME</th>
      <th width="10%">NEXT OF KING PHONE</th>
      <th width="30%">NEXT OF KING ADDRESS</th>
     </tr>
    </thead>
    <tbody id="student_data">
    </tbody>
   </table>                                                               
    
                </div>
                
                </div>
        </div>         
        <script type="text/javascript" language="javascript" >
$(document).ready(function(){
 
 function fetch_student_data()
 {
  $.ajax({
   url:"fetchstudents.php",
   method:"POST",
   dataType:"json",
   success:function(data)
   {
    for(var count=0; count<data.length; count++)
    {
     var html_data = '<tr><td>'+data[count].stdId+'</td>';
     html_data += '<td data-name="firstname" class="firstname" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].firstname+'</td>';
     html_data += '<td data-name="middlename" class="middlename" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].middlename+'</td>';
     html_data += '<td data-name="lastname" class="lastname" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].lastname+'</td>';
     html_data += '<td data-name="matricno" class="matricno" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].matricno+'</td>';
     html_data += '<td data-name="faculty" class="faculty" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].faculty+'</td>';
     html_data += '<td data-name="dept" class="dept" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].dept+'</td>';
     html_data += '<td data-name="level" class="level" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].level+'</td>';
      
     html_data += '<td data-name="email" class="email" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].email+'</td>';
     html_data += '<td data-name="phone" class="phone" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].phone+'</td>'; 
     html_data += '<td data-name="stdaddress" class="stdaddress" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].stdaddress+'</td>';
        
     html_data += '<td data-name="gender" class="gender" data-type="select" data-pk="'+data[count].stdId+'">'+data[count].gender+'</td>';
     html_data += '<td data-name="dob" class="dob" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].dob+'</td>';
     html_data += '<td data-name="religion" class="religion" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].religion+'</td>';
     html_data += '<td data-name="maritalstatus" class="maritalstatus" data-type="select" data-pk="'+data[count].stdId+'">'+data[count].maritalstatus+'</td>'; 
     html_data += '<td data-name="nokname" class="nokname" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].nokname+'</td>';
     html_data += '<td data-name="nokphone" class="nokphone" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].nokphone+'</td>'; 
     html_data += '<td data-name="nokaddress" class="nokaddress" data-type="text" data-pk="'+data[count].stdId+'">'+data[count].nokaddress+'</td>';
     $('#student_data').append(html_data);
    }
   }
  })
 }
 
 fetch_student_data();
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.firstname',
  url: "updatestudents.php",
  title: 'First Name',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.middlename',
  url: "updatestudents.php",
  title: 'Middle Name',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.lastname',
  url: "updatestudents.php",
  title: 'Last Name',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.matricno',
  url: "updatestudents.php",
  title: 'Matric No',
  type: "POST",
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.faculty',
  url: "updatestudents.php",
  title: 'Department',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 $('#student_data').editable({
  container: 'body',
  selector: 'td.dept',
  url: "updatestudents.php",
  title: 'Programme',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
   
  }
 });
 $('#student_data').editable({
  container: 'body',
  selector: 'td.level',
  url: "updatestudents.php",
  title: 'level',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
   
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.emai',
  url: "updatestudents.php", 
  title: 'Email',
  type: "POST",
  //dataType: 'json',   
   validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }

 
   
 });$('#student_data').editable({
  container: 'body',
  selector: 'td.phon',
  url: "updatestudents.php",
  title: 'phone No',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
    var expression = /^[0-9]+$/;
   if(!expression.test(value))
   {
    return 'Numbers only!';
   }
  }
 });$('#student_data').editable({
  container: 'body',
  selector: 'td.stdaddress',
  url: "updatestudents.php",
  title: 'Address',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });$('#student_data').editable({
  container: 'body',
  selector: 'td.state',
  url: "updatestudents.php",
  title: 'state',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });$('#student_data').editable({
  container: 'body',
  selector: 'td.lga',
  url: "updatestudents.php",
  title: 'LGA',
  type: "POST",
  //dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.gender',
  url: "updatestudents.php",
  title: 'Gender',
  type: "POST",
  dataType: 'json',
  source: [{value: "Male", text: "Male"}, {value: "Female", text: "Female"}],
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.dob',
  url: "updatestudents.php",
  title: 'Date Of Birth',
  type: "POST",
  dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.religion',
  url: "updatestudents.php",
  title: 'Religion',
  type: "POST",
  dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 $('#student_data').editable({
  container: 'body',
  selector: 'td.maritalstatus',
  url: "updatestudents.php",
  title: 'Marital Status',
  type: "POST",
  dataType: 'json',
   source: [{value: "Single", text: "Single"}, {value: "Married", text: "Married"},{value: "Divorsed", text: "Divorsed"}],
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 $('#student_data').editable({
  container: 'body',
  selector: 'td.nokname',
  url: "updatestudents.php",
  title: 'Next Of King Name',
  type: "POST",
  dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.nokphon',
  url: "updatestudents.php",
  title: 'Next of King Phone',
  type: "POST",
  dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }         
   var expression = /^[0-9]+$/;
   if(!expression.test(value))
   {
    return 'Numbers only!';
   }
  }
 });
 
 $('#student_data').editable({
  container: 'body',
  selector: 'td.nokaddress',
  url: "updatestudents.php",
  title: 'Next Of King Address',
  type: "POST",
  dataType: 'json',
  validate: function(value){
   if($.trim(value) == '')
   {
    return 'This field is required';
   }
  }
 });
 
});
</script>
   
  <?php require("includes/footer.php"); ?>