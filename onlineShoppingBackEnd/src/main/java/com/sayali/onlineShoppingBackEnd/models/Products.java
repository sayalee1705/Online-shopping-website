package com.sayali.onlineShoppingBackEnd.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.web.multipart.MultipartFile;



@Entity
public class Products {
	/** Private Fields **/
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@NotBlank(message="Enter a valid Product Name!")
	private String productName;
	@NotBlank(message="Enter a valid Product Brand!")
	private String productBrand;
	private String productDisplayType;
	private String productKeySpecs;
	@NotBlank(message="Enter a valid Product Description!")
	private String productDescription;
	@Min(value=1, message="Price cannot be less than 1")
	private double productPrice;
	private int productQuantity;
	@ManyToOne
	private Category category;
	
	@Transient
	private MultipartFile image;
	
	
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
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
}
