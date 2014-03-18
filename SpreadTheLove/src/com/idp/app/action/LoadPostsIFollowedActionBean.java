package com.idp.app.action;

import java.util.List;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

import com.idp.app.model.Follow;
import com.idp.app.model.User;

@UrlBinding("/posts-i-followed.action")
public class LoadPostsIFollowedActionBean extends BaseActionBean{
	
	private List<Follow> followList;
	
	@DefaultHandler
	public Resolution redirect(){
		
		
		return new ForwardResolution("/posts-i-followed.jsp");
	}
}
