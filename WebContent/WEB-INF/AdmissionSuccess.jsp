<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission Successful</title>
</head>
<body>

<h1>${headerMessage}</h1>

<h2>details submitted:</h2>
<table>
<tr>
<td>Student name : </td>
<td>${student1.studentName} </td>
</tr>
<tr>
<td>Student hobby : </td>
<td>${student1.studentHobby} </td>
</tr>
<tr>
<td>Student Mobile : </td>
<td>${student1.studentMobile} </td>
</tr>
<tr>
<td>Student DOB : </td>
<td>${student1.studentDOB} </td>
</tr>
<tr>
<td>Student Skills : </td>
<td>${student1.studentSkills} </td>
</tr>

<tr>
<td>Student Address : </td>
	<td>Country: ${student1.studentAddress.country} </td>
	<td>City: ${student1.studentAddress.city} </td>
	<td>Street: ${student1.studentAddress.street} </td>
	<td>Pincode: ${student1.studentAddress.pincode} </td>
</tr>
</table>

</body>
</html>