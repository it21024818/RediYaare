package com.order;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class updateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String orderID = request.getParameter("orderID");
		String orderType = request.getParameter("service");
		String quantity = request.getParameter("quantity");
		String pickupDate = request.getParameter("pickupDate");
		String deliveryDate = request.getParameter("deliveryDate");
		String address = request.getParameter("address");
		
		boolean isTrue;
		
		isTrue = orderDButil.updateOrder(orderID, orderType, quantity, pickupDate, deliveryDate, address);
		
		if(isTrue == true) {
			
			List<Order> orderDetails = orderDButil.getOrder();
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("myOrders.jsp");
			dis.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Order updated successfully!');");
			out.println("location='myOrders.jsp'");
			out.println("</script>");
		}
		else {
			
			List<Order> orderDetails = orderDButil.getOrder();
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("myOrders.jsp");
			dis.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your order is not updated!');");
			out.println("location='myOrders.jsp'");
			out.println("</script>");
		}
	}

}
