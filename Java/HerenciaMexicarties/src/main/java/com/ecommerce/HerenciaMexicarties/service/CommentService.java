package com.ecommerce.HerenciaMexicarties.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.HerenciaMexicarties.models.Comment;
import com.ecommerce.HerenciaMexicarties.repositories.CommentRepository;

@Service
public class CommentService {

	@Autowired
	private CommentRepository commentRepository;
	
	//get
	public List<Comment> findAllComments(){
		return commentRepository.findAll();
	}
	
	public Optional <Comment> findCommentById (Integer id){
		return commentRepository.findById(id); //Para evitar el error se puede castear (long) se coloca esto
	}
	//post
	public Comment saveComment(Comment comment) {
		return commentRepository.save(comment);
	}
	//put
	//delete
	public void deleteComment(Integer id) {
		commentRepository.deleteById(id);
	}
}
