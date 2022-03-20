<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TEACHER REPORT</title>
<script language="javascript" >
function fun1()
{
	var dname=document.addteacher.dname.value;
	var tname=document.addteacher.tname.value;
	var sub=document.addteacher.sub.value;
	if(dname=="" || tname=="" || sub=="")
	{
		alert("First Details must be filled");
		return false;
	}
}
</script>
</head>
<body style="background-color:cyan">
<center>
<h1>ARMY INSTITUTE OF TECHNOLOGY</h1>
<h2>DIGHI, PUNE-411 015</h2>
<br>
<br>
<h2>TEACHER REPORT GENERATION</h2>
</center>
<br>
<br>
<br>
<form name="teacherreport" action="teacherreport1" onSubmit="return fun1()" method="post">
<table border="0" cellspacing="0" cellpadding=10 >
<tr>
	<th colspan=2 align=left>1. Department :</th>
	<th colspan=2 align=left><select name="dname" size="1" >
		<option value="">
		<option value="Computer">Computers
		<option value="Mechanical">Mechanical
		<option value="I.T.">Information Technology
		<option value="Electrical">Electrical
		</select></th>
</tr>

<tr>
	<th colspan=2 align=left>2. Name of teacher :</th>
	<th colspan=2 align=left><select name="tname" size="1">
		<option value="">
		<option value="Mr. R Desai">Mr. R Desai
		<option value="Mr. G M Walunjkar">Mr. G M Walunjkar
		<option value="Mr. S Samlethi">Mr. S Samlethi
		<option value="Mrs. A Sapkal">Mrs. A Sapkal
		<option value="Mrs. N Walde">Mrs. N Walde
		</select></th>
</tr>
<tr>
	<th colspan=2 align=left>3. Subject :</th>
	<th colspan=2 align=left><select name="sub" size="1">
		<option value="">
		<option value="SS">SS
		<option value="DAA">DAA
		<option value="PP">PP
		<option value="HICU">HICU
		<option value="MIS">MIS</option>
		</select></th>
</tr>
<tr>
	<th colspan=2 align=center><input type="RESET" value=RESET></th>
	<th colspan=2 align=center><input type="SUBMIT" value=SUBMIT></th>
</tr>
</table>
</form>
</body>
</html>