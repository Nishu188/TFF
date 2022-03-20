<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%
String name;
name=request.getParameter("username");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Teacher Home</title>
</head>
<body bgcolor="Green Bay">
<form name="teacherhome">
<center>
<img src="logo.png" width="780" height="151" alt="logo">
<marquee bgcolor="yellow" behavior=alternate direction="right" width="100%">TEACHER HOME PAGE</marquee>
<br>
<br><br><br>
<h3>
<a href="teacherreport2.jsp?name='"+name+"'" >GENERATE REPORT</a><br><br>
<a href="changeteacherpass.jsp" >CHANGE PASSWORD</a><br><br>
</h3>
</center>
</form>
</body>
</html>