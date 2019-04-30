package com.niit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;

@Controller
public class CartController {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@RequestMapping("/addToCart/{productId}")
	public String addToCart(@PathVariable("productId")int productId, @RequestParam("quantity")int quantity, HttpSession session,Model m) 
	{
	
		Product product = productDAO.getProduct(productId);
		
		String username = (String)session.getAttribute("username");
		
		CartItem cartItem = new CartItem();
		cartItem.setProductId(product.getProductID());
		cartItem.setProductName(product.getProductName());
		cartItem.setPrice(product.getPrice());
		cartItem.setQuantity(quantity);
		cartItem.setPstatus("NP");
		cartItem.setUsername(username);
		
		cartDAO.addCartItem(cartItem);
		m.addAttribute("cartItem", cartDAO.listCartItem(username));
		
		return "Cart";
	}
	
	@RequestMapping(value="/updateCartItem/{cartItemId}")
	public String updateCartItem(@PathVariable("cartItemId")int cartItemId,@RequestParam("quantity")int quantity,Model m,HttpSession session) 
	{
		CartItem cartItem = cartDAO.getCartItem(cartItemId);
		cartItem.setQuantity(quantity);
		cartDAO.updateCartItem(cartItem);
		
		String username = (String)session.getAttribute("username");
		m.addAttribute("cartItem", cartDAO.listCartItem(username));
		
		return "Cart";
	}
	
	@RequestMapping(value="/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId")int cartItemId,Model m,HttpSession session) 
	{
		
		CartItem cartItem = cartDAO.getCartItem(cartItemId);
		
		cartDAO.deleteCartItem(cartItem);
		
		String username = (String)session.getAttribute("username");
		m.addAttribute("cartItem", cartDAO.listCartItem(username));
		
		return "Cart";
	}

	
}
