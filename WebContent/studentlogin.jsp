<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%
String str, str1, name, password;
String t2=new String();
String t=request.getParameter("t");
if(t.equals("1"))
{
	name=request.getParameter("ROLLNO");
	password=request.getParameter("PASSWORD");
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
	Statement s =c.createStatement();
	String sql = "select * from student";
	ResultSet rs=s.executeQuery(sql);
	while(rs.next())
	{
		str=rs.getString("roll");	
		str1=rs.getString("passwd");
		if(name.compareTo(str)==0 && password.compareTo(str1)==0)
		{
			%><jsp:forward page="studenthome.jsp"/> <%
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
<title>STUDENT LOGIN FORM</title>
<script language="javascript" >
function fun3()
{
	var roll=document.studentlogin.ROLLNO.value;
	var pass=document.studentlogin.PASSWORD.value;
	if(roll=="")
	{
		alert("First Roll No must be filled");
		return false;
	}
	else if(roll.length != 4)
	{	
			alert("Roll No must be of 4 digit");
			document.studentlogin.ROLLNO.value="";
			document.studentlogin.ROLLNO.focus();
			return false;
	}
	else if(roll.charAt(0) < "1" || roll.charAt(0) > "4")
	{
			alert("Roll No is wrong");
			document.studentlogin.ROLLNO.value="";
			document.studentlogin.ROLLNO.focus();
			return false;
	}
	else if(pass=="")
	{
		alert("First Password must be filled");
		return false;
	}
}
</script>
</head>
<body>
<body style="background-color:cyan" >
<form name="studentlogin" action="studentlogin.jsp?t=1" onsubmit="return fun3()" method="post">
<center>
<img src="logo.png" width="780" height="151" alt="logo"><br><br>
<marquee bgcolor="red" behavior=alternate direction="right" width="100%">STUDENT LOGIN FORM</marquee>
<br><br><br>
<table border="0" cellspacing=0 cellpadding=5 >
<caption align=bottom>
<input type="submit" value=SUBMIT>
</caption>
<tr>
	<td>ROLL NO :</td>
	<th><input name="ROLLNO" value="" type=text size="20"></th>
</tr>
<tr>
	<td>PASSWORD :</td>
	<th><input name="PASSWORD" value="" type=password size="20"><br><%=t2 %></th>
</tr>
</table>
<br><br><br>
<a href="home.html" >Back To Home Page</a><br><br>
</center>
</form>
</body>
</html>