<%@  page isELIgnored="false" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student-list</title>
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
  <p> <a href="students/list" class="btn btn-outline-warning btn-lg">Participants-GL-Fest</a>
  <a href="showStudentForm" class="btn btn-outline-warning btn-lg">Add Participant-GL-Fest</a>
  </p>
   
  <hr style="background-color: orange; height:1px;">
  </div>
  
  <div class="container">           
  <table class="table table-dark">
    <thead>
      <tr>
        <th>S.No.</th>
        <th>Name</th>
        <th>Department</th>
         <th>Country</th>
          <th>Action</th>
      </tr>
    </thead>
    <c:forEach var="student" items="${students}" varStatus="c">
    <tbody>
    <tr>
     <td>${student.count}</td>
     <td>${student.name}</td>
     <td>${student.department}</td>
     <td>${student.country}</td>
     <td><a href= "update?id=${student.id}" class="btn btn-success">Update</a><a href= "delete?id=${student.id}" class="btn btn-danger">Delete</a>
    </tbody>
    </c:forEach>
  </table>
</div>
  



</body>
</html>