<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, com.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>LOGIN</title>


</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
			  <h2>WELCOME</h2>
			  <form action="welcome" method="post">
			    <div class="form-group">
			      <label for="email">Email:</label>
			      <input type="email" class="form-control" name="email" placeholder="Enter email">
			    </div>
			    <div class="form-group">
			      <label for="pwd">Password:</label>
			      <input type="password" class="form-control" name="password" placeholder="Enter password">
			    </div>
			    <div class="text-center">
				    <input type="submit" value="Login" class="btn btn-lg btn-primary"> 
				</div>
			  </form>
			  <h3>New User? Register Below!</h3>
			  <hr/>
			  <a href="signup.jsp" class="btn btn-lg btn-success text-center">SIGNUP</a>
			  
		 	</div>
		 	<div class="col-md-4"></div>
		 </div>
	</div>


</body>
</html>