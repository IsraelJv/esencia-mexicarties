package com.ecommerce.HerenciaMexicarties.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ecommerce.HerenciaMexicarties.models.Product;

public interface ProductRepository extends JpaRepository<Product, Integer>{

}
