package com.ecommerce.HerenciaMexicarties.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ecommerce.HerenciaMexicarties.models.Address;
import com.ecommerce.HerenciaMexicarties.repositories.AddressRepository;

@Service
public class AddressService {

	@Autowired
    private AddressRepository addressRepository;
    
    //get
	public List<Address> findAllAddresses(){
		return addressRepository.findAll();
	}
	
    public Optional<Address> findAddressById(Integer id){
        return addressRepository.findById(id);
    }
    
    //post
    public Address saveAddress(Address address) {
        return addressRepository.save(address);
    }
    
    //put
    //pending
    
    //delete
    public void deleteAddress(Integer id) {
        addressRepository.deleteById(id);
    }
}
