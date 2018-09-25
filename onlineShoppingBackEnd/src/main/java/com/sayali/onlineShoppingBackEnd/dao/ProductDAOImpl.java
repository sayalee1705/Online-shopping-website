package com.sayali.onlineShoppingBackEnd.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sayali.onlineShoppingBackEnd.models.Category;
import com.sayali.onlineShoppingBackEnd.models.Products;

@Repository("productdao")
@Transactional
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;
	public Products saveProduct(Products product) {
		Session session = sessionFactory.getCurrentSession();
		session.save(product);
		return product;
	}
	public Products getProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		Products product = session.get(Products.class, id);
		return product;
	}
	public Products updateProduct(Products product) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		return product;
	}
	public Products deleteProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		Products product = session.get(Products.class, id);
		session.delete(product);
		return product;
	}
	public List<Products> getAllProducts() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Products");
		List<Products> products = query.list();
		return products;
	}
	public List<Category> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Category");
		List<Category> category = query.list();
		return category;
	}
	public List<Products> getProducts_on_Category(int id) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Products where category_id="+id);
		List<Products> products = query.list();
		return products;
	}
	public Products updateQuantity(int id,int quantity) {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("Update Products set productQuantity = "+quantity+"where id= "+id);
		query.executeUpdate();
		Products product = session.get(Products.class, id);
		System.out.println("Sucess: "+product);
		return product;
	}
	
	

}
