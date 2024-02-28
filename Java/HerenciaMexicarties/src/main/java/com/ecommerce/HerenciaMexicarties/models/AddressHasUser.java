package com.ecommerce.HerenciaMexicarties.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="address_has_user")
public class AddressHasUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="address_has_user_id")//Falta agregarlo en BD
	private int id;
	
	//Relationships
	@ManyToOne
	@JoinColumn(name = "address_id")
	private Address address;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	public AddressHasUser() {}

	public AddressHasUser(int id, User user, Address address) {
		super();
		this.id = id;
		this.user = user;
		this.address = address;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
