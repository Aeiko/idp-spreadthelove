package com.idp.app.action;

import java.util.ArrayList;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/register.action")
public class RegisterActionBean extends BaseActionBean{
	private String username;
	private String password;
	private User user;
	private ArrayList<Message> mList;
	
	public Resolution register(){
		user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		Message m1 = new Message();
		m1.setContent("Why is the sky blue? And orange in the evening!");
		m1.setTitle("Why is the sky so colourful?");
		m1.setId(11999);
		
		Message m2 = new Message();
		m1.setContent("MY FATHER THROWS STUFF AT ME EVERYDAY. One time, he threw the remote controller so hard at me, it cut my forehead. Please help me!");
		m1.setTitle("My father is a monster");
		m1.setId(345678);
		
		mList = new ArrayList<Message>();
		mList.add(m1);
		mList.add(m2);
		
		dao.setMessages(mList);
	
		
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

	public ArrayList<Message> getmList() {
		return mList;
	}

	public void setmList(ArrayList<Message> mList) {
		this.mList = mList;
	}
}
