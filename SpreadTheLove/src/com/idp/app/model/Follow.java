package com.idp.app.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Follow extends ModelBase{
	
	@ManyToOne(optional = true, cascade=CascadeType.ALL)
	@JoinColumn(name = "user", referencedColumnName = "id")
	private User user;
	
	@ManyToOne(optional = true, cascade=CascadeType.ALL)
	@JoinColumn(name = "message", referencedColumnName = "id")
	private Message message;
	
	public Follow(){}
	
	public Follow(User user, Message message){
		setUser(user);
		setMessage(message);
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		
		if (sameAsFormer(user))
			return;
		
		User oldUser = this.user;
		this.user = user;
		
		if (oldUser != null)
			oldUser.removeFollow(this);
		
		if (user != null)
			user.addFollow(this);
	}
	
	public Message getMessage() {
		return message;
	}
	
	public void setMessage(Message message) {
		
		if (sameAsFormerMessage(message))
			return;
		
		Message oldMessage = this.message;
		this.message = message;
		
		if (oldMessage != null)
			oldMessage.removeFollow(this);
		
		if (message != null)
			message.addFollow(this);
	}
	
	private boolean sameAsFormer(User newUser){
		return user == null? newUser == null : user.equals(newUser);
	}
	
	private boolean sameAsFormerMessage(Message newMessage){
		return message == null? newMessage == null : message.equals(newMessage);
	}
}