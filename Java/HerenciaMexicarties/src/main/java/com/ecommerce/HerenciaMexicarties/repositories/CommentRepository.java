package com.ecommerce.HerenciaMexicarties.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ecommerce.HerenciaMexicarties.models.Comment;


public interface CommentRepository extends JpaRepository<Comment, Integer>{

}
