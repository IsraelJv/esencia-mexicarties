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
@Table(name="address")
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "address_id")
	private int id;

	@Column(name = "address", nullable = false, length = 45)
	private String address;

	@Column(name = "num_int", length = 45)
	private String num_int;

	@Column(name = "num_ext", nullable = false, length = 45)
	private int num_ext;

	@Column(name = "city", nullable = false, length = 45)
	private String city;
	
	@Column(name = "country", nullable = false, length = 45)
	private String country;
	
	@Column(name = "zip_code", nullable = false, length = 45)
	private int zip_code;
	
	//Relationships
	@OneToMany(mappedBy = "address")
	private Set<AddressHasUser> addressHasUser;
	
	public Address() {
		// default
	}

	public Address(String address, String num_int, int num_ext, String city, String country, int zip_code) {
		this.address = address;
		this.num_int = num_int;
		this.num_ext = num_ext;
		this.city = city;
		this.country = country;
		this.zip_code = zip_code;
	}
	
	public Address(int id, String address, String num_int, int num_ext, String city, String country, int zip_code) {
		super();
		this.id = id;
		this.address = address;
		this.num_int = num_int;
		this.num_ext = num_ext;
		this.city = city;
		this.country = country;
		this.zip_code = zip_code;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNum_int() {
		return num_int;
	}

	public void setNum_int(String num_int) {
		this.num_int = num_int;
	}

	public int getNum_ext() {
		return num_ext;
	}

	public void setNum_ext(int num_ext) {
		this.num_ext = num_ext;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getZip_code() {
		return zip_code;
	}

	public void setZip_code(int zip_code) {
		this.zip_code = zip_code;
	}
}
