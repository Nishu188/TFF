<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%
String tname, dname, str;
tname=request.getParameter("name");
if(tname != null)
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 	Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
	Statement s =c.createStatement();
	String sql = "select * from teacher";
	ResultSet rs=s.executeQuery(sql);
	while(rs.next())
	{
		str=rs.getString("uname");
		if(tname.compareTo(str)==0)
		{
			dname=rs.getString("dname");
		}
	}
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>teacher report</title>
<script language="javascript" >
function fun1()
{
	var sub=document.addteacher.sub.value;
	if(sub=="")
	{
		alert("First Details must be filled");
		return false;
	}
}
</script>
</head>
<body bgcolor="Green Bay">
<form name="teachersub" action="teacherreport1" onSubmit="return fun1()" method="post">
<center>
<img src="logo.png" width="780" height="151" alt="logo">
<marquee bgcolor="yellow" behavior=alternate direction="right" width="100%">SELECT SUBJECT</marquee>
<br>
<br><br><br>
<table border="0" cellspacing="0" cellpadding=10 >
<tr>
	<th colspan=2 align=left>3. Subject :</th>
	<th colspan=2 align=left><select name="sub" size="1">
		<option value="">
		<option value="SS">SS
		<option value="">DAA
		<option value="">PP
		<option value="">HICU
		<option value="">MIS</option>
		</select></th>
</tr>
<tr>
	<th colspan=2 align=center><input type="RESET" value=RESET></th>
	<th colspan=2 align=center><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</center>
</form>
</body>
</html>