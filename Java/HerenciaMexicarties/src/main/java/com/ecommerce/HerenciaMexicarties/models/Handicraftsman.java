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
@Table(name="handicraftsman")
public class Handicraftsman {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="handicraftsman_id") //Falta agregarlo en BD
	private int id;
	
	@Column(name = "name_handicraftsman", nullable = false)
	private String name_handicraftsman;
	
	//Relationships
	@OneToMany(mappedBy = "handicraftsman")
	private Set<Product> product;
	
	public Handicraftsman() {}

	public Handicraftsman(int id, String name_handicraftsman) {
		super();
		this.id = id;
		this.name_handicraftsman = name_handicraftsman;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName_handicraftsman() {
		return name_handicraftsman;
	}

	public void setName_handicraftsman(String name_handicraftsman) {
		this.name_handicraftsman = name_handicraftsman;
	}
	
	
}
