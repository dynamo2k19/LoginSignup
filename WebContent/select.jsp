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
<title></title>
</head>
<body>
	<h1 align="center">User Records</h1>
	<hr/>
	<%
	try
	{
		Connection con = DBConnection.getConnection();
		String qry = "select * from data";
		PreparedStatement ps = con.prepareStatement(qry);
		ResultSet rs = ps.executeQuery();
		%>
		<table class="table table-hover table-bordered table-striped">
			<tr><th>ID</th> <th>NAME</th><th>EMAIL</th> <th>COUNTRY</th> <th colspan="2">Actions</th></tr>
		<% 
		while (rs.next())
		{%>
			<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><a href="edit.jsp?id=<%= rs.getInt(1) %>">EDIT</a></td>
				<td><a href="delete.jsp?id=<%= rs.getInt(1) %>">DELETE</a></td>
			</tr>
		<% 
		}
		%>
		</table>
		<% 
		con.close();
	}
	catch (Exception e)
	{
		e.printStackTrace();
	}
	%>
</body>
</html>