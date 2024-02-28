package com.ecommerce.HerenciaMexicarties.service;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ecommerce.HerenciaMexicarties.models.User;
import com.ecommerce.HerenciaMexicarties.repositories.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	//get
	public Optional<User> findUserById(Integer id){
		return userRepository.findById(id);
	}
	
	//post
	public User saveUser(User user) {
		return userRepository.save(user);
	}
	
	//delete
	public void deleteUser(Integer id) {
		userRepository.deleteById(id);
	}
}
