package com.idp.app.action;

import java.util.List;

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
	
	@DefaultHandler
	public void ifeelyou(){
		
		user = userDao.findByUsername(getContext().getUser().getUsername());
		message = messageDao.findById(messageID);
		if (!hasFelt(messageID)){
			Feel feel = new Feel(user,message);

			user.addFeel(feel);
			Activity activity = new Activity();
			activity.setDescription("You feel for "+message.getUser().getDisplayName()+".");
			user.addActivity(activity);

		} else {
			List<Feel> feels = feelDao.read();
			for(Feel f: feels){
				if (f.getUser().getId().equals(user.getId())
						&& f.getMessage().getId() == Integer.parseInt(messageID)){
					user.removeFeel(f);
					message.removeFeel(f);
					feelDao.delete(f);
					//Activity activity = new Activity();
					//activity.setDescription("You stopped feeling "+user.getDisplayName()+".");
					//user.addActivity(activity);
				}
			}
		}

		userDao.save(user);
		userDao.commit();
	}
	
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

	public boolean hasFelt(String messageId) {
		User user = getContext().getUser();
		
		List<Feel> feels = feelDao.read();
		for(Feel f: feels){
			if (f.getUser() != null){
				if (f.getUser().getId().equals(user.getId())
						&& f.getMessage().getId() == Integer.parseInt(messageId)){
					return true;
				}
			}
		}
		return false;
	}
	
}
