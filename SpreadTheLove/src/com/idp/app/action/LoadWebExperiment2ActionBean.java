package com.idp.app.action;


import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/webexp2.action")
public class LoadWebExperiment2ActionBean extends BaseActionBean{
	
	
	@DefaultHandler
	public Resolution view(){
	
		return new ForwardResolution("/webExperiment2.jsp");
	}
	
	
}
