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

<title>Registration_From</title>
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
		
		<p
			style="font-family: sans-serif; color: antiquewhite; font-size: 40px; text-align: center;">
			Registration Form</p>
			
	</div>

<div id="section">
	<sf:form action="save"  method="post" commandName="stu">
		<div class="form-group" >
		<label for="name">NAME:</label> 
		<sf:input path="name" class="form-control" placeholder=" Enter Name"
							pattern="[A-Za-z]{4,}[ ]{0,}[A-Za-z]{0,}"
							title="please type only alphabet" style="height:32px" type="text" id="name" ></sf:input>
		</div>
		<div class="form-group">
		<label for="course">EMAIL:</label>
		<sf:input path="email" class="form-control" 
		pattern="[A-Za-z]{0,}[0-9]{0,}[@]{1}[eg]{1,}[mail]{1,}[.]{1}[com]{3}"
		placeholder="Enter EmailId" style="height:32px" type="text" id="email" /> 
		</div>
		<div class="form-group" >
		<label for="course">COURSE:</label>
		<sf:input path="course" placeholder="Enter Course" class="form-control" style="height:32px" type="text" id="course" /> 
		<sf:errors path="name" /> 
		</div>
		<div class="form-group" >
		<label for="fee">FEE:</label> 
		<sf:input path="fee" placeholder="Enter Course" class="form-control" style="height:32px" type="text" id="fee" /> <br><br>
		<input type="SUBMIT" class="btn btn-primary" value="Register">
</div>
	</sf:form>
</div>
<div id="bottom"></div>
</body>
</html>




