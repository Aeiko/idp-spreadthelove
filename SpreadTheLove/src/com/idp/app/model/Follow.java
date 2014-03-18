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
		//prevent endless loop
		if (sameAsFormer(user))
			return;
		//set new company
		User oldUser = this.user;
		this.user = user;
		//remove from old company
		if (oldUser != null)
			oldUser.removeFollow(this);
		//set myself into new company
		if (user != null)
			user.addFollow(this);
	}
	
	public Message getMessage() {
		return message;
	}
	
	public void setMessage(Message message) {
		//prevent endless loop
		if (sameAsFormerMessage(message))
			return;
		//set new company
		Message oldMessage = this.message;
		this.message = message;
		//remove from old company
		if (oldMessage != null)
			oldMessage.removeFollow(this);
		//set myself into new company
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