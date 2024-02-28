package com.ecommerce.HerenciaMexicarties.repositories;
import org.springframework.data.jpa.repository.JpaRepository;
import com.ecommerce.HerenciaMexicarties.models.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
