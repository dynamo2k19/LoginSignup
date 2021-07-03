<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, com.db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		try
		{
			Connection con = DBConnection.getConnection();
			String qry = "delete from data where id = ?";
			PreparedStatement ps = con.prepareStatement(qry);
			ps.setInt(1, Integer.parseInt(id));
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