<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student form</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container p-3 my-3 bg-primary text-white">
  <h1 style="text-align: center;">Great Learning College</h1>
  <hr style="background-color: orange; height:1px;">
  <h3 style="text-align:center;">GL Fest 2022!</h3>
  <hr style="background-color: orange; height:1px;">
  <p> <a href="students/list" class="btn btn-outline-warning btn-lg">Participants-GL-Fest</a></p>
   <a href="students/list" class="btn btn-outline-warning btn-lg">Add Participant-GL-Fest</a>
  <hr style="background-color: orange; height:1px;">
  </div>
  
  <div class="container">  
  <h4> Fest Registration Form</h4>
  <form action="save" method="post">
  <div class="form-group">
     
      <input type="hidden" class="form-control"  placeholder="Enter id" name="id" value="${student.id}">
    </div>
    <div class="form-group">
     
      <input type="text" class="form-control"  placeholder="Enter name" name="name" value="${student.name}">
    </div>
    <div class="form-group">
     
      
      <input type="text" class="form-control"  placeholder="Enter department" name="department" value="${student.department}">
    </div>
    <div class="form-group">
      
       
      <input type="text" class="form-control"  placeholder="Enter country" name="country" value="${student.country}">
     
    </div>
    <button type="submit" class="btn btn-primary">Save</button>
  </form>
</div> 
  



</body>
</html>