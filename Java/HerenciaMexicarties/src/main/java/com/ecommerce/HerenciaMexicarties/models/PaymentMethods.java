package com.ecommerce.HerenciaMexicarties.models;

import java.util.Set;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="payment_met")
public class PaymentMethods {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="payment_methods_id")
	private int id;
	
	@Column(name = "payment_methods", nullable = false, length = 45)
	private String payment_methods;
	
	//Relationships
	@OneToMany(mappedBy = "paymentMethods")
	private Set<Order> order;
	
	public PaymentMethods() {}

	public PaymentMethods(int id, String payment_methods) {
		super();
		this.id = id;
		this.payment_methods = payment_methods;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPayment_methods() {
		return payment_methods;
	}

	public void setPayment_methods(String payment_methods) {
		this.payment_methods = payment_methods;
	}
	
	

}
