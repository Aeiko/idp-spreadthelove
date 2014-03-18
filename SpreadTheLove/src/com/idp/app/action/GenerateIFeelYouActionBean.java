package com.idp.app.action;

import com.idp.app.model.Feel;
import com.idp.app.model.Follow;
import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/generateifeelyou.action")
public class GenerateIFeelYouActionBean extends BaseActionBean{
	
	private String messageID;
	private User user;
	private Message message;
	
	@DefaultHandler
	public void ifeelyou(){
		
		System.out.println("hello!");
		user = userDao.findByUsername(getContext().getUser().getUsername());
		
		System.out.println(user.getUsername());
		
		System.out.println(messageID);
		message = messageDao.findById(messageID);
		System.out.println(message.getContent());
		
		Feel feel = new Feel(user,message);
		System.out.println(feel.getMessage().getContent());
		System.out.println(feel.getUser().getUsername());
		feelDao.save(feel);
		feelDao.commit();
	}
	
}
