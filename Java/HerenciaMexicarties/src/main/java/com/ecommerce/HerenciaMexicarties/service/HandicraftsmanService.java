package com.ecommerce.HerenciaMexicarties.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.HerenciaMexicarties.models.Handicraftsman;
import com.ecommerce.HerenciaMexicarties.repositories.HandicraftsmanRepository;


@Service
public class HandicraftsmanService {

	@Autowired
	private HandicraftsmanRepository handicraftsmanRepository;
	
	//get
	public List<Handicraftsman> findAllHandicraftsmans(){
		return handicraftsmanRepository.findAll();
	}
	
	public Optional <Handicraftsman> findHandicraftsmanById (Integer id){
		return handicraftsmanRepository.findById(id); //Para evitar el error se puede castear (long) se coloca esto
	}
	//post
	public Handicraftsman saveHandicraftsman(Handicraftsman handicraftsman) {
		return handicraftsmanRepository.save(handicraftsman);
	}
	//put
	//delete
	public void deleteHandicraftsman(Integer id) {
		handicraftsmanRepository.deleteById(id);
	}
}
