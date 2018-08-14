package com.sayali.onlineShoppingFrontEnd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sayali.onlineShoppingBackEnd.dao.ProductDAO;
import com.sayali.onlineShoppingBackEnd.models.Products;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productdao;
	
	
	@RequestMapping(value="/all/listProducts")
	public ModelAndView listofproducts() {
		ModelAndView mv = new ModelAndView("page");
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("title", "View Products");
		mv.addObject("userClickProducts", true);
		return mv;
	}
	
	@RequestMapping(value="/getproductinfo/{id}")
	public ModelAndView getproductinfo(@PathVariable int id) {
		ModelAndView mv = new ModelAndView("page");
		Products product = productdao.getProduct(id);
		mv.addObject("productObj", product);
		mv.addObject("title", "Product Info");
		mv.addObject("userClickProductsInfo", true);
		return mv; 
	}
}
