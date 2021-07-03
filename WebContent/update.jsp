<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, com.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		System.out.println(id);
		String name = request.getParameter("name");
		System.out.println(name);
		String email = request.getParameter("email");
		System.out.println(email);
		String country = request.getParameter("country");
		System.out.println(country);
		try
		{
			Connection con = DBConnection.getConnection();
			String qry = "update data set name = ?, email = ?, country = ? where id = ?";
			PreparedStatement ps = con.prepareStatement(qry);
			ps.setString(4, id);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, country);
			ps.executeUpdate();
			con.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		response.sendRedirect("index.jsp");
	%>
</body>
</html>