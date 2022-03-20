<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Teacher</title>
<script language="javascript" >
function fun()
{
	var name=document.removeteacher.tname.value;
	var dname=document.removeteacher.dname.value;
	var uname=document.removeteacher.username.value;
	var pass=document.removeteacher.passwd.value;
	if(name=="" || dname=="")
	{
		alert("First Details must be filled");
		return false;
	}
	if(uname=="" || pass=="")
	{
		alert("First Details must be filled");
		return false;
	}
}
</script>
</head>
<body>
<body bgcolor="cyan">
<form name="addteacher" onsubmit="return fun()" >
<center>
<img src="logo.png" width="780" height="151" alt="logo"><br><br>
<font color=BLUE><MARQUEE WIDTH=100% BEHAVIOR=ALTERNATE BGColor=yellow><u><b>ADD NEW TEACHER</b></u></MARQUEE></font><br><br>
<br><br>
<table width="50%" border="0" align="center" cellpadding="5" cellspacing="5"> 
<tr>
<th align=left>Enter Name :</th><td align=left><input type=text name=tname size="30" ></td>
</tr>
<tr>
<tr>
<th align=left>Enter UserName :</th><td align=left><input type=text name=username size="20" ></td>
</tr>
<tr>
	<th align=left>Password :</th>
	<td align=left><input name="passwd" type=password size="20" ><br></td>
</tr>
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
	<th colspan=0 align=right><input type="RESET" value=RESET></th>
	<th colspan=0 align=left><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</center>
</form>
<%
try
{
	int x, t=0, flag=0;
	String sql;
	String str1, str2, str3, str4, str5, str6;
	str1=request.getParameter("tname");
	str2=request.getParameter("dname");
	str3=request.getParameter("username");
	str4=request.getParameter("passwd");
	if( str1 != null || str2 != null || str3 != null || str4 != null)
	{	
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 		Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
		Statement s =c.createStatement();
		sql = "select * from teacher";
		ResultSet rs=s.executeQuery(sql);
		while(rs.next())
		{
			x=rs.getInt("sno");	
			if(x!=0)
			{
				if(t<x)
					t=x;
			}
			str5=rs.getString("tname");
			str6=rs.getString("dname");	
			if(str1.compareTo(str5)==0 && str2.compareTo(str6)==0)
			{
				out.println("Teacher name you entered is already present");
				flag=1;
				break;
			}
		}
		if(flag==0)
		{
			sql = "insert into teacher values ("+(t+1)+",'"+str1+"','"+str2+"','"+str3+"','"+str4+"')";
			s.execute(sql);
			%><jsp:forward page="adminhome.html"/> <%
		}
	}	
}catch(Exception e){}
%>
</body>
</html>