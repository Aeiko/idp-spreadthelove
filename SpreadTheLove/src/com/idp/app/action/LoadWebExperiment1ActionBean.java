package com.idp.app.action;


import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/webexp1.action")
public class LoadWebExperiment1ActionBean extends BaseActionBean{
	
	
	@DefaultHandler
	public Resolution view(){
	
		return new ForwardResolution("/webExperiment1.jsp");
	}
	
	
}
