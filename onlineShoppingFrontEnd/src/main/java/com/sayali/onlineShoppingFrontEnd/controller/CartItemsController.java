package com.sayali.onlineShoppingFrontEnd.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sayali.onlineShoppingBackEnd.dao.CartItemsDAO;
import com.sayali.onlineShoppingBackEnd.dao.ProductDAO;
import com.sayali.onlineShoppingBackEnd.models.CartItems;
import com.sayali.onlineShoppingBackEnd.models.Customer;
import com.sayali.onlineShoppingBackEnd.models.Products;
import com.sayali.onlineShoppingBackEnd.models.ShippingAddress;
import com.sayali.onlineShoppingBackEnd.models.User;

@Controller
public class CartItemsController {
	@Autowired
	private CartItemsDAO cartitemdao;
	
	@Autowired
	private ProductDAO productdao;
	
	@RequestMapping(value="/cart/add/{productId}")
	public String addToCart(@PathVariable int productId,@RequestParam int requestedQuantity,@AuthenticationPrincipal Principal principal) {
		
		String email = principal.getName();
		Products product=productdao.getProduct(productId);
		int quantity = product.getProductQuantity()-requestedQuantity;
		productdao.updateQuantity(productId, quantity);
		User user = cartitemdao.getUser(email);
		List<CartItems> cartitems = cartitemdao.getCart(email);
		
		for(CartItems cartitem:cartitems) {
			if(cartitem.getProduct().getId()==productId) {
				cartitem.setQuantity(requestedQuantity);
				cartitem.setTotalPrice(requestedQuantity*product.getProductPrice());
				cartitemdao.addToCart(cartitem);
				return "redirect:/cart/getcart";
			}
		}
		
		CartItems cartitem = new CartItems();
		cartitem.setQuantity(requestedQuantity);
		cartitem.setProduct(product);
		cartitem.setUser(user);
		double totalPrice = requestedQuantity*product.getProductPrice();
		cartitem.setTotalPrice(totalPrice);
		cartitemdao.addToCart(cartitem);
    	return "redirect:/cart/getcart";
	}
	
	@RequestMapping(value="/cart/getcart")
    public ModelAndView getCart(@AuthenticationPrincipal Principal principal,Model model){
		ModelAndView mv = new ModelAndView("page");

    	String email=principal.getName();
    	List<CartItems> cartItems=cartitemdao.getCart(email);
    	mv.addObject("cartItems",cartItems);
    	mv.addObject("userClickAddToCart", true);
    	return mv;
    }
	
	@RequestMapping(value="/cart/removecartitem/{cartItemId}")
    public String removeCartItem(@PathVariable int cartItemId){
    	cartitemdao.removeCartItem(cartItemId);
    	//delete from cartItem where cartitemid=?
    	return "redirect:/cart/getcart";
    }
	
	@RequestMapping(value="/cart/clearcart")
    public String clearCart(@AuthenticationPrincipal Principal principal){
    	//Get list of cartItems 
    	List<CartItems> cartItems=cartitemdao.getCart(principal.getName());
    	for(CartItems cartItem:cartItems){
    		cartitemdao.removeCartItem(cartItem.getCartItemId());
    		//delete from cartItem where cartItemid=?
    	}
    	return "redirect:/cart/getcart";
    }
	
	@RequestMapping(value="/cart/shippingaddressform")
    public ModelAndView getShippingAddressForm(@AuthenticationPrincipal Principal principal){
		ModelAndView mv = new ModelAndView("page");
    	
    	String email=principal.getName();
    	User user=cartitemdao.getUser(email);
    	Customer customer=user.getCustomer();
    	ShippingAddress shippingAddress=customer.getShippingAddress();
    	mv.addObject("shippingaddress",shippingAddress);
    	mv.addObject("userClickPlaceOrder", true);
    	return mv;
    }
	
	@RequestMapping(value="/cart/createOrder")
	public ModelAndView getOrderDetails(@AuthenticationPrincipal Principal principal ) {
		ModelAndView mv = new ModelAndView("page");
		
		String email = principal.getName();
		User user=cartitemdao.getUser(email);
    	Customer customer=user.getCustomer();
		List<CartItems> cartItems=cartitemdao.getCart(email);
		ShippingAddress shippingAddress=customer.getShippingAddress();
    	mv.addObject("shippingaddress",shippingAddress);
		mv.addObject("cartItems", cartItems);
		mv.addObject("msg", "Order Placed Sucessfully");
		mv.addObject("userClickFinalOrder", true);
		return mv;
	}
	
	
}
