package com.idp.app.model;

import java.util.ArrayList;

public class Dao {
	private ArrayList<User> users = new ArrayList<User>();
	private ArrayList<Message> messages = new ArrayList<Message>();
	private ArrayList<Feel> feels = new ArrayList<Feel>();
	private ArrayList<Follow> follows = new ArrayList<Follow>();
	
	public ArrayList<User> getUsers() {
		return users;
	}
	public void setUsers(ArrayList<User> users) {
		this.users = users;
	}
	public ArrayList<Message> getMessages() {
		return messages;
	}
	public void setMessages(ArrayList<Message> messages) {
		this.messages = messages;
	}
	public ArrayList<Feel> getFeels() {
		return feels;
	}
	public void setFeels(ArrayList<Feel> feels) {
		this.feels = feels;
	}
	public ArrayList<Follow> getFollows() {
		return follows;
	}
	public void setFollows(ArrayList<Follow> follows) {
		this.follows = follows;
	}	
}