package com.ecommerce.HerenciaMexicarties.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ecommerce.HerenciaMexicarties.models.Address;


@Repository
public interface AddressRepository extends JpaRepository<Address, Integer>{
	
}


