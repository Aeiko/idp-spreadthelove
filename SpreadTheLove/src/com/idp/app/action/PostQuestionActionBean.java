package com.idp.app.action;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;


@UrlBinding("/postquestion.action")
public class PostQuestionActionBean extends BaseActionBean {
	private String message;
	private String title;
	private List<Message> messages;
	
	@DefaultHandler
	public Resolution post(){
		
		User user = userDao.findByUsername(getContext().getUser().getUsername());
		Message msg = new Message();
		msg.setContent(message);
		msg.setTitle(title);
		msg.setUser(user);
		messageDao.save(msg);
		messageDao.commit();
		
		messages = messageDao.read();
		Collections.reverse(messages);
		
		List<Message> newList = new ArrayList<Message>();
		for(Message m: messages){
			if (!m.getUser().getType().equals("counsellor")){
				newList.add(m);
			}
		}
		messages = newList;
		
		return new ForwardResolution("/home.jsp");
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public List<Message> getMessages() {
		return messages;
	}


	public void setMessages(List<Message> messages) {
		this.messages = messages;
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

}
