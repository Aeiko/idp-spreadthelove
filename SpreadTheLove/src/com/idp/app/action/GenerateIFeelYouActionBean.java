package com.idp.app.action;

import com.idp.app.model.Activity;
import com.idp.app.model.Feel;
import com.idp.app.model.Follow;
import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/generateifeelyou.action")
public class GenerateIFeelYouActionBean extends BaseActionBean{
	
	private String messageID;
	private User user;
	private Message message;
	
	public String getMessageID() {
		return messageID;
	}

	public void setMessageID(String messageID) {
		this.messageID = messageID;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	@DefaultHandler
	public void ifeelyou(){
		
		System.out.println("hello!");
		user = userDao.findByUsername(getContext().getUser().getUsername());
		
		System.out.println(user.getUsername());
		
		System.out.println(messageID);
		message = messageDao.findById(messageID);
		System.out.println(message.getContent());
		
		Feel feel = new Feel(user,message);
		System.out.println(feel.getMessage().getContent());
		System.out.println(feel.getUser().getUsername());
		user.addFeel(feel);
		
		Activity activity = new Activity();
		activity.setDescription("You have felt "+user.getDisplayName()+"'s post on '"+message.getTitle()+"'.");
		user.addActivity(activity);
		
		userDao.save(user);
		userDao.commit();
	}
	
}
