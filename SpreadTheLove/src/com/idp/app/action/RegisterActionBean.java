package com.idp.app.action;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/register.action")
@SessionScope
public class RegisterActionBean extends BaseActionBean{
	private String username;
	private String password;
	private String displayName;

	public Resolution register(){
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setDisplayName(displayName);
		
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
		
		userDao.save(user);
		userDao.commit();
		
		messageDao.save(m1);
		messageDao.save(m2);
		messageDao.save(m3);
		messageDao.commit();
		
		getContext().setUser(user);
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

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
}