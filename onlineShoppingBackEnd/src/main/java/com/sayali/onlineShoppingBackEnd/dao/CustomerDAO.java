package com.sayali.onlineShoppingBackEnd.dao;

import com.sayali.onlineShoppingBackEnd.models.Customer;

public interface CustomerDAO {
	void registerCustomer(Customer customer);
	boolean isEmailUnique(String email);
}
