package com.sayali.onlineShoppingBackEnd.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.sayali.onlineShoppingBackEnd.models.Authorities;
import com.sayali.onlineShoppingBackEnd.models.Customer;
import com.sayali.onlineShoppingBackEnd.models.User;

@Repository("userdao")
@Transactional
public class CustomerDAOImpl implements CustomerDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	public void registerCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		
		customer.getUser().setEnabled(true);
		
		Authorities authorities = new Authorities();
		authorities.setRole("ROLE_USER");
		
		customer.getUser().setAuthorities(authorities);
		authorities.setUser(customer.getUser());
		
		session.save(customer);
	}	
}
