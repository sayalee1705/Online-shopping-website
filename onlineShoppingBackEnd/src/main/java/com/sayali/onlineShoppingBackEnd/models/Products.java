package com.sayali.onlineShoppingBackEnd.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Products {
	/** Private Fields **/
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String productName;
	private String productBrand;
	private String productDisplayType;
	private String productKeySpecs;
	private String productDescription;
	private double productPrice;
	private int productQuantity;
	@ManyToOne
	private Category category;
	
	/** Getter and Setter methods **/
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getProductBrand() {
		return productBrand;
	}
	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}
	public String getProductDisplayType() {
		return productDisplayType;
	}
	public void setProductDisplayType(String productDisplayType) {
		this.productDisplayType = productDisplayType;
	}
	public String getProductKeySpecs() {
		return productKeySpecs;
	}
	public void setProductKeySpecs(String productKeySpecs) {
		this.productKeySpecs = productKeySpecs;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
}
