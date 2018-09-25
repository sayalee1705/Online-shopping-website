package com.sayali.onlineShoppingBackEnd.dao;

import java.util.List;

import com.sayali.onlineShoppingBackEnd.models.CartItems;
import com.sayali.onlineShoppingBackEnd.models.User;

public interface CartItemsDAO {
	
	void addToCart(CartItems cartItem);
	User getUser(String email);
	List<CartItems>  getCart(String email);//select * from cartitem where user_email=?
	void removeCartItem(int cartItemId);

}
