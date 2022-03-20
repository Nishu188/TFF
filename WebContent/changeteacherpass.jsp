<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Teacher Pass</title>
<script language="javascript" >
function fun3()
{
	var name=document.changepasst.Name.value;
	var pass=document.changepasst.passwd.value;
	var pass2=document.changepasst.passwd2.value;
	var pass1=document.changepasst.passwd1.value;
	if(name =="" || pass == "" || pass1 == "" || pass2 == "")
	{
			alert("Enter the Details First");
			document.changepasst.Name.focus();
			return false;
	}
}
</script>
</head>
<body style="background-color:cyan">
<form name="changepasst" onsubmit="return fun3()">
<center>
<img src="logo.png" width="780" height="151" alt="logo"><br><br>
<font color=BLUE><MARQUEE WIDTH=100% BEHAVIOR=ALTERNATE bgcolor=yellow><b>CHANGE TEACHER PASSWORD</b></MARQUEE></font><br><br>
<br><br>
<table width="50%" border="0" align="center" cellpadding="5" cellspacing="5"> 
<tr>
<th align=left>UserName :</th><td align=left><input type=text name=Name size=30></td>
</tr>
<tr>
<th align=left>Old Password :</th><td align=left><input type=password name=passwd size=30></td>
</tr>
<tr>
<th align=left>Password :</th><td align=left><input type=password name=passwd2 size=30></td>
</tr>
<tr>
<th align=left>Confirm Password :</th><td align=left><input type=password name=passwd1 size=30></td>
</tr>
<tr>
	<th colspan=0 align=right><input type="RESET" value=RESET></th>
	<th colspan=0 align=left><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</center>
<%
try{
	String str,str1,str2,str3,str4,str5,sql;
	int flag=0, flag1=0;
	str1=request.getParameter("Name");
	str2=request.getParameter("passwd");
	str3=request.getParameter("passwd2");
	str4=request.getParameter("passwd1");
	if(str3.compareTo(str4)==0)
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 	Connection c=DriverManager.getConnection("jdbc:odbc:abc","root","root");
		Statement s =c.createStatement();
		sql = "select * from teacher";
		ResultSet rs=s.executeQuery(sql);
		while(rs.next())
		{
			str=rs.getString("uname");	
			str5=rs.getString("passwd");
			if(str1.compareTo(str)==0)
			{
				flag=1;
				if(str2.compareTo(str5)==0)
				{
					flag1=1;
				}
				break;
			}
		}
		if(flag==1 && flag1==1)
		{
			sql = "update teacher set passwd='"+str3+"' where uname='"+str1+"'";
			s.execute(sql);
			response.sendRedirect("teacherhome.jsp?username="+str1);
		}
		else if(flag==0)
		{
			out.println("No Entry Found For This User Name");
		}
		else if(flag1==0)
		{
			out.println("User name and password didnot match");
		}
	}
	else
	{
		out.println("New Password Doesn't Match With Confirmation password");
	}
}catch(Exception e ){}
%>
</form>
</body>
</html>