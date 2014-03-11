package com.idp.app.action;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/activity.action")
public class LoadActivityActionBean extends BaseActionBean {
	
	@DefaultHandler
	public Resolution view(){
		
		return new ForwardResolution("/activity.jsp");
	}
}