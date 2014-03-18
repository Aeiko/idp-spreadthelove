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
		//prevent endless loop
		if (sameAsFormer(user))
			return;
		//set new company
		User oldUser = this.user;
		this.user = user;
		//remove from old company
		if (oldUser != null)
			oldUser.removeMessage(this);
		//set myself into new company
		if (user != null)
			user.addMessage(this);
	}
	
	private boolean sameAsFormer(User newUser){
		return user == null? newUser == null : user.equals(newUser);
	}
	
	public void addFollow(Follow follow) { 
		//prevent endless loop
		if (follows.contains(follow))
			return;
		//add new cashout
		follows.add(follow);
		//set myself into the cashout
		follow.setMessage(this);
	}
	public void removeFollow(Follow follow) {
		//prevent endless loop
		if (!follows.contains(follow))
			return;
		//remove the cashout
		follows.remove(follow);
		//remove myself from the cashout
		follow.setUser(null);
	}
	
	public void addFeel(Feel feel) { 
		//prevent endless loop
		if (feels.contains(feel))
			return;
		//add new cashout
		feels.add(feel);
		//set myself into the cashout
		feel.setMessage(this);
	}
	public void removeFeel(Feel feel) {
		//prevent endless loop
		if (!feels.contains(feel))
			return;
		//remove the cashout
		feels.remove(feel);
		//remove myself from the cashout
		feel.setUser(null);
	}
}