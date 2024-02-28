package com.ecommerce.HerenciaMexicarties.models;

import java.time.LocalDateTime;
import java.util.Set;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table( name = "order")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id")
	private int id;
	
	@Column(name = "date_time_order")
	@Temporal (TemporalType.TIMESTAMP)
	private LocalDateTime date_time_order;
	
	@Column(name = "total", nullable = false)
	private Double total;
	
	@Column(name = "num_articles", nullable = false)
	private int num_articles;
	
	
	//Relationships
	@ManyToOne
	@JoinColumn(name = "user_id", nullable = false)
	private User user;
	
	@ManyToOne
	@JoinColumn(name = "payment_methods_id", nullable = false)
	private PaymentMethods paymentMethods;
	
	@OneToMany(mappedBy = "order")
	private Set<OrderHasProduct> orderHasProduct;
	
	public Order() {}

	public Order(int id, LocalDateTime date_time_order, Double total, int num_articles, User user,
			PaymentMethods paymentMethods) {
		super();
		this.id = id;
		this.date_time_order = date_time_order;
		this.total = total;
		this.num_articles = num_articles;
		this.user = user;
		this.paymentMethods = paymentMethods;
	}
	
	//getters&setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public LocalDateTime getDate_time_order() {
		return date_time_order;
	}

	public void setDate_time_order(LocalDateTime date_time_order) {
		this.date_time_order = date_time_order;
	}

	public Double getTotal() {
		return total;
	}

	public void setTotal(Double total) {
		this.total = total;
	}

	public int getNum_articles() {
		return num_articles;
	}

	public void setNum_articles(int num_articles) {
		this.num_articles = num_articles;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public PaymentMethods getPaymentMethods() {
		return paymentMethods;
	}

	public void setPaymentMethods(PaymentMethods paymentMethods) {
		this.paymentMethods = paymentMethods;
	}
	
	
}
