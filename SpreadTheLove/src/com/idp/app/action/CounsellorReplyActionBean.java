package com.idp.app.action;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.RedirectResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/counsellor/reply.action")
public class CounsellorReplyActionBean extends BaseActionBean{
	private String parentMessageId;
	private String content;
	
	public String getParentMessageId() {
		return parentMessageId;
	}
	public void setParentMessageId(String parentMessageId) {
		this.parentMessageId = parentMessageId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@DefaultHandler
	public Resolution reply(){
		User user = getContext().getUser();
		user = userDao.findByUsername(user.getUsername());
		
		System.out.println("mID: " + parentMessageId);
		Message parentMessage = messageDao.findById(parentMessageId);
		
		Message m = new Message();
		m.setContent(content);
		m.setParentMessage(parentMessage);
		m.setUser(user);
		
		userDao.save(user);
		userDao.commit();
		return new RedirectResolution("/counsellor/home.action");
	}
}
