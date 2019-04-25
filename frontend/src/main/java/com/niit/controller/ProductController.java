package com.niit.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="/product")
	public String showManageProduct(Model m) {
		
		Product product = new Product();
		m.addAttribute("product", product);
		
		List<Product> listProduct = productDAO.listProduct();
		m.addAttribute("productList", listProduct);
		
		List<Category> listCategory = categoryDAO.listCategory();
		m.addAttribute("categoryList", this.getCategoryList(listCategory));
		
		List<Supplier> listSupplier = supplierDAO.listSupplier();
		m.addAttribute("supplierList", this.getSupplierList(listSupplier));
		
		return "Product";
	}
	
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product product,Model m) {
		
		/*
		 * System.out.println("Product ID:"+product.getProductID());
		 * System.out.println("Product Name:"+product.getProductName());
		 * System.out.println("Price:"+product.getPrice());
		 * System.out.println("Stock:"+product.getQuantity());
		 */
		
		productDAO.addProduct(product);
		
		Product product1 = new Product();
		m.addAttribute("product", product1);
		
		List<Product> listProduct = productDAO.listProduct();
		m.addAttribute("productList", listProduct);
		
		List<Category> listCategory = categoryDAO.listCategory();
		m.addAttribute("categoryList", this.getCategoryList(listCategory));
		
		List<Supplier> listSupplier = supplierDAO.listSupplier();
		m.addAttribute("supplierList", this.getSupplierList(listSupplier));
		
		return "Product";
	}
	
	public LinkedHashMap<Integer,String> getCategoryList(List<Category> listCategory){
		
		LinkedHashMap<Integer,String> categoryData = new LinkedHashMap<Integer,String>();
		
		int count1 = 0;
		while(count1<listCategory.size()) {
			categoryData.put(listCategory.get(count1).getCategoryID(), listCategory.get(count1).getCategoryName());
			count1++;
		}
		
		return categoryData;
	}
	
	public LinkedHashMap<Integer,String> getSupplierList(List<Supplier> listSupplier){
		
		LinkedHashMap<Integer,String> supplierData = new LinkedHashMap<Integer,String>();
		
		int count2 = 0;
		while(count2<listSupplier.size()) {
			supplierData.put(listSupplier.get(count2).getSupplierID(), listSupplier.get(count2).getSupplierName());
			count2++;
		}
		
		return supplierData;
		
	}
	
	@RequestMapping(value="/deleteProduct/{productID}")
	public String deleteProduct(@PathVariable("productID")int productID,Model m) {
		
		Product product = productDAO.getProduct(productID);
		productDAO.deleteProduct(product);
		
		Product product1 = new Product();
		m.addAttribute("product", product1);
		
		List<Product> listProduct = productDAO.listProduct();
		m.addAttribute("productList", listProduct);
		
		List<Category> listCategory = categoryDAO.listCategory();
		m.addAttribute("categoryList", this.getCategoryList(listCategory));
		
		List<Supplier> listSupplier = supplierDAO.listSupplier();
		m.addAttribute("supplierList", this.getSupplierList(listSupplier));
		
		return "Product";
	}
	
	@RequestMapping(value="/editProduct/{productID}")
	public String editProduct(@PathVariable("productID")int productID,Model m) {
		
		Product product = productDAO.getProduct(productID);
		m.addAttribute("productData",product);
		
		List<Product> listProduct = productDAO.listProduct();
		m.addAttribute("productList", listProduct);
		
		List<Category> listCategory = categoryDAO.listCategory();
		m.addAttribute("categoryList", this.getCategoryList(listCategory));
		
		List<Supplier> listSupplier = supplierDAO.listSupplier();
		m.addAttribute("supplierList", this.getSupplierList(listSupplier));
		
		return "UpdateProduct";
	}
	
	@RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	public String updateProduct(@RequestParam("productID")int productID,@RequestParam("productName")String productName,@RequestParam("productDesc")String productDesc,@RequestParam("price")int price,@RequestParam("quantity")int stock,Model m) {
		
		Product product = productDAO.getProduct(productID);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setPrice(price);
		product.setQuantity(stock);
		
		productDAO.updateProduct(product);
		m.addAttribute("product", product);
		
		List<Product> listProduct = productDAO.listProduct();
		m.addAttribute("productList", listProduct);
		
		return "Product";
		
	}
	
}
