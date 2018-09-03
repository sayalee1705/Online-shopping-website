package com.sayali.onlineShoppingBackEnd.dao;

import java.util.List;

import com.sayali.onlineShoppingBackEnd.models.*;

public interface ProductDAO {
	Products saveProduct(Products product);
	Products getProduct(int id);
	Products updateProduct(Products product);
	Products deleteProduct(int id);
	List<Products> getAllProducts();
	List<Category> getAllCategory();
	List<Products> getProducts_on_Category(int id);
}
