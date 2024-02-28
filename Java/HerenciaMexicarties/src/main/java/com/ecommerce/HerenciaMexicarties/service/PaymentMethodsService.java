package com.ecommerce.HerenciaMexicarties.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.HerenciaMexicarties.models.PaymentMethods;
import com.ecommerce.HerenciaMexicarties.repositories.PaymentMethodsRepository;


@Service
public class PaymentMethodsService {

	
	@Autowired
	private PaymentMethodsRepository paymentMethodsRepository;
	
	//get
	public List<PaymentMethods> findAllPaymentMethods(){
		return paymentMethodsRepository.findAll();
	}
	
	public Optional <PaymentMethods> findPaymentMethodsById (Integer id){
		return paymentMethodsRepository.findById(id); //Para evitar el error se puede castear (long) se coloca esto
	}
	//post
	public PaymentMethods savePaymentMethods(PaymentMethods paymentMethods) {
		return paymentMethodsRepository.save(paymentMethods);
	}
	//put
	//delete
	public void deletePaymentMethods(Integer id) {
		paymentMethodsRepository.deleteById(id);
	}
}
