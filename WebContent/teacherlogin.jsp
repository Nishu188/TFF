<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%
String str, str1, name, password;
String t2=new String();
String t=request.getParameter("t");
if(t.equals("2"))
{
	name=request.getParameter("Name");
	password=request.getParameter("PASSWORD");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
	Statement s =c.createStatement();
	String sql = "select * from teacher";
	ResultSet rs=s.executeQuery(sql);
	while(rs.next())
	{
		str=rs.getString("uname");	
		str1=rs.getString("passwd");
		if(name.compareTo(str)==0 && password.compareTo(str1)==0)
		{
			response.sendRedirect("teacherhome.jsp?username="+name);
		}
		else
		{
			t2="User Name and password incorrect";		
		}
	}
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TEACHER LOGIN FORM</title>
<script language="javascript" >
function fun3()
{
	var name=document.teacherlogin.Name.value;
	var pass=document.teacherlogin.PASSWORD.value;
	if(name =="" || pass =="")
	{
			alert("Enter the Details First");
			document.teacherlogin.Name.focus();
			return false;
	}
}
</script>
</head>
<body>
<body bgcolor="cyan" >
<form name="teacherlogin" action="teacherlogin.jsp?t=2" onsubmit="return fun3()" method=post>
<center>
<img src="logo.png" width="780" height="151" alt="logo">
<marquee bgcolor="yellow" behavior=alternate direction="right" width="100%">TEACHER LOGIN FORM</marquee>

<br><br><br>
<table border="0" cellspacing=0 cellpadding=5 >
<caption align=bottom>
<input type="SUBMIT" value=SUBMIT>
</caption>
<tr>
	<th>USER NAME :</th>
	<td><input name="Name" value="" type=text size="20"></td>
</tr>
<tr>
	<th>PASSWORD :</th>
	<td><input name="PASSWORD" value="" type=password size="20"><br><%=t2 %></td>
</tr>
</table>
<br><br><br>
<a href="home.html" >Back To Home Page</a><br><br>
</center>
</form>
</body>
</html>