<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
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


<title>UPDATE STUDENT</title>
<style type="text/css">
#header {
	width: 100%;
	height: 15%;
	background-color: coral;
}
#section{
margin-top:0%;
width:30%;
margin-left: 35%;
}
#bottom{
float:left;
width:100%;
height:30px;
background-color:coral;
}

</style>
</head>
<body style="background:antiquewhite;">
<div id="header">
<p style="font-family: sans-serif; color: antiquewhite; font-size: 40px; text-align: center;">
			Update form</p>
</div>

	
<div id="section">

	<sf:form action="update" method="post" commandName="update">
		<div class="form-group">
		<label for="id">Id:</label> 
		<sf:input  path="id" class="form-control" type="text" readonly id="id"  /><br><br>
		<label for="name">NAME:</label> 
		<sf:input path="name" class="form-control" placeholder=" Enter Name" pattern="[A-Za-z]{4,}[ ]{0,}[A-Za-z]{0,}"
		title="please type only alphabet" type="text" id="name" /><br><br> 
		</div>
		<div class="form-group">
		<label for="course">EMAIL:</label>
		<sf:input path="email"	placeholder=" Enter Email" pattern="[A-Za-z]{0,}[0-9]{0,}[@]{1}[eg]{1,}[mail]{1,}[.]{1}[com]{3}"
		placeholder="Enter EmailId" type="text"  id="email" /><br><br> 
		</div>
		<div class="form-group">
		<label for="course">COURSE:</label>
		<sf:input path="course"	type="text" placeholder=" Enter Course" id="course" /><br><br> 
		</div>
		<div class="form-group">
		<label for="fee">FEE:</label> 
		<sf:input path="fee" type="text" placeholder=" Enter Fee" id="fee" /> <br><br>
		</div>
		<input type="SUBMIT" value="UPDATE">

	</sf:form>
	</div>
	<div id="bottom"></div>
</body>
</html>