package com.idp.app.action;

import com.idp.app.model.Message;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/SpreadTheLove")
public class LoadRootActionBean extends BaseActionBean{
	
	@DefaultHandler
	public Resolution view(){
		
		return new ForwardResolution("/index.jsp");
	}
}
