<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>WELCOME</title>
</head>
<body>
	<div class="container text-center" style="background-color:orange;">
		<h2 style="color:white;">USER MANAGEMENT APP</h2>
	</div>
	<div class="container">
		<div class="row">
			<br/><br/><button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#insertModal">ADD USER</button><br/><br/>
			<%@ include file="select.jsp" %>
		</div>
	</div>
	
	<!-- Modal for insert -->
  	<div class="modal fade" id="insertModal" role="dialog">
    	<div class="modal-dialog">
        	<!-- Modal content-->
	      	<div class="modal-content">
	        	<div class="modal-body">
		        	<form action="insert.jsp">
		        		<input type="text" name="name" class="form-control" placeholder="Enter Name"><br/>
		        		<input type="email" name="email" class="form-control" placeholder="Enter Email"><br/>
		        		<input type="text" name="country" class="form-control" placeholder="Enter Country"><br/>
		        		<input type="password" name="password" class="form-control" placeholder="Enter Password"><br/>
		        		<input type="submit" class="btn btn-success form-control" value="Save">
		        	</form>  
	        	</div>
	      	</div>
        </div>
	</div>
	
</body>
</html>