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
		this.user = user;
		this.message = message;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Message getMessage() {
		return message;
	}
	public void setMessage(Message message) {
		this.message = message;
	}
}