<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE DATA</title>
<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<% 
	String id = request.getParameter("id");
	System.out.println(id);
	%>
	<h2 class="text-center">Please Provide Details To Update!</h2><br/>
	<div class="container">
		<div class="rows">
			<div class="col-md-4"></div>
			<div class="col-md-4">
					<form action="update.jsp">
						<input type="text" name="id" class="form-control" value="<%= id %>" readonly="readonly"><br/>
		        		<input type="text" name="name" class="form-control" placeholder="Enter Name"><br/>
		        		<input type="email" name="email" class="form-control" placeholder="Enter Email"><br/>
		        		<input type="text" name="country" class="form-control" placeholder="Enter Country"><br/>
		        		<input type="submit" class="btn btn-warning form-control" value="Update"> 
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	
</body>
</html>