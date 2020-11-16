<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import ="java.sql.*" %>
<%
	String userID = request.getParameter("id");
	
	String password = request.getParameter("password");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1?useTimezone=true&serverTimezone=UTC", "root", "1234");
		Statement st=con.createStatement();
		Statement stmt = con.createStatement();
		PreparedStatement pst = con.prepareStatement(
				"select id, password from student where id =? and password=?");
		 
		pst.setString(1,request.getParameter("id"));
		pst.setString(2,request.getParameter("password"));
		
		
	    ResultSet rs = pst.executeQuery();
	    if(rs.next()) {         
        out.println("Valid login credentials");     
	    response.sendRedirect("logout.html");
	    }else{
        out.println("Invalid login credentials");
	    } 
		
	}catch (Exception e){
		
		
		out.println(e);
		
	}
%>
