package com.idp.app.action;

import java.util.List;

import com.idp.app.model.Activity;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/counsellor/activity.action")
public class LoadCounsellorActivityActionBean extends BaseActionBean{
	
	private List<Activity> activities;
	private User user;
	
	@DefaultHandler
	public Resolution view(){
		
		user = userDao.findByUsername(getContext().getUser().getUsername());
		
		activities = activityDao.getActivityByUser(user);
		
		return new ForwardResolution("/viewCounsellorActivity.jsp");
	}

	public List<Activity> getActivities() {
		return activities;
	}

	public void setActivities(List<Activity> activities) {
		this.activities = activities;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
