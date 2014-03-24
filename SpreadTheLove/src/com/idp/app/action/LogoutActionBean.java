package com.idp.app.action;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.RedirectResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/logout.action")
public class LogoutActionBean extends BaseActionBean {
	@DefaultHandler
	public Resolution logout(){
		getContext().getRequest().getSession().removeAttribute("user");
    	return new RedirectResolution("/index.action");
    }
}