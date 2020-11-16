<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log Out</title>
</head>
<body>

<%

            session.invalidate();

        %>

        <h1><font color="Red">You are successfully logged out...</font></h1>

        <a href="login.html">Go-Back To Login Page</a>


</body>
</html>