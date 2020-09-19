<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width,intial-scale=1.0">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<title>Insert title here</title>
<style type="text/css">
th{color:coral;}
body{
background-color:antiquewhite;
}
#header{
widht:100%;
height:10%;
background-color:coral;
}

</style>
</head>

<body>
<div id="header"></div>
		<table class="table   table-striped table-hover" >
			<tr align="center">
				<th>ID</th>
				<th>NAME</th>
				<th>COURSE</th>
				<th>EMAIL</th>
				<th>FEE</th>
				<th>OPERATION</th>
				
			</tr>

			<c:forEach items="${showAll}" var="student">
				<tr align="center">
					<td>${student.id}</td>
					<td>${student.name}</td>
					<td>${student.course}</td>
					<td>${student.email}</td>
					<td>${student.fee}</td>
					<td><a href="delete?id=${student.id}"
						class="btn btn-danger btn-sm">Delete</a>&nbsp; &nbsp;
						<a href="updateform?id=${student.id}" class="btn btn-warning btn-sm">Update</a></td>

				</tr>
			</c:forEach>
		</table>

</body>
</html>