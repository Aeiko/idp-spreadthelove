package com.idp.app.action;

import java.util.Collections;
import java.util.List;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

import com.idp.app.model.Follow;
import com.idp.app.model.User;

@UrlBinding("/postsifollowed.action")
public class LoadPostsIFollowedActionBean extends BaseActionBean{
	
	private List<Follow> followList;
	private User user;
	@DefaultHandler
	public Resolution redirect(){
		
		user=userDao.findByUsername(getContext().getUser().getUsername());
		followList = followDao.getFollowsByUser(user);
		
		Collections.reverse(followList);
		
		return new ForwardResolution("/posts-I-followed.jsp");
	}
	public List<Follow> getFollowList() {
		return followList;
	}
	public void setFollowList(List<Follow> followList) {
		this.followList = followList;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
