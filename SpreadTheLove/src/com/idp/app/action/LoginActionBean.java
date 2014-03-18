package com.idp.app.action;

import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/login.action")
public class LoginActionBean extends BaseActionBean {
	
	private String username;
	private String password;
	private User user;
	
	@DefaultHandler
	public Resolution login(){
		user = userDao.findByUsername(username);
		getContext().setUser(user);
		if(user.getType().equals("child")){
			return new ForwardResolution("/home.action");	
		} else {
			return new ForwardResolution("/counsellor/home.action");
		}
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
