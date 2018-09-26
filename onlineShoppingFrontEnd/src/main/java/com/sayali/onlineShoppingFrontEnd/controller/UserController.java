package com.sayali.onlineShoppingFrontEnd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sayali.onlineShoppingBackEnd.dao.CustomerDAO;
import com.sayali.onlineShoppingBackEnd.dao.ProductDAO;
import com.sayali.onlineShoppingBackEnd.models.Customer;


@Controller
public class UserController {
	@Autowired
	private CustomerDAO customerdao;
	
	@Autowired
	private ProductDAO productdao;
	
	@RequestMapping(value="/all/register")    //Calling registration page
	public ModelAndView viewRegisterPage() {
		ModelAndView mv = new ModelAndView("page");
		Customer customer = new Customer();
		mv.addObject("userobj", customer);
		mv.addObject("title", "Registration");
		mv.addObject("userClickRegistration", true);
		return mv;
	}
	
	@RequestMapping(value="/register")		//Registration page
	public ModelAndView registeration(@ModelAttribute(name="userobj") Customer customer) {
		ModelAndView mv = new ModelAndView("page");
		customerdao.registerCustomer(customer);
		mv.addObject("userClickRegister", true);
		return mv;	
	}
	
	@RequestMapping(value="/all/signIn")	//Login page
	public ModelAndView viewSignInPage() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Sign-In");
		mv.addObject("userClickSignIn", true);
		return mv;
	}
	
	@RequestMapping(value="/loginerror")	//error page	
	public ModelAndView loginFailed() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title", "Sign-In");
		mv.addObject("error", "Invalid Email or Password");
		mv.addObject("userClickSignIn", true);
		return mv;
	}
	
	@RequestMapping(value="/logout")		//logout page
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("title","Sign-Out");
		mv.addObject("msg", "Logged out sucessfully");
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("userClickSignOut", true);
		return mv;
	}
}
