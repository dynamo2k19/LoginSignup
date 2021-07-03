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
<title>SIGN UP</title>
</head>
<body>
	<h2 class="text-center">Please Provide Details To Sign Up!</h2><br/>
	<div class="container">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<form action="insert.jsp">
				<input type="text" name="name" class="form-control" placeholder="Enter Name"><br/>
				<input type="email" name="email" class="form-control" placeholder="Enter Email"><br/>
				<input type="text" name="country" class="form-control" placeholder="Enter Country"><br/>
				<input type="password" name="password" class="form-control" placeholder="Enter Password"><br/>
				<input type="submit" class="btn btn-success form-control" value="Save">
			</form> 
		</div>
		<div class="col-md-4"></div>
	</div> 
</body>
</html>