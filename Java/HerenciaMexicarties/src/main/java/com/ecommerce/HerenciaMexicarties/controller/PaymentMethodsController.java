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
import com.ecommerce.HerenciaMexicarties.models.PaymentMethods;
import com.ecommerce.HerenciaMexicarties.service.PaymentMethodsService;



@RestController
@CrossOrigin(origins="*")
@RequestMapping("/api/PaymentMethods/")
public class PaymentMethodsController {

	@Autowired
	private PaymentMethodsService paymentMethodsService;
	
	//get
	@GetMapping
	public List<PaymentMethods> getAllOrderPaymentMethodss(){
		return paymentMethodsService.findAllPaymentMethods();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<PaymentMethods> getPaymentMethodsById(@PathVariable Integer id){
		return paymentMethodsService.findPaymentMethodsById(id)
				.map(ResponseEntity::ok)
				.orElse(ResponseEntity.notFound().build()); //Método para regresar info si el id ingresado no existe o si
	}
	//post
	@PostMapping
	public PaymentMethods createPaymentMethods (@RequestBody PaymentMethods paymentMethods) {
		return paymentMethodsService.savePaymentMethods(paymentMethods);
	}
	//put
	
	//delete
	@DeleteMapping("{id}")
	public ResponseEntity<Void> deletePaymentMethods(@PathVariable Integer id){
		return paymentMethodsService.findPaymentMethodsById(id)
				.map(paymentMethods-> {
					paymentMethodsService.deletePaymentMethods(paymentMethods.getId());
					return ResponseEntity.ok().<Void>build();
					})
					.orElse(ResponseEntity.notFound().build());
	}
}
