package com.idp.app.action;


import java.util.Collections;
import java.util.List;

import com.idp.app.model.Message;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/home.action")
public class LoadHomeActionBean extends BaseActionBean{

	private List<Message> mList;

	public List<Message> getmList() {
		return mList;
	}

	public void setmList(List<Message> mList) {
		this.mList = mList;
	}
	
	@DefaultHandler
	public Resolution view(){
		mList = messageDao.read();
		Collections.reverse(mList);
		return new ForwardResolution("/home.jsp");
	}
}
