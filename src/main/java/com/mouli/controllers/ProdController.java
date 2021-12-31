package com.mouli.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.querydsl.QPageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.mouli.beans.Product;
import com.mouli.repos.ProdRepo;

@Controller
public class ProdController {
	@Autowired
	private ProdRepo prodrepo;
	
	
	@GetMapping("/products")
	public String products(ModelMap model) {
		//long count = prodrepo.count();
		Iterable<Product> prodsiter = prodrepo.findAll();
		
	    List<Product> products = new ArrayList<Product>();
	    
	    for(Product product:prodsiter) {
	        products.add(product);
	    }
	    model.addAttribute("products",products);
		return "products";
	}
	
}
