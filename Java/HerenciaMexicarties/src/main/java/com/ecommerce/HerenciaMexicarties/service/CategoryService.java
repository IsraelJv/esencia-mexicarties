package com.ecommerce.HerenciaMexicarties.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ecommerce.HerenciaMexicarties.models.Category;
import com.ecommerce.HerenciaMexicarties.repositories.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository categoryRepository;
	
	//get
	public List<Category> findAllCategories(){
		return categoryRepository.findAll();
	}
	
	public Optional <Category> findCategoryById (Integer id){
		return categoryRepository.findById(id); //Para evitar el error se puede castear (long) se coloca esto
	}
	//post
	public Category saveCategory(Category category) {
		return categoryRepository.save(category);
	}
	//put
	//delete
	public void deleteCategory(Integer id) {
		categoryRepository.deleteById(id);
	}

}
