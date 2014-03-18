package com.idp.app.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
public class Message extends ModelBase{
	
	@ManyToOne(optional = true, cascade=CascadeType.ALL)
	@JoinColumn(name = "user", referencedColumnName = "id")
	private User user;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy="message")
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Follow> follows = new ArrayList<Follow>();
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy="message")
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Feel> feels = new ArrayList<Feel>();
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy="parentMessage")
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Message> comments = new ArrayList<Message>();
	
	@ManyToOne(optional = true, cascade=CascadeType.ALL)
	@JoinColumn(name = "parentMessage", referencedColumnName = "id")
	private Message parentMessage;
	
	private String title;
	private String content;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
			oldUser.removeMessage(this);
		
		if (user != null)
			user.addMessage(this);
	}
	
	public Message getParentMessage() {
		return parentMessage;
	}
	
	public void setParentMessage(Message message) {
		//prevent endless loop
		if (sameAsFormerMessage(message))
			return;
		//set new company
		Message oldParentMessage = this.parentMessage;
		this.parentMessage = message;
		//remove from old company
		if (oldParentMessage != null)
			oldParentMessage.removeComment(this);
		//set myself into new company
		if (message != null)
			message.addComment(this);
	}
	
	private boolean sameAsFormer(User newUser){
		return user == null? newUser == null : user.equals(newUser);
	}
	
	private boolean sameAsFormerMessage(Message newMessage){
		return parentMessage == null? newMessage == null : parentMessage.equals(newMessage);
	}
	
	public void addFollow(Follow follow) { 
		
		if (follows.contains(follow))
			return;
		
		follows.add(follow);
		
		follow.setMessage(this);
	}
	public void removeFollow(Follow follow) {
		if (!follows.contains(follow))
			return;
		follows.remove(follow);
		//remove myself from the cashout
		follow.setMessage(null);
	}
	
	public void addFeel(Feel feel) {
		if (feels.contains(feel))
			return;
		feels.add(feel);
		feel.setMessage(this);
	}
	public void removeFeel(Feel feel) {
		if (!feels.contains(feel))
			return;
		feels.remove(feel);
		//remove myself from the cashout
		feel.setMessage(null);
	}
	
	public void addComment(Message message) { 
		//prevent endless loop
		if (comments.contains(message))
			return;
		//add new cashout
		comments.add(message);
		//set myself into the cashout
		message.setParentMessage(this);
	}
	public void removeComment(Message message) {
		//prevent endless loop
		if (!comments.contains(message))
			return;
		//remove the cashout
		comments.remove(message);
		//remove myself from the cashout
		message.setParentMessage(null);
	}
}