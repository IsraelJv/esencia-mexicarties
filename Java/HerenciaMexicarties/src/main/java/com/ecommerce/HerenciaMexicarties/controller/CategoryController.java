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
import com.ecommerce.HerenciaMexicarties.models.Category;
import com.ecommerce.HerenciaMexicarties.service.CategoryService;



@RestController
@CrossOrigin(origins="*")
@RequestMapping("/api/categories/")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	//get
	@GetMapping
	public List<Category> getAllCategories(){
		return categoryService.findAllCategories();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Category> getCategoryById(@PathVariable Integer id){
		return categoryService.findCategoryById(id)
				.map(ResponseEntity::ok)
				.orElse(ResponseEntity.notFound().build()); //Método para regresar info si el id ingresado no existe o si
	}
	//post
	@PostMapping
	public Category createCategory (@RequestBody Category category) {
		return categoryService.saveCategory(category);
	}
	//put
	
	//delete
	@DeleteMapping("{id}")
	public ResponseEntity<Void> deleteCategory(@PathVariable Integer id){
		return categoryService.findCategoryById(id)
				.map(category-> {
					categoryService.deleteCategory(category.getId());
					return ResponseEntity.ok().<Void>build();
					})
					.orElse(ResponseEntity.notFound().build());
	}
}
