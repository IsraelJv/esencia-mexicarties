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
@Table(name = "category")
public class Category {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "category_id")
    private int id;

	@Column(name = "name_category", nullable = false)
	private String name_category;
	
	//Relationships
	@OneToMany(mappedBy = "category")
	private Set<Product> product;

    // Constructor vacío (necesario para JPA)
    public Category() {
    }

	public Category(int id, String name_category) {
		super();
		this.id = id;
		this.name_category = name_category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName_category() {
		return name_category;
	}

	public void setName_category(String name_category) {
		this.name_category = name_category;
	}

    
}
