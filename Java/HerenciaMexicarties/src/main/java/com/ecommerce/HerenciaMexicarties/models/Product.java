package com.ecommerce.HerenciaMexicarties.models;

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

@Entity
@Table(name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "product_id")
	private int id;
	
	@Column(name = "name_product", nullable = false)
	private String name_product;
	
	@Column(name = "url", nullable = false)
	private String url;
	
	@Column(name = "price", nullable = false)
	private Double price;
	
	@Column(name = "stock", nullable = false)
	private int stock;
	
	@Column(name = "size_clothes")
	private String size_clothes;
	
	@Column(name = "product_location", nullable = false)
	private String product_location;
	
	@Column(name = "description", nullable = false)
	private String description;
	
	
	//Relationships
	@ManyToOne
	@JoinColumn(name = "category_id", nullable = false)
	private Category category;
	
	@ManyToOne
	@JoinColumn(name = "handicraftsman_id", nullable = false)
	private Handicraftsman handicraftsman;
	
	@OneToMany(mappedBy = "product")
	private Set<OrderHasProduct> orderHasProduct;
	
	public Product() {}

	public Product(int id, String name_product,String url, Double price, int stock, String size_clothes, String product_location,
			String description, Category category, Handicraftsman handicraftsman) {
		super();
		this.id = id;
		this.name_product = name_product;
		this.url = url;
		this.price = price;
		this.stock = stock;
		this.size_clothes = size_clothes;
		this.product_location = product_location;
		this.description = description;
		this.category = category;
		this.handicraftsman = handicraftsman;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName_product() {
		return name_product;
	}

	public void setName_product(String name_product) {
		this.name_product = name_product;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getSize_clothes() {
		return size_clothes;
	}

	public void setSize_clothes(String size_clothes) {
		this.size_clothes = size_clothes;
	}

	public String getProduct_location() {
		return product_location;
	}

	public void setProduct_location(String product_location) {
		this.product_location = product_location;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Handicraftsman getHandicraftsman() {
		return handicraftsman;
	}

	public void setHandicraftsman(Handicraftsman handicraftsman) {
		this.handicraftsman = handicraftsman;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
