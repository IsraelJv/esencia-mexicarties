package com.ecommerce.HerenciaMexicarties.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ecommerce.HerenciaMexicarties.models.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
