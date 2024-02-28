package com.ecommerce.HerenciaMexicarties.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ecommerce.HerenciaMexicarties.models.Product;
import com.ecommerce.HerenciaMexicarties.service.ProductService;



@RestController
@CrossOrigin(origins="*")
@RequestMapping("/api/products/")
public class ProductController {
	@Autowired
	private ProductService productService;
	
	//get
	@GetMapping
	public List<Product> getAllProducts(){
		return productService.findAllProducts();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Product> getProductById(@PathVariable Integer id){
		return productService.findProductById(id)
				.map(ResponseEntity::ok)
				.orElse(ResponseEntity.notFound().build()); //Método para regresar info si el id ingresado no existe o si
	}
	//post
	@PostMapping
	public Product createProduct (@RequestBody Product product) {
		return productService.saveProduct(product);
	}
	//put
	
	//delete
	@DeleteMapping("{id}")
	public ResponseEntity<Void> deleteProduct(@PathVariable Integer id){
		return productService.findProductById(id)
				.map(product-> {
					productService.deleteProduct(product.getId());
					return ResponseEntity.ok().<Void>build();
					})
					.orElse(ResponseEntity.notFound().build());
	}

}
