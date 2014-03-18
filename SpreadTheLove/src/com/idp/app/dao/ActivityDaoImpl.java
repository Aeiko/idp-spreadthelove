package com.idp.app.dao;

import java.util.List;

import com.idp.app.model.Activity;
import com.idp.app.model.Message;
import com.idp.app.model.User;

public class ActivityDaoImpl extends BaseDaoImpl<Activity,Integer> {
	
	public List<Activity> getActivityByUser(User user){
		List<Activity> activities = read("user",user);
		return activities;
	}
	
}
