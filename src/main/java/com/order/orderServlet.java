package com.order;

import java.io.IOException;

import java.io.PrintWriter;
import java.util.List;

import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class orderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String orderType = request.getParameter("orderType");
		String quantity = request.getParameter("quantity");
		String pickupDate = request.getParameter("pickupDate");
		String deliveryDate = request.getParameter("deliveryDate");
		String address = request.getParameter("address");
		
		boolean isTrue;
		
		isTrue = orderDButil.insertOrder(orderType, quantity, pickupDate, deliveryDate, address);
		
		if (isTrue == true) {
			
			List<Order> orderDetails = orderDButil.getOrder();
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("myOrders.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your order is not success!');");
			out.println("location='order.jsp'");
			out.println("</script>");		
		}
		
	}
	
}
