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

import com.ecommerce.HerenciaMexicarties.models.Handicraftsman;
import com.ecommerce.HerenciaMexicarties.service.HandicraftsmanService;


@RestController
@CrossOrigin(origins="*")
@RequestMapping("/api/handicraftsmans/")
public class HandicraftsmanController {

	@Autowired
	private HandicraftsmanService handicraftsmanService;
	
	//get
	@GetMapping
	public List<Handicraftsman> getAllHandicraftsmans(){
		return handicraftsmanService.findAllHandicraftsmans();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Handicraftsman> getHandicraftsmanById(@PathVariable Integer id){
		return handicraftsmanService.findHandicraftsmanById(id)
				.map(ResponseEntity::ok)
				.orElse(ResponseEntity.notFound().build()); //Método para regresar info si el id ingresado no existe o si
	}
	//post
	@PostMapping
	public Handicraftsman createHandicraftsman (@RequestBody Handicraftsman handicraftsman) {
		return handicraftsmanService.saveHandicraftsman(handicraftsman);
	}
	//put
	
	//delete
	@DeleteMapping("{id}")
	public ResponseEntity<Void> deleteHandicraftsman(@PathVariable Integer id){
		return handicraftsmanService.findHandicraftsmanById(id)
				.map(handicraftsman-> {
					handicraftsmanService.deleteHandicraftsman(handicraftsman.getId());
					return ResponseEntity.ok().<Void>build();
					})
					.orElse(ResponseEntity.notFound().build());
	}
}
