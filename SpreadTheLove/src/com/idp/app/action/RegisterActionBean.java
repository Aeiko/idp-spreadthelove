package com.idp.app.action;

import java.util.Random;

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
	
	@DefaultHandler
	public Resolution register(){
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		Random random = new Random();
		
		user.setDisplayName("Anonymous #"+random.nextInt(10000));
		userDao.save(user);
		userDao.commit();

		getContext().setUser(user);
		
		/*User user1 = new User();
		User user2 = new User();
		User user3 = new User();
		
		user1.setUsername("bot1");
		user2.setUsername("bot2");
		user3.setUsername("bot3");
		
		user1.setPassword("bot1");
		user2.setPassword("bot2");
		user3.setPassword("bot3");
		
		user1.setDisplayName("Anonymous #1");
		user2.setDisplayName("Anonymous #2");
		user3.setDisplayName("Anonymous #3");
		
		userDao.save(user1);
		userDao.save(user2);
		userDao.save(user3);
		userDao.commit();
		
		Message m1 = new Message();
		m1.setContent("Why is the sky blue? And orange in the evening!");
		m1.setTitle("Why is the sky so colourful?");
		m1.setUser(user1);
		
		Message m2 = new Message();
		m2.setContent("MY FATHER THROWS STUFF AT ME EVERYDAY. One time, he threw the remote controller so hard at me, it cut my forehead. Please help me!");
		m2.setTitle("My father is a monster");
		m1.setUser(user2);
		
		Message m3 = new Message();
		m3.setContent("MY MOM slaps me EVERYDAY. One time, she slapped me so hard, I thought I met my maker. hurhurhur :(");
		m3.setTitle("My mom is a monster");
		m1.setUser(user3);
		
		messageDao.save(m1);
		messageDao.save(m2);
		messageDao.save(m3);
		messageDao.commit();*/
		
		
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

}