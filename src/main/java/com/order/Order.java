package com.order;

public class Order {
	
	private int orderID;
	private String orderType;
	private String quantity;
	private String pickupDate;
	private String deliveryDate;
	private String address;
	
	public Order(int orderID, String orderType,String quantity, String pickupDate, String deliveryDate, String address) {
		this.orderID = orderID;
		this.orderType = orderType;
		this.quantity = quantity;
		this.pickupDate = pickupDate;
		this.deliveryDate = deliveryDate;
		this.address = address;
	}

	public int getOrderID() {
		return orderID;
	}

	public String getOrderType() {
		return orderType;
	}
	
	public String getQuantity() {
		return quantity;
	}

	public String getPickupDate() {
		return pickupDate;
	}

	public String getDeliveryDate() {
		return deliveryDate;
	}

	public String getAddress() {
		return address;
	}
	

}
