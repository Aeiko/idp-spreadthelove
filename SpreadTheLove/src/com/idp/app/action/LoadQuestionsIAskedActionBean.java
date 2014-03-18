package com.idp.app.action;

import java.util.Collections;
import java.util.List;

import com.idp.app.model.Message;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/questioniasked.action")
public class LoadQuestionsIAskedActionBean extends BaseActionBean {
	
	private List<Message> myquestions; 
	
	@DefaultHandler
	public Resolution myquestions(){
		
		myquestions = messageDao.getMessagesByUser(getContext().getUser());
		Collections.reverse(myquestions);
		return new ForwardResolution("/questions-I-asked.jsp");
	}

	public List<Message> getMyquestions() {
		return myquestions;
	}

	public void setMyquestions(List<Message> myquestions) {
		this.myquestions = myquestions;
	}	
}
