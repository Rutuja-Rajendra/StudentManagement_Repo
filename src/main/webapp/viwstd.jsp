<%@page import="com.stm.entities.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	Student student = (Student)request.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Student</title>
<!-- CSS -->
 
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
crossorigin="anonymous">

<style>
	body {
  background-image: url('img/Classroom Classroom Illustration Background, Classroom, Illustration, Background Background Image And Wallpaper for Free Download.jpeg');
  background-size: cover; 
  background-position:inherit;
  
  .primary-background
	{
		background: #e57373  !important;
	}
}


</style>
</head>
<body>

	<%@include file="navbar.jsp" %>
	
	<!-- View Student By Id -->
	<div class="container col-md-3 mt-5 bg-light">
	
  <form id="vid" action="ViewStudentByIdServlet" method="POST">
  <h1>View Student</h1>
  	
  
  <div class="form-group">
    <label for="exampleInputPassword1">Id</label>
    <input type="text" name="id" class="form-control" placeholder="Enter Id">
  </div>
  
  <br>
  
  <button id="view" type="submit" class="btn primary-background mb-3">View</button>
  <button id="cancel" type="button" class="btn primary-background mb-3">Cancel</button>
  </form>
  </div>
  
	
	<!-- Table Record -->
	<% 
		if(student != null)
		{
	%>

	<div class="container primary-background mt-5">
		<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Class Name</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><%= student.getId() %></td>
      <td><%= student.getName() %></td>
      <td><%= student.getEmail() %></td>
      <td><%= student.getContact() %></td>
      <td><%= student.getClassname() %></td>
    </tr>
      
  </tbody>
</table>

	<%
		}
	%>
	
	</div>
	
	
	
	<!-- JavaScript -->

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" 
integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" 
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
crossorigin="anonymous"></script>
</body>
</html>