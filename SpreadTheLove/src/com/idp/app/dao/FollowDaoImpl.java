package com.idp.app.dao;

import java.util.List;

import com.idp.app.model.Follow;
import com.idp.app.model.Message;
import com.idp.app.model.User;

public class FollowDaoImpl extends BaseDaoImpl<Follow,Integer> {
	public List<Follow> getFollowsByUser(User user){
		List<Follow> followList = read("user",user);
		return followList;
	}
	
}