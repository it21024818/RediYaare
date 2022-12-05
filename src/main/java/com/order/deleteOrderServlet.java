package com.order;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class deleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String orderID = request.getParameter("orderID");
		boolean isTrue;
		
		isTrue = orderDButil.deleteOrder(orderID);
		
		if (isTrue == true) {
			List<Order> orderDetails = orderDButil.getOrder();
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("myOrders.jsp");
			dispatcher.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Order deleted successfully!');");
			out.println("location='myOrders.jsp'");
			out.println("</script>");
		}
		else {
			
			List<Order> orderDetails = orderDButil.getOrderDetails(orderID);
			request.setAttribute("orderDetails", orderDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("myOrders.jsp");
			dispatcher.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('Your order is not removed!');");
			out.println("location='myOrders.jsp'");
			out.println("</script>");
		}
	}

}
