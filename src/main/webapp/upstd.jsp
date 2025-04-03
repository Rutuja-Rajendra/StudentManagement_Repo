<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
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
	
	<div class="container col-md-3 mt-5 bg-light">
	
  <form id="udform" action="updatestudentServlet" method="POST">
  <h1>Update Student</h1>
  	
  
  <div class="form-group">
    <label for="exampleInputPassword1">Id</label>
    <input type="text" name="id" class="form-control" placeholder="Enter Id">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input type="email" name="email" class="form-control" placeholder="Enter New Email">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Name</label>
    <input type="text" name="name" class="form-control" placeholder="Enter New Name">
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Contact</label>
    <input type="text" name="contact" class="form-control" placeholder="Enter New Contact">
  </div>
  
  <br>
  
  <button id="update" type="submit" class="btn primary-background mb-3">Update</button>
  <button id="cancel" type="button" class="btn primary-background mb-3">Cancel</button>
</form>
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

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script type="text/javascript">
	
document.getElementById("update").addEventListener("click", function(event) {
    event.preventDefault();
    
    Swal.fire({
        title: "Do you want to update?",
        showCancelButton: true,
        confirmButtonText: "Update",
        cancelButtonText: "Cancel"
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire("Updated!", "Your data has been updated successfully.", "success").then(() => {
                document.getElementById("udform").submit(); // Submit the form after alert
            });
        } else if (result.dismiss === Swal.DismissReason.cancel) {
            Swal.fire("Cancelled", "Your action has been cancelled.", "info");
        }
    });
});

document.getElementById("cancel").addEventListener("click", function() {
    Swal.fire({
        title: "Are you sure?",
        text: "Do you want to cancel?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonText: "Yes, cancel",
        cancelButtonText: "No"
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire("Cancelled", "You have cancelled the operation.", "info");
        }
    });
});

</script>
</body>
</html>