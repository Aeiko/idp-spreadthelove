package com.idp.app.action;

import java.util.List;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

import com.idp.app.model.Feel;
import com.idp.app.model.Follow;
import com.idp.app.model.Message;
import com.idp.app.model.User;


@UrlBinding("/individualpost.action")
public class LoadIndividualPostActionBean extends BaseActionBean {
	
	private String messageID;
	private Message message;
	
	@DefaultHandler
	public Resolution view(){
		message = messageDao.findById(messageID);
		return new ForwardResolution("/individualPost.jsp");
	}


	public String getMessageID() {
		return messageID;
	}


	public void setMessageID(String messageID) {
		this.messageID = messageID;
	}


	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}
	public Message getAnswer(String messageId){
		List<Message> results = messageDao.read();
		Message foundEntity = null;
		
		for(Message m: results){
			if (m.getParentMessage() != null) {
				if (m.getParentMessage().getId() == Integer.parseInt(messageID)
						&& m.getUser().getType().equals("counsellor")){
					foundEntity = m;
					break;
				}
			}
		}
        return foundEntity;
	}
	
	public boolean hasFollowed(String messageId) {
		User user = getContext().getUser();
		
		List<Follow> follows = followDao.read();
		for(Follow f: follows){
			if (f.getUser() != null){
				if (f.getUser().getId().equals(user.getId())
						&& f.getMessage().getId() == Integer.parseInt(messageID)){
					return true;
				}
			}
		}
		return false;
	}
	
	public boolean hasFelt(String messageId) {
		User user = getContext().getUser();
		
		List<Feel> feels = feelDao.read();
		for(Feel f: feels){
			if (f.getUser() != null){
				if (f.getUser().getId().equals(user.getId())
						&& f.getMessage().getId() == Integer.parseInt(messageID)){
					return true;
				}
			}
		}
		return false;
	}
	
	
	public int getFeels(String messageId){
		int num = 0;
		List<Feel> feels = feelDao.read();
		for(Feel f: feels){
			if (f.getMessage().getId() == Integer.parseInt(messageID)){
				num++;
			}
		}
		return num;
	}
	
	public int getFollows(String messageId){
		int num = 0;
		List<Follow> follows = followDao.read();
		for(Follow f: follows){
			if (f.getMessage().getId() == Integer.parseInt(messageID)){
				num++;
			}
		}
		return num;
	}
}
