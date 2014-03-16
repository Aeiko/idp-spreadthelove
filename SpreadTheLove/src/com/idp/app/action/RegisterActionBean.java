package com.idp.app.action;

import java.util.ArrayList;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.action.UrlBinding;
import net.sourceforge.stripes.controller.FlashScope;

@UrlBinding("/register.action")
@SessionScope
public class RegisterActionBean extends BaseActionBean{
	private String username;
	private String password;
	private User user;
	private ArrayList<Message> mList;
	
	public Resolution register(){
		
		FlashScope.getCurrent(getContext().getRequest(), true).put(this);
		user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		Message m1 = new Message();
		m1.setContent("Why is the sky blue? And orange in the evening!");
		m1.setTitle("Why is the sky so colourful?");
		m1.setId(11999);
		
		Message m2 = new Message();
		m2.setContent("MY FATHER THROWS STUFF AT ME EVERYDAY. One time, he threw the remote controller so hard at me, it cut my forehead. Please help me!");
		m2.setTitle("My father is a monster");
		m2.setId(345678);
		
		Message m3 = new Message();
		m3.setContent("MY MOM slaps me EVERYDAY. One time, she slapped me so hard, I thought I met my maker. hurhurhur :(");
		m3.setTitle("My mom is a monster");
		m3.setId(345678);
		
		mList = dao.getMessages();
		mList.add(m1);
		mList.add(m2);
		mList.add(m3);
		
		System.out.println(mList.size());
		dao.setMessages(mList);
		
		getContext().setUser(user);
		getContext().getRequest().setAttribute("mList", mList);
		return new ForwardResolution("/home.action");

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

	public ArrayList<Message> getmList() {
		return mList;
	}

	public void setmList(ArrayList<Message> mList) {
		this.mList = mList;
	}

	public void setUser(User user) {
		this.user = user;
	}


}
