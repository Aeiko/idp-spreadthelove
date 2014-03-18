package com.idp.app.action;

import com.idp.app.model.Follow;
import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/generatefollow.action")
public class GenerateFollowPostActionBean extends BaseActionBean {

	private String messageID;
	private User user;
	private Message message;
	
	@DefaultHandler
	public void follow(){
		
		System.out.println("hello!");
		user = userDao.findByUsername(getContext().getUser().getUsername());
		
		System.out.println(user.getUsername());
		
		System.out.println(messageID);
		message = messageDao.findById(messageID);
		System.out.println(message.getContent());
		
		Follow follow = new Follow(user,message);
		System.out.println(follow.getMessage().getContent());
		System.out.println("themessage is"+follow.getMessage().getId());
		
		user.addFollow(follow);
		System.out.println(follow.getUser().getUsername());
		userDao.save(user);
		userDao.commit();
		
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

	public String getMessageID() {
		return messageID;
	}

	public void setMessageID(String messageID) {
		this.messageID = messageID;
	}
}
