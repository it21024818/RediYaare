<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RediYaare: My Orders</title>
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

	<h1 style="text-align: center;">My Orders</h1>	
	
	<table>
			
					<tr>
						<th>Order ID</th>
						<th>Order Type</th>
						<th>Quantity</th>
						<th>Pickup Date</th>
						<th>Delivery Date</th>
						<th>Address</th>
					</tr>
				
			
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="odr" items="${orderDetails}">
					
					<c:set var="orderID" value="${odr.orderID}"/>
					<c:set var="orderType" value="${odr.orderType}"/>
					<c:set var="quantity" value="${odr.quantity}"/>
					<c:set var="pickupDate" value="${odr.pickupDate}"/>
					<c:set var="deliveryDate" value="${odr.deliveryDate}"/>
					<c:set var="address" value="${odr.address}"/>

						<tr>
							<td>${odr.orderID}</td>
							<td>${odr.orderType}</td>
							<td>${odr.quantity}</td>
							<td>${odr.pickupDate}</td>
							<td>${odr.deliveryDate}</td>
							<td>${odr.address}</td>
							
							<c:url value="updateOrder.jsp" var="ordupdate"> 
								<c:param name="orderID" value="${orderID}"/>
								<c:param name="orderType" value="${orderType}"/>
								<c:param name="quantity" value="${quantity}"/>
								<c:param name="pickupDate" value="${pickupDate}"/>
								<c:param name="deliveryDate" value="${deliveryDate}"/>
								<c:param name="address" value="${address}"/>
							</c:url>
							
							<c:url value="deleteOrder.jsp" var="orddelete"> 
								<c:param name="orderID" value="${orderID}"/>
								<c:param name="orderType" value="${orderType}"/>
								<c:param name="quantity" value="${quantity}"/>
								<c:param name="pickupDate" value="${pickupDate}"/>
								<c:param name="deliveryDate" value="${deliveryDate}"/>
								<c:param name="address" value="${address}"/>
							</c:url>
							
							<td><a href="${ordupdate}"><input type="button" class="submitBtn" name="update" value="Edit order"></a>
	&nbsp;&nbsp;&nbsp;&nbsp;<a href="${orddelete}"><input type="button" class="submitBtn" name="delete" value="Delete order"></a>
						</tr>
					</c:forEach>
					<!-- } -->
				

			</table>

	<br><br>
	<button class="submitBtn" style="vertical-align:middle; text-align: center;"><span>Proceed to the Payment</span></button>

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