package com.idp.app.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity 
public class Feel extends ModelBase{
	
	@ManyToOne(optional = true, cascade=CascadeType.ALL)
	@JoinColumn(name = "user", referencedColumnName = "id")
	private User user;
	
	@ManyToOne(optional = true, cascade=CascadeType.ALL)
	@JoinColumn(name = "message", referencedColumnName = "id")
	private Message message;
	
	public Feel(){}
	
	public Feel(User user, Message message){
		this.user = user;
		this.message = message;
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
			oldUser.removeFeel(this);
		
		if (user != null)
			user.addFeel(this);
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
			oldMessage.removeFeel(this);
		
		if (message != null)
			message.addFeel(this);
	}
	
	private boolean sameAsFormer(User newUser){
		return user == null? newUser == null : user.equals(newUser);
	}
	
	private boolean sameAsFormerMessage(Message newMessage){
		return message == null? newMessage == null : message.equals(newMessage);
	}
}