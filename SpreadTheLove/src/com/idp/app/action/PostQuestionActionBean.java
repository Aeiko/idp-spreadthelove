package com.idp.app.action;
import java.util.ArrayList;
import java.util.Random;

import com.idp.app.model.Message;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;


@UrlBinding("/postquestion.action")
public class PostQuestionActionBean extends BaseActionBean {
	private String message;
	private String title;
	private ArrayList<Message> mList;
	
	
	@DefaultHandler
	public Resolution post(){
		
		Message msg = new Message();
		msg.setContent(message);
		msg.setTitle(title);
		Random random = new Random();
		int id = random.nextInt(10000);
		msg.setId(id);
		
		mList = dao.getMessages();
		
		mList.add(msg);
		
		dao.setMessages(mList);
		
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


	public ArrayList<Message> getmList() {
		return mList;
	}


	public void setmList(ArrayList<Message> mList) {
		this.mList = mList;
	}
}
