<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
	String userID = request.getParameter("id");
	String name = request.getParameter("name");
	String depertment = request.getParameter("department");
	String password = request.getParameter("password");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?useTimezone=true&serverTimezone=UTC", "root", "1234");
		Statement st=con.createStatement();
		st.execute("insert into student(id,name,department,password) values ('"+userID+"','"+name+"','"+depertment+"','"+password+"')");
		response.sendRedirect("save.html");
		
	}
	catch(Exception e){
		out.println(e);
		//response.sendRedirect("error.html");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>