package com.sayali.onlineShoppingFrontEnd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sayali.onlineShoppingBackEnd.dao.ProductDAO;
import com.sayali.onlineShoppingBackEnd.models.*;

@Controller
public class ProductController {
	@Autowired
	private ProductDAO productdao;
	
	
	@RequestMapping(value="/all/listProducts")
	public ModelAndView listofproducts() {							//For displaying all products
		ModelAndView mv = new ModelAndView("page");
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("title", "View Products");
		mv.addObject("userClickProducts", true);
		return mv;
	}
	
	@RequestMapping(value="/show/category/{id}/all/listProducts")
	public ModelAndView showCategoryProduct(@PathVariable("id") int id) {	//For displaying all products based on category
		ModelAndView mv = new ModelAndView("page");
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		//Passing single category
		Category category = productdao.getCategory(id);
		mv.addObject("categoryList", productdao.getAllCategory());
		//Passing category name as title
		mv.addObject("title",category.getCategoryname());
		mv.addObject("userClickCategory", true);
		return mv;
	}
	                                                                
	
	@RequestMapping(value="/getproductinfo/{id}")					//Displaying click product
	public ModelAndView getproductinfo(@PathVariable("id") int id) {   //adding id from url to the @pathVariable id
		ModelAndView mv = new ModelAndView("page");
		Products product = productdao.getProduct(id);					// passing id to getProduct(id) method							
		mv.addObject("productObj", product);
		mv.addObject("title", "Product Info");
		mv.addObject("userClickProductsInfo", true);
		return mv; 
	}
	
	@RequestMapping(value="/deleteproduct/{id}")
	public ModelAndView deleteproduct(@PathVariable("id") int id) {		//Deleting selected product
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("p", productdao.deleteProduct(id));
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("userClickProductsDelete", true);
		return mv;
		
	}
	
	@RequestMapping(value="/getProductForm")
	public ModelAndView getProductForm() {
		ModelAndView mv = new ModelAndView("page");
		Products p = new Products();
		mv.addObject("product", p);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("title", "Add Product");
		mv.addObject("userClickAddProduct", true);
		return mv;
	}
	
	@RequestMapping(value="/addProduct")
	public ModelAndView addProduct(@ModelAttribute(name="product") Products product) {
		ModelAndView mv = new ModelAndView("page");
		productdao.saveProduct(product);
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("userClickSubmit", true);
		return mv;
	}
	
	@RequestMapping(value="/getproduct/{id}")					//Displaying click product
	public ModelAndView getproduct(@PathVariable("id") int id) {   //adding id from url to the @pathVariable id
		ModelAndView mv = new ModelAndView("page");
		Products product = productdao.getProduct(id);					// passing id to getProduct(id) method							
		mv.addObject("productObj", product);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("title", "Update Product");
		mv.addObject("userClickUpdate", true);
		return mv; 
	}
	
	@RequestMapping(value="/updateProduct")
	public ModelAndView updateProduct(@ModelAttribute(name="productObj") Products product) {
		ModelAndView mv = new ModelAndView("page");
		productdao.updateProduct(product);
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("userClickSubmit", true);
		return mv;
	}
	
}
