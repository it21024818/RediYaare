<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RediYaare: Delete order</title>
<link rel="stylesheet" type="text/css" href="mainStyles.css">
<script src="mainScript.js"></script>

<style type="text/css">
	form{
	width:800px;
	margin:auto;
	padding:50px;
	background:black;
	font-size:14px;
	font-family:Verdana;
	color:white;
	opacity: 0.9;
	
	}
	
	label{
	font-size: 20px;
	}
	 
	input[type=text],[type=email],[type=phone],[type=password], select {
	  width: 390px;
	  padding: 12px 20px;
	  margin: 8px 0;
	  display: inline-block;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  box-sizing: border-box;
	}
</style>

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

	<h1 style="text-align: center;">Remove the Order</h1>

	<%
		String orderID = request.getParameter("orderID");
		String orderType = request.getParameter("orderType");
		String quantity = request.getParameter("quantity");
		String pickupDate = request.getParameter("pickupDate");
		String deliveryDate = request.getParameter("deliveryDate");
		String address = request.getParameter("address");
	%>
	
	<form action="deleteOrderServlet" method="post">
		<label>Order ID:	</label>
		<input type="text" name="orderID" value="<%= orderID %>" readonly>
		<br><br>
		<label>Type of service:	</label>
		<select id="service" name="service" disabled> 
			<option value="<%= orderType %>">Washing</option>
			<option value="<%= orderType %>">Dry cleaning</option>
			<option value="<%= orderType %>">Pressing</option>
			<option value="<%= orderType %>">Mending</option>
		</select>
		<br><br>
		<label>Quantity of items:	</label>
		<input type="text" id="Quantity" name="quantity" value="<%= quantity %>" readonly>
		<br><br>
		<label>Pick-up date:	</label>
		<input type="date" id="pickupDate" name="pickupDate" value="<%= pickupDate %>" readonly>
		<br><br>
		<label>Delivery date:	</label>
		<input type="date" id="deliveryDate" name="deliveryDate" value="<%= deliveryDate %>" readonly>
		<br><br>
		<label>Location:	</label>
		<input style="width:75%;" type="text" name="address" value="<%= address %>" readonly>
		<br><br>		
		<input type="submit" class="submitBtn" name="submit" value="Remove order"><br>
	</form>

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