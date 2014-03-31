package com.idp.app.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

import com.idp.app.model.Feel;
import com.idp.app.model.Follow;
import com.idp.app.model.Message;
import com.idp.app.model.User;

@UrlBinding("/postsifollowed.action")
public class LoadPostsIFollowedActionBean extends BaseActionBean{
	
	private List<Follow> followList;
	private List<Message> messages;
	private User user;
	@DefaultHandler
	public Resolution redirect(){
		messages = new ArrayList<Message>();
		user=userDao.findByUsername(getContext().getUser().getUsername());
		followList = followDao.getFollowsByUser(user);
		
		for(Follow f:followList){
			messages.add(f.getMessage());
		}
		
		Collections.reverse(messages);
		List<Message> newList = new ArrayList<Message>();
		for(Message m: messages){
			if (!m.getType().equals("reply")){
				newList.add(m);
			}
		}
		messages = newList;
		
		Collections.reverse(followList);
		return new ForwardResolution("/posts-I-followed.jsp");
	}
	public List<Message> getMessages() {
		return messages;
	}
	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}
	public List<Follow> getFollowList() {
		return followList;
	}
	public void setFollowList(List<Follow> followList) {
		this.followList = followList;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public List<Message> getAnswer(String messageId){
		List<Message> results = messageDao.read();
		List<Message> foundEntity = new ArrayList<Message>();
		for(Message m: results){
			if (m.getParentMessage() != null) {
				if (m.getParentMessage().getId() == Integer.parseInt(messageId)
						&& m.getType().equals("reply")){
					foundEntity.add(m);
					
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
						&& f.getMessage().getId() == Integer.parseInt(messageId)){
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
						&& f.getMessage().getId() == Integer.parseInt(messageId)){
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
			if (f.getMessage().getId() == Integer.parseInt(messageId)){
				num++;
			}
		}
		return num;
	}
	
	public int getFollows(String messageId){
		int num = 0;
		List<Follow> follows = followDao.read();
		for(Follow f: follows){
			if (f.getMessage().getId() == Integer.parseInt(messageId)){
				num++;
			}
		}
		return num;
	}
}
