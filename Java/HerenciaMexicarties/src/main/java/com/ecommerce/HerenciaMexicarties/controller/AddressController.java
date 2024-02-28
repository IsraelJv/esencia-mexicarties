package com.ecommerce.HerenciaMexicarties.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ecommerce.HerenciaMexicarties.models.Address;
import com.ecommerce.HerenciaMexicarties.service.AddressService;

@RestController
@CrossOrigin(origins="*")
@RequestMapping("/api/addresses/")
public class AddressController {
	@Autowired
    private AddressService addressService; 
    
	//Get
	public List<Address> getAllAddress(){
		return addressService.findAllAddresses();
	}
	
    @GetMapping("{id}")
    public ResponseEntity<Address> getAddressById(@PathVariable Integer id){ 
        return addressService.findAddressById(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }
    
    @PostMapping
    public Address createAddress(@RequestBody Address address) { 
        return addressService.saveAddress(address);
    }
    
    
    @DeleteMapping("{id}")
    public ResponseEntity<Void> deleteAddress(@PathVariable Integer id){ 
        return addressService.findAddressById(id)
                .map(address -> {
                    addressService.deleteAddress(address.getId());
                    return ResponseEntity.ok().<Void>build();
                })
                .orElse(ResponseEntity.notFound().build());
    }

}
