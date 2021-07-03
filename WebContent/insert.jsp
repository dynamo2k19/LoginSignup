<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, com.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String country = request.getParameter("country");
		String pass = request.getParameter("password");
		try
		{
			Connection con = DBConnection.getConnection();
			String qry = "insert into data(name, email, country, password) values(?, ?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(qry);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, country);
			ps.setString(4, pass);
			ps.execute();
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