package com.idp.app.action;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/register.action")
public class RegisterActionBean extends BaseActionBean{
	
	@DefaultHandler
	public Resolution register(){
		return new ForwardResolution("/home.jsp");
	}
}
