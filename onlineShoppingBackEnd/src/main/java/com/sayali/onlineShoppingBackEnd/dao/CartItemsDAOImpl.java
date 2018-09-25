package com.sayali.onlineShoppingBackEnd.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sayali.onlineShoppingBackEnd.models.CartItems;
import com.sayali.onlineShoppingBackEnd.models.User;

@Repository("cartitemdao")
@Transactional
public class CartItemsDAOImpl implements CartItemsDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void addToCart(CartItems cartItem) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cartItem);
	}

	public User getUser(String email) {
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class,email);
		return user;
	}

	public List<CartItems> getCart(String email) {
		Session session=sessionFactory.getCurrentSession();
		//SQL - select * from cartitem where user_email=?
		//cartItem has user, user has email
		Query query=session.createQuery("from CartItems where user_email=?");
		query.setString(0, email);
		List<CartItems> cartItems=query.list();
		return cartItems;
	}

	public void removeCartItem(int cartItemId) {
		Session session=sessionFactory.getCurrentSession();
		CartItems cartItem=(CartItems)session.get(CartItems.class, cartItemId);
		session.delete(cartItem);

	}

}
