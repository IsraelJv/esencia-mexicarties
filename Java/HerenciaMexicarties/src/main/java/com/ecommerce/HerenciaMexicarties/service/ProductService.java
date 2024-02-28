package com.ecommerce.HerenciaMexicarties.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.HerenciaMexicarties.models.Product;
import com.ecommerce.HerenciaMexicarties.repositories.ProductRepository;

@Service
public class ProductService {

	@Autowired
	private ProductRepository productRepository;
	
	//get
	public List<Product> findAllProducts(){
		return productRepository.findAll();
	}
	
	public Optional <Product> findProductById (Integer id){
		return productRepository.findById(id); //Para evitar el error se puede castear (long) se coloca esto
	}
	//post
	public Product saveProduct(Product product) {
		return productRepository.save(product);
	}
	//put
	//delete
	public void deleteProduct(Integer id) {
		productRepository.deleteById(id);
	}
}
