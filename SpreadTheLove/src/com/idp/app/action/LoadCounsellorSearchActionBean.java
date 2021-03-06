package com.idp.app.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.idp.app.model.Feel;
import com.idp.app.model.Follow;
import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/counsellor/search.action")
public class LoadCounsellorSearchActionBean extends BaseActionBean{
	private List<Message> messages;
	private String search;
	
	public String getSearch() {
		return search;
	}


	public void setSearch(String search) {
		this.search = search;
	}

	@DefaultHandler
	public Resolution search(){
		messages = messageDao.read();
		Collections.reverse(messages);
		List<Message> newList = new ArrayList<Message>();
		for(Message m: messages){
			if (!m.getType().equals("reply")){
				if (m.getContent().contains(search)){
					newList.add(m);
				}
			}
		}
		messages = newList;
		return new ForwardResolution("/viewCounsellorSearch.jsp");
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
	
	public List<Message> getMessages() {
		return messages;
	}
	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}
}
