package com.order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;

public class orderDButil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static List<Order> getOrder() {
		
		ArrayList<Order> odr = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from orders";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int orderID = rs.getInt(1);
				String orderType = rs.getString(2);
				String quantity = rs.getString(3);
				String pickupDate = rs.getString(4);
				String deliveryDate = rs.getString(5);
				String address = rs.getString(6);
				
				Order od = new Order(orderID,orderType,quantity,pickupDate,deliveryDate,address);
				odr.add(od);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return odr;	
	}
   
	
	//method to insert order details into DB
    public static boolean insertOrder(String orderType, String quantity, String pickupDate, String deliveryDate, String address) {
    	
    	boolean isSuccess = false;
    	    	
    	try {
 
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into orders values (0,'"+orderType+"','"+quantity+"','"+pickupDate+"','"+deliveryDate+"','"+address+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
  
    //method to update order details    
    public static boolean updateOrder(String orderID, String orderType, String quantity, String pickupDate, String deliveryDate, String address) {
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update orders set orderType='"+orderType+"',quantity='"+quantity+"',pickupDate='"+pickupDate+"',deliveryDate='"+deliveryDate+"',address='"+address+"'"
    				+ "where orderID='"+orderID+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
    public static List<Order> getOrderDetails(String orderId) {
    	
    	int convertedID = Integer.parseInt(orderId);
    	 	
    	ArrayList<Order> odr = new ArrayList<>();
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from orders where orderID='"+convertedID+"'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int orderID = rs.getInt(1);
				String orderType = rs.getString(2);
				String quantity = rs.getString(3);
				String pickupDate = rs.getString(4);
				String deliveryDate = rs.getString(5);
				String address = rs.getString(6);
				
    			Order od = new Order(orderID,orderType,quantity,pickupDate,deliveryDate,address);
    			odr.add(od);
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}	
    	return odr;	
    }
    
 
    public static boolean deleteOrder(String orderID) {
    	
    	int convertedID = Integer.parseInt(orderID);
    	    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from orders where orderID='"+convertedID+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    } 
    
  
}

