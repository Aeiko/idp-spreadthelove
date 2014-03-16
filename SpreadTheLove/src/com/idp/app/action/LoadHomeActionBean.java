package com.idp.app.action;

import java.util.ArrayList;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/home.action")
public class LoadHomeActionBean extends BaseActionBean{
	
	private String username;
	private String password;
	private User user;
	private ArrayList<Message> mList;
	
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

	public ArrayList<Message> getmList() {
		return mList;
	}

	public void setmList(ArrayList<Message> mList) {
		this.mList = mList;
	}

	
	@DefaultHandler
	public Resolution view(){
		mList = (ArrayList<Message>)getContext().getRequest().getAttribute("mList");
		return new ForwardResolution("/home.jsp");
	}
}
