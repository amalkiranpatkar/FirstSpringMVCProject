<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admission Form</title>
</head>
<body>
<h1>${headerMessage}</h1>
<div xmlns:c="http://java.sun.com/jsp/jstl/core" 
	xmlns:fmt="http://java.sun.com/jsp/jstl/fmt"   
	xmlns:form="urn:jsptagdir:/WEB-INF/tags/form" 
	xmlns:jsp="http://java.sun.com/JSP/Page" 
	xmlns:fn="http://java.sun.com/jsp/jstl/functions"
	xmlns:field="urn:jsptagdir:/WEB-INF/tags/form/fields" 
	xmlns:spring="http://www.springframework.org/tags">
<spring:bind path="Student">
<form:errors path="student1.*"/>
<form action="/FirstSpringMVCProject/submitAdmissionForm.html" method="post">
<table>
<tr>
<td>Student Name : </td><td><input type="text" name="studentName"/></td>
</tr>
<tr>
<td>Student Hobby : </td><td><input type="text" name="studentHobby"/></td>
</tr>
<tr>
<td>Student Mobile : </td><td><input type="text" name="studentMobile"/></td>
</tr>
<tr>
<td>Student DOB : </td><td><input type="text" name="studentDOB"/></td>
</tr>
<tr>
<td>Student Skills : </td><td><select name="studentSkills" multiple>
								<option value="Core Java"> Java Core</option>
								<option value="Spring Core"> Spring core</option>
								<option value="Spring MVC"> Spring MVC</option>
								</select>								
</td>
</tr>
</table>
<table>
<tr><td>Student Address: </td></tr>
<tr><td>country: <input type="text" name="studentAddress.country"/></td></tr>
<tr><td>city: <input type="text" name="studentAddress.city"/></td></tr>
<tr><td>street: <input type="text" name="studentAddress.street"/></td></tr>
<tr><td>Pin Code: <input type="text" name="studentAddress.pincode"/></td></tr>
</table>



<input type ="submit"/>
</form>
</spring:bind>
</div>
</body>
</html>