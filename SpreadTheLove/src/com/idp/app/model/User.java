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
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy="user")
	@Fetch(value = FetchMode.SUBSELECT)
	private List<Activity> activities = new ArrayList<Activity>();
	
	private String username;
	private String password;
	private String displayName;
	private String type = "child"; // child or counsellor
    
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
		
		if (follows.contains(follow))
			return;
		
		follows.add(follow);
		
		follow.setUser(this);
	}
	public void removeFollow(Follow follow) {
		
		if (!follows.contains(follow))
			return;
		
		follows.remove(follow);
		
		follow.setUser(null);
	}
	
	public void addFeel(Feel feel) { 
		
		if (feels.contains(feel))
			return;
		
		feels.add(feel);
		
		feel.setUser(this);
	}
	
	public void removeFeel(Feel feel) {
		
		if (!feels.contains(feel))
			return;
		
		feels.remove(feel);
		
		feel.setUser(null);
	}
	
	public void addMessage(Message message) { 
		
		if (messages.contains(message))
			return;
		
		messages.add(message);
		
		message.setUser(this);
	}
	
	public void removeMessage(Message message) {
		
		if (!messages.contains(message))
			return;
		
		messages.remove(message);
	
		message.setUser(null);
	}
	
	public void addActivity(Activity activity) { 
		
		if (activities.contains(activity))
			return;
		
		activities.add(activity);
		
		activity.setUser(this);
	}
	
	public void removeActivity(Activity activity) {
		
		if (!activities.contains(activity))
			return;
		
		activities.remove(activity);
	
		activity.setUser(null);
	}


}