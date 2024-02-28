package com.ecommerce.HerenciaMexicarties.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ecommerce.HerenciaMexicarties.models.Order;

public interface OrderRepository extends JpaRepository<Order, Integer> {

}
