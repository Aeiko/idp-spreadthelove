package com.idp.app.action;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/preload.action")
public class PreloadActionBean extends BaseActionBean {
	
	@DefaultHandler
	public Resolution preload(){
		
		User user1 = new User();
		user1.setDisplayName("Anonymous #111");
		user1.setPassword("123");
		user1.setType("child");
		user1.setUsername("bot1");
		
		User user2 = new User();
		user2.setDisplayName("Anonymous #115");
		user2.setPassword("123");
		user2.setType("child");
		user2.setUsername("bot1");
		
		User user3 = new User();
		user3.setDisplayName("Anonymous #119");
		user3.setPassword("123");
		user3.setType("child");
		user3.setUsername("bot1");
		
		User counsellor = new User();
		counsellor.setDisplayName("Sarah");
		counsellor.setPassword("Sarah");
		counsellor.setType("counsellor");
		counsellor.setUsername("Sarah");
		
		userDao.save(user1);
		userDao.save(user2);
		userDao.save(user3);
		userDao.save(counsellor);
		
		userDao.commit();
		
		Message m1 = new Message();
		Message m2 = new Message();
		Message m3 = new Message();
		
		m1.setUser(user1);
		m2.setUser(user2);
		m3.setUser(user3);
		
		m1.setTitle("They call me the WITCH");
		m2.setTitle("Why is the sky blue?");
		m3.setTitle("I think I'm in love...");
		
		m1.setContent("My friends throw stones at me and call me a witch. I'm afraid of going to school. What should I do?");
		m2.setContent("Why is the sky blue. I love pink. Why can't it be pink!");
		m3.setContent("I like this pretty girl in my class. The thing is... Im a girl too. Is this normal?");
		
		messageDao.save(m1);
		messageDao.save(m2);
		messageDao.save(m3);
		
		messageDao.commit();
		
		return new ForwardResolution("/index.jsp");
	}
	
}
