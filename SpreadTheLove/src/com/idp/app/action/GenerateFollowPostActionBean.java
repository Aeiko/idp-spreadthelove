package com.idp.app.action;

import java.util.List;

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
		
		user = userDao.findByUsername(getContext().getUser().getUsername());
		
		message = messageDao.findById(messageID);
		
		if (!hasFollowed(messageID)){
			Follow follow = new Follow(user,message);
		
			user.addFollow(follow);
		} else {
			List<Follow> follows = followDao.read();
			for(Follow f: follows){
				if (f.getUser().getId().equals(user.getId())
						&& f.getMessage().getId() == Integer.parseInt(messageID)){
					user.removeFollow(f);
					message.removeFollow(f);
					followDao.delete(f);
				}
			}
		}
		userDao.save(user);
		userDao.commit();
	}
	
	public boolean hasFollowed(String messageId) {
		User user = getContext().getUser();
		
		List<Follow> follows = followDao.read();
		for(Follow f: follows){
			if (f.getUser().getId().equals(user.getId())
					&& f.getMessage().getId() == Integer.parseInt(messageId)){
				return true;
			}
		}
		return false;
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
