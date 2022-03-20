<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove A Teacher</title>
<script language="javascript" >
function fun()
{
	var name=document.removeteacher.tname.value;
	var dname=document.removeteacher.dname.value;
	if(name=="" || dname=="")
	{
		alert("First Details must be filled");
		return false;
	}
}
</script>
</head>
<body>
<body bgcolor="cyan">
<form name="removeteacher" onsubmit="return fun()" >
<center>
<img src="logo.png" width="780" height="151" alt="logo"><br><br>
<font color=BLUE><MARQUEE WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow><u><b>REMOVE A TEACHER</b></u></MARQUEE></font><br><br>
<br><br>
<table width="50%" border="0" align="center" cellpadding="5" cellspacing="5"> 
<tr>
<th align=left>Enter Branch :</th><td align=left><select name="dname" size="1">
		<option value="">
		<option value="Computers">Computers
		<option value="Mechanical">Mechanical
		<option value="I.T.">Information Technology
		<option value="Electrical">Electrical
		</select></td>
</tr>
<tr>
<th align=left>Enter Name :</th>
<th align=left><select name="tname" size="1">
		<option value="">
		<option value="Mr. R Desai">Mr. R Desai
		<option value="Mr. G M Walunjkar">Mr. G M Walunjkar
		<option value="">Mr. S Samlethi
		<option value="">Mrs. A Sapkal
		<option value="">Mrs. N Walde
		</select></th>
</tr>
<tr>
	<th colspan=0 align=right><input type="RESET" value=RESET></th>
	<th colspan=0 align=left><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</center>
</form>
<%
try
{
	String str1, str2;
	str1=request.getParameter("tname");
	str2=request.getParameter("dname");
	if( str1 != null || str2 != null)
	{	
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 		Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
		Statement s =c.createStatement();
		String sql = "delete from teacher where tname='"+str1+"' and dname='"+str2+"'";
		s.execute(sql);
		%><jsp:forward page="adminhome.html"/> <%
	}
	
}catch(Exception e ){}
%>
</body>
</html>