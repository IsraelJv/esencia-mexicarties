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
@Table( name = "comment")
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "comment_id")
	private int id;
	
	@Column(name = "comment", nullable = false)
	private String comment;
	
	@Column(name = "email", nullable = false)
	private String email;
	
	@Column(name = "name_user", nullable = false)
	private String name_user;
	
	
	//Relationships
	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	//Constructor vacío
	public Comment() {}

	public Comment(int id, String comment, String email, String name_user, int user_id) {
		super();
		this.id = id;
		this.comment = comment;
		this.email = email;
		this.name_user = name_user;
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName_user() {
		return name_user;
	}

	public void setName_user(String name_user) {
		this.name_user = name_user;
	}

	

}
