<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student</title>
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
	
  <form id="delstd" action="DeleteStudentServlet" method="post">
  <h1>Delete Student</h1>
  	
  
  <div class="form-group">
    <label for="exampleInputPassword1">Id</label>
    <input name="id" type="text" class="form-control" placeholder="Enter Id">
  </div>

  
  <br>
  
  <button id="delete" type="submit" class="btn primary-background mb-3">Delete</button>
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
	
document.getElementById("delete").addEventListener("click", function(event) {
    event.preventDefault();
    
    Swal.fire({
        title: "Do you want to delete?",
        showCancelButton: true,
        confirmButtonText: "Delete",
        cancelButtonText: "Cancel"
    }).then((result) => {
        if (result.isConfirmed) {
            Swal.fire("Deleted!", "Your data has been deleted successfully.", "success").then(() => {
                document.getElementById("delstd").submit(); // Submit the form after alert
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