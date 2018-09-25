package com.sayali.onlineShoppingFrontEnd.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
	
	@RequestMapping(value="/show/category/{id}")
	public ModelAndView showCategoryProduct(@PathVariable("id") int id) {	//For displaying all products based on category
		ModelAndView mv = new ModelAndView("page");
		List<Products> products = productdao.getProducts_on_Category(id);
		mv.addObject("productByCategory", products);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("userClickCategory", true);
		mv.addObject("title", "View Product By Category");
		return mv;
	}
	                                                                
	
	@RequestMapping(value="/all/getproductinfo/{id}")					//Displaying click product Updating Product
	public ModelAndView getproductinfo(@PathVariable("id") int id) {   //adding id from url to the @pathVariable id
		ModelAndView mv = new ModelAndView("page");
		Products product = productdao.getProduct(id);					// passing id to getProduct(id) method							
		mv.addObject("productObj", product);
		mv.addObject("title", "Product Info");
		mv.addObject("userClickProductsInfo", true);
		return mv; 
	}
	
	@RequestMapping(value="/admin/deleteproduct/{id}")
	public ModelAndView deleteproduct(@PathVariable("id") int id, HttpServletRequest request) {		//Deleting selected product
		ModelAndView mv = new ModelAndView("page");
		mv.addObject("p", productdao.deleteProduct(id));
		//Deleting product from the folder
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/assets/images/"+id+".jpg");
		if(Files.exists(path)) {
			try {
				Files.delete(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("userClickProductsDelete", true);
		return mv;
		
	}
	
	@RequestMapping(value="/admin/getProductForm")
	public ModelAndView getProductForm() {
		ModelAndView mv = new ModelAndView("page");
		Products p = new Products();
		mv.addObject("product", p);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("title", "Add Product");
		mv.addObject("userClickAddProduct", true);
		return mv;
	}
	
	@RequestMapping(value="/addProduct")         //@Valid, BindingResult for managing errors
	public ModelAndView addProduct(@Valid @ModelAttribute(name="product") Products product, BindingResult result, Model model, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("page");
		if(result.hasErrors()) {
			model.addAttribute("userClickAddProduct", true);
			model.addAttribute("title", "Add Product");
			model.addAttribute("msg", "Error");
			return mv;
		}
		productdao.saveProduct(product);
		MultipartFile img = product.getImage();
		System.out.println(request.getServletContext().getRealPath("/"));
		//Defining path
		Path path = Paths.get(request.getServletContext().getRealPath("/")+"/assets/images/"+product.getId()+".jpg");
		System.out.println(path);
		//Transfer image to file
		if(!img.isEmpty()&&img!=null){
			try {
				img.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("userClickSubmit", true);
		mv.addObject("msg", "Added successfully");
		return mv;
	}
	
	@RequestMapping(value="/admin/getproduct/{id}")					//Displaying click product
	public ModelAndView getproduct(@PathVariable("id") int id) {   //adding id from url to the @pathVariable id
		ModelAndView mv = new ModelAndView("page");
		Products product = productdao.getProduct(id);					// passing id to getProduct(id) method							
		mv.addObject("productObj", product);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("title", "Update Product");
		mv.addObject("userClickUpdate", true);
		return mv; 
	}
	
	@RequestMapping(value="/updateProduct")                    //Updating Product Details       
	public ModelAndView updateProduct(@ModelAttribute(name="productObj") Products product, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("page");
		productdao.updateProduct(product);
		MultipartFile img = product.getImage();
		System.out.println(request.getServletContext().getRealPath("/"));
		//Defining path
		Path path = Paths.get(request.getServletContext().getRealPath("/")+"/assets/images/"+product.getId()+".jpg");
		System.out.println(path);
		//Transfer image to file
		if(!img.isEmpty()&&img!=null){
			try {
				img.transferTo(new File(path.toString()));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		List<Products> products = productdao.getAllProducts();
		mv.addObject("productList", products);
		mv.addObject("categoryList", productdao.getAllCategory());
		mv.addObject("userClickSubmit", true);
		return mv;
	}
	
}
