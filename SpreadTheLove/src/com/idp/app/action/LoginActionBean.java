package com.idp.app.action;

import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/login.action")
public class LoginActionBean {
	
	private String username;
	private String password;
	private User user;
	
	public Resolution login(){
		user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		return new ForwardResolution("/home.jsp");
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

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
