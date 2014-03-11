package com.idp.app.action;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/questions.action")
public class LoadQuestionsActionBean {
	@DefaultHandler
	public Resolution view(){
		return new ForwardResolution("/questions.jsp");
	}
}
