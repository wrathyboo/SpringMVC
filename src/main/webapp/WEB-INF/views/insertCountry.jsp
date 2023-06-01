<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Page!</title>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	<h1>INSERT Country</h1>
	<h3 style="color:red">${err }</h3>
	
	
	
	<form:form action="insertCountry" modelAttribute="s" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><form:input path="name"/></td>
			</tr>
			<tr>
				<td>Continent:</td>
				<td>
					<form:select path="continent">
						<form:option value="">---Choose---</form:option>
						<form:option value="Asia">Asia</form:option>
						<form:option value="Africa">Africa</form:option>
						<form:option value="North America">North America</form:option>
						<form:option value="South America">South America</form:option>
						<form:option value="Antarctica">Antarctica</form:option>
						<form:option value="Europe">Europe</form:option>
						<form:option value="Australia">Australia</form:option>					
					</form:select>
				</td>
			</tr>
			<tr>
				<td>Founded:</td>
				<td><form:input path="founded" type="date"/></td>
			</tr>
			<tr>
				<td>Language:</td>
				<td><form:input path="language"/></td>
			</tr>
			<tr>
				<td>Acreage:</td>
				<td><form:input path="acreage" type="number"/></td>
			</tr>
			<tr>
				<td>Population:</td>
				<td><form:input path="population" type="number"/></td>
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