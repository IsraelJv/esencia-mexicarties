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

import com.ecommerce.HerenciaMexicarties.models.Comment;
import com.ecommerce.HerenciaMexicarties.service.CommentService;


@RestController
@CrossOrigin(origins="*")
@RequestMapping("/api/comments/")
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	//get
	@GetMapping
	public List<Comment> getAllComments(){
		return commentService.findAllComments();
	}
	
	@GetMapping("{id}")
	public ResponseEntity<Comment> getCommentById(@PathVariable Integer id){
		return commentService.findCommentById(id)
				.map(ResponseEntity::ok)
				.orElse(ResponseEntity.notFound().build()); //Método para regresar info si el id ingresado no existe o si
	}
	//post
	@PostMapping
	public Comment createComment (@RequestBody Comment comment) {
		return commentService.saveComment(comment);
	}
	//put
	
	//delete
	@DeleteMapping("{id}")
	public ResponseEntity<Void> deleteOrder(@PathVariable Integer id){
		return commentService.findCommentById(id)
				.map(comment-> {
					commentService.deleteComment(comment.getId());
					return ResponseEntity.ok().<Void>build();
					})
					.orElse(ResponseEntity.notFound().build());
	}

}
