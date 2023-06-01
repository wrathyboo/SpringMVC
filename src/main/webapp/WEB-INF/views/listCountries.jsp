<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Page!</title>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
	
	 <div class="container" style="margin-top: 100px;">
      <h1>List Countries</h1>
       <form class="d-flex" style="width: 30%;margin-top: 15px;margin-bottom: 15px;">
               <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
               <button class="btn btn-outline-success" type="submit">Search</button>
             </form>
          <table class="table table-striped table-hover">
             <thead>
               <tr>
                 <th scope="col">Id</th>
                 <th scope="col">Name</th>
                 <th scope="col">Continent</th>
                 <th scope="col">Founded</th>
                 <th scope="col">Language</th>
                 <th scope="col">Acreage</th>
                 <th scope="col">Population</th>
                 <th scope="col">Edit</th>
               </tr>
             </thead>
             <tbody>
               <c:forEach items="${list}" var="s">
         <tr data-bs-toggle="modal" data-bs-target="#id" style="cursor: pointer">
           <td>${s.id}</td>
           <td>${s.name}</td>
           <td>${s.continent}</td>
           <td><fmt:formatDate value="${s.founded }" pattern="dd/MM/yyyy"/></td>
           <td>${s.language}</td>
           <td>${s.acreage}</td>
           <td>${s.population}</td>
           <td>
                   <a class="btn btn-primary btn-sm " href="#" role="button"> Update </a>
                   <a class="btn btn-danger btn-sm " href="#" role="button" onclick="return confirm 'Confirm delete?;"> Delete </a>
                   </td>
         </tr>
       </c:forEach>
             
             </tbody>
           </table>
             <a class="btn btn-primary btn-sm " href="initInsertCountry" role="button" style="width: 10%;"> Add new country </a>
         </div>
</body>
</html>