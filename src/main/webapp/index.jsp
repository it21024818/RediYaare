<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RediYaare</title>
<link rel="stylesheet" type="text/css" href="mainStyles.css">
<script src="mainScript.js"></script>

</head>
<body>

<!-- Header -->
	<div class="header" id="myHeader">
		<img src = "images/logo.png" alt = "logo" style="width:70px; padding-left:10px; padding-top:10px; padding-bottom:100px;">
		<span style="font-size:30px;cursor:pointer;float:right; padding: 20px;" onclick="openNav()">&#9776;</span>
	</div>	
	
	<!--nav bar-->
	<div id="mySidenav" class="sidenav" style="text-align: center">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>

		  <div class="fcolumn">
			<img src = "images/logo.png" alt = "logo" style="width:150px; padding-top:20%;">
		  </div>

		  <div class="fcolumn">
			<a href="index.jsp">Home</a>
			<a href="#">About Us</a>
			<a href="#">Services</a>
			<a href="order.jsp">Make an Order</a>
			<a href="#">Contact Us</a>
		  </div>

		  <div class="fcolumn">
			<button class="submitBtn" style="vertical-align:middle"><a href="login.jsp" style="color:white; font-size:15px; padding-left:5px;"><span>Log in</span></a></button>
			<br>or<br>
			<button class="submitBtn" style="vertical-align:middle; background-color: transparent"><a href="#" style="color:white; font-size:15px; padding-left:5px;"> <span>Register</span></a></button>
		  </div>
</div>

<div class="container">
	  <img src="images/laundryservice.png" alt="laundry" style="width:100%;">
</div>

<footer>
	
	<br><br>
	  <div class="fcolumn">
		  <h3>CONTACT</h3>
		  <br><p3>
		  <a href="mailto:info@rediyaare.com">info@rediyaare.com</a>
		  <br>Tel: +94 11 235 5678<br>
		  <br>No. 9,<br>1st Lane,<br>Colombo, Sri Lanka<br>
		  <br><br><br><br>
		  <br>&copy; 2022 RediYaare. All Rights Reserved.</p3>
	  </div>
	  
	  <div class="fcolumn">
		<h3>FIND US ON</h3><br>
		<a href="https://facebook.com/" target="_blank"><img src="images/fbicon.png" style="width:40px"></a> &emsp;
		<a href="https://www.instagram.com/" target="_blank"><img src="images/igicon.png" style="width:40px"></a> &emsp;
		<a href="https://twitter.com/?lang=en" target="_blank"><img src="images/twittericon.png" style="width:40px"></a> 
	  </div>
	  
	  <div class="fcolumn">
		<h3>POLICIES</h3>
		<br><p3>
		<a href="#">Privacy Policy</a> &emsp;
		<a href="#">Disclaimer</a> &emsp;
		<a href="#">Terms & Conditions</a>
		<br><br><br><br><br><br><br><br><br><br>
		<br>Designed & Developed in Sri Lanka.<br>
		</p3>		
	  </div>
</footer>

</body>
</html>