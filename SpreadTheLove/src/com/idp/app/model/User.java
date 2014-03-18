package com.idp.app.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
public class User extends ModelBase{
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy="user")
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Message> messages = new ArrayList<Message>();
	
    @OneToMany(cascade = CascadeType.ALL, mappedBy="user")
    @Fetch(value = FetchMode.SUBSELECT)
    private List<Follow> follows = new ArrayList<Follow>();
    
	@OneToMany(cascade = CascadeType.ALL, mappedBy="user")
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Feel> feels = new ArrayList<Feel>();
	
	private String username;
	private String password;
	private String displayName;
	private String type = "child"; // child or counsellor
    
	public List<Message> getMessages() {
		return messages;
	}
	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}
	public List<Follow> getFollows() {
		return follows;
	}
	public void setFollows(List<Follow> follows) {
		this.follows = follows;
	}
	public List<Feel> getFeels() {
		return feels;
	}
	public void setFeels(List<Feel> feels) {
		this.feels = feels;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public void addFollow(Follow follow) { 
		//prevent endless loop
		if (follows.contains(follow))
			return;
		//add new cashout
		follows.add(follow);
		//set myself into the cashout
		follow.setUser(this);
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
		feel.setUser(this);
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