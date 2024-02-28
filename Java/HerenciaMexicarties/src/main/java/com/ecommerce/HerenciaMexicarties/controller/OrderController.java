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

import com.ecommerce.HerenciaMexicarties.models.Order;
import com.ecommerce.HerenciaMexicarties.service.OrderService;


@RestController
@CrossOrigin(origins="*")
@RequestMapping("/api/orders/")
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	//get
	@GetMapping
	public List<Order> getAllOrders(){
		return orderService.findAllOrders();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Order> getOrderById(@PathVariable Integer id){
		return orderService.findOrderById(id)
				.map(ResponseEntity::ok)
				.orElse(ResponseEntity.notFound().build()); //Método para regresar info si el id ingresado no existe o si
	}
	//post
	@PostMapping
	public Order createOrder (@RequestBody Order order) {
		return orderService.saveOrder(order);
	}
	//put
	
	//delete
	@DeleteMapping("{id}")
	public ResponseEntity<Void> deleteOrder(@PathVariable Integer id){
		return orderService.findOrderById(id)
				.map(order-> {
					orderService.deleteOrder(order.getId());
					return ResponseEntity.ok().<Void>build();
					})
					.orElse(ResponseEntity.notFound().build());
	}
}
