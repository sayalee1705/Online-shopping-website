package com.sayali.onlineShoppingBackEnd.models;

public class Category {
	private int id;
	private String categoryname;
	private String categorydesc;
	private String categoryimage;
	private boolean active = true;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public String getCategorydesc() {
		return categorydesc;
	}
	public void setCategorydesc(String categorydesc) {
		this.categorydesc = categorydesc;
	}
	public String getCategoryimage() {
		return categoryimage;
	}
	public void setCategoryimage(String categoryimage) {
		this.categoryimage = categoryimage;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	
}
