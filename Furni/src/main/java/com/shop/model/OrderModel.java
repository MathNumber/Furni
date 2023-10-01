package com.shop.model;

public class OrderModel extends AbstractModel<OrderModel> {
	private String fullname;
	private String country;
	private String companyname;
	private String state;
	private Integer phone;
	private Integer zip;
	private String note;
	private String email;
	private String address;
	public OrderModel() {
	}
	public OrderModel(String fullname, String country, String companyname, String state, Integer phone, Integer zip,
			String note, String email, String address) {
		this.fullname = fullname;
		this.country = country;
		this.companyname = companyname;
		this.state = state;
		this.phone = phone;
		this.zip = zip;
		this.note = note;
		this.email = email;
		this.address = address;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	 public String getCompanyname() {
	        return companyname;
	 }
	   
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
    public Integer getZip() {
        return zip;
    }
	public void setZip(Integer zip) {
		this.zip = zip;
	}
    public String getNote() {
        return note;
    }
	public void setNote(String note) {
		this.note = note;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
