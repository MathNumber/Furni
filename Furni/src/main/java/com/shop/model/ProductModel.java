package com.shop.model;

public class ProductModel extends AbstractModel<ProductModel> {
	
	private String productname;
	private Double price;
	private Integer orderid;
	private Integer amount;
	private Integer userid;
	
	public ProductModel() {
	}

	public ProductModel(String productname, Double price, Integer orderid, Integer amount, Integer userid) {
		this.productname = productname;
		this.price = price;
		this.orderid = orderid;
		this.amount = amount;
		this.userid = userid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getOrderid() {
		return orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public Integer getUserid() {
		return userid;
	}

	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	
}
