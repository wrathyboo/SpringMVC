<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Student Page!</title>
</head>
<body>
	<h1>INSERT STUDENT</h1>
	<h3 style="color:red">${err }</h3>
	
	<form:form action="insertStudent" modelAttribute="s" method="post">
		<table>
			<tr>
				<td>Full Name:</td>
				<td><form:input path="fullName"/></td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td>
					<form:radiobutton path="gender" value="true"/>male
					<form:radiobutton path="gender" value="false"/>female
				</td>
			</tr>
			<tr>
				<td>Birthday:</td>
				<td><form:input path="birthday" type="date"/></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:textarea path="address"/> </td>
			</tr>
			<tr>
				<td>Class name:</td>
				<td>
					<form:select path="className">
						<form:option value="">---Choose---</form:option>
						<form:option value="C2010G1">C2010G1</form:option>
						<form:option value="C2010G2">C2010G2</form:option>
						<form:option value="C2002M">C2002M</form:option>
						<form:option value="C2009I2">C2009I2</form:option>
						<form:option value="C2011H1">C2011H1</form:option>
						<form:option value="C2110H2">C2110H2</form:option>
						<form:option value="C2202I1">C2202I1</form:option>					
					</form:select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="insert"/>
				<input type="reset" value="clear"/></td>
			</tr>
		</table>
	</form:form>
</body>
</html>