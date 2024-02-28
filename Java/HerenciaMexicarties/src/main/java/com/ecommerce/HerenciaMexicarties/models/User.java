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
@Table(name = "user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int id;
	
	@Column(name = "email_user", nullable = false, length = 45, unique = true)
	private String email_user;
	
	@Column(name = "name_user", nullable = false, length = 45)
	private String name_user;
	
	@Column(name = "password_user", nullable = false, length = 45)
	private String password_user;
	
	@Column(name = "phone_user", nullable = false, length = 45)
	private String phone_user;
	
	@Column(name = "type_user", nullable = false, length = 45)
	private String type_user;

	// Relationships
	@OneToMany(mappedBy = "user")
	private Set<AddressHasUser> adressHasUser;
	
	@OneToMany(mappedBy = "user")
	private Set<Order> order;
	
	@OneToMany(mappedBy = "user")
	private Set<Comment> comment;
	
	
	//Constructor
	public User() {
		//default
	}
	
	public User(String email_user, String name_user, String password_user, String phone_user, String type_user) {
		this.email_user = email_user;
		this.name_user = name_user;
		this.password_user = password_user;
		this.phone_user = phone_user;
		this.type_user = type_user;
	}
	
	public User(int id, String email_user, String name_user, String password_user, String phone_user, String type_user) {
		super();
		this.id = id;
		this.email_user = email_user;
		this.name_user = name_user;
		this.password_user = password_user;
		this.phone_user = phone_user;
		this.type_user = type_user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail_user() {
		return email_user;
	}

	public void setEmail_user(String email_user) {
		this.email_user = email_user;
	}

	public String getName_user() {
		return name_user;
	}

	public void setName_user(String name_user) {
		this.name_user = name_user;
	}

	public String getPassword_user() {
		return password_user;
	}

	public void setPassword_user(String password_user) {
		this.password_user = password_user;
	}

	public String getPhone_user() {
		return phone_user;
	}

	public void setPhone_user(String phone_user) {
		this.phone_user = phone_user;
	}

	public String getType_user() {
		return type_user;
	}

	public void setType_user(String type_user) {
		this.type_user = type_user;
	}
}
