package com.ecommerce.HerenciaMexicarties.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ecommerce.HerenciaMexicarties.models.Order;
import com.ecommerce.HerenciaMexicarties.repositories.OrderRepository;

@Service
public class OrderService {

	@Autowired
	private OrderRepository orderRepository;
	
	//get
	public List<Order> findAllOrders(){
		return orderRepository.findAll();
	}
	
	public Optional <Order> findOrderById (Integer id){
		return orderRepository.findById(id); //Para evitar el error se puede castear (long) se coloca esto
	}
	//post
	public Order saveOrder(Order order) {
		return orderRepository.save(order);
	}
	//put
	//delete
	public void deleteOrder(Integer id) {
		orderRepository.deleteById(id);
	}

}
