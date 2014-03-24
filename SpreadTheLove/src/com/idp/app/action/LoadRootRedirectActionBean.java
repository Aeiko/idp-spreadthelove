package com.idp.app.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.idp.app.model.Message;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/root.action")
public class LoadRootRedirectActionBean extends BaseActionBean{
	
	private List<Message> messages;
	
	@DefaultHandler
	public Resolution view(){
		
		messages = messageDao.read();
		Collections.reverse(messages);
		System.out.println("root");
		List<Message> newList = new ArrayList<Message>();
		for(Message m: messages){
			if (!m.getUser().getType().equals("counsellor")){
				newList.add(m);
			}
		}
		messages = newList;
		
		return new ForwardResolution("/index.jsp");
	}
	
	public Message getAnswer(String messageId){
		List<Message> results = messageDao.read();
		Message foundEntity = null;
		
		for(Message m: results){
			if (m.getParentMessage() != null) {
				if (m.getParentMessage().getId() == Integer.parseInt(messageId)
						&& m.getUser().getType().equals("counsellor")){
					foundEntity = m;
					break;
				}
			}
		}
        return foundEntity;
	}
	
	public List<Message> getMessages() {
		return messages;
	}

	public void setMessages(List<Message> messages) {
		this.messages = messages;
	}
}
