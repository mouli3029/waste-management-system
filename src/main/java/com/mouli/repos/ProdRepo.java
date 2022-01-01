package com.mouli.repos;

import org.springframework.data.repository.CrudRepository;

import com.mouli.beans.Product;

public interface ProdRepo extends CrudRepository<Product,Integer>{
	public Product findProductByProdid(int id);
}
