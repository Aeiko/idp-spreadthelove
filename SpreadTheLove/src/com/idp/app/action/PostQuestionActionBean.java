package com.idp.app.action;

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
	private List<Message> mList;
	
	@DefaultHandler
	public Resolution post(){
		
		User user = userDao.findByUsername(getContext().getUser().getUsername());
		Message msg = new Message();
		msg.setContent(message);
		msg.setTitle(title);
		msg.setUser(user);
		messageDao.save(msg);
		messageDao.commit();
		
		mList = messageDao.read();
		Collections.reverse(mList);
		
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


	public List<Message> getmList() {
		return mList;
	}


	public void setmList(List<Message> mList) {
		this.mList = mList;
	}


}
