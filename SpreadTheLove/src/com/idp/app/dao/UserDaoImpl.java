package com.idp.app.dao;

import java.util.List;

import com.idp.app.model.User;

public class UserDaoImpl extends BaseDaoImpl<User,Integer> {
    public User findByEmail(String email) {
        List<User> results = findBy("email", email);
        User foundEntity = null;
        if(!results.isEmpty()){
            // ignores multiple results
            foundEntity = (User) results.get(0);
        }
        return foundEntity;
    }   
    
    public int getUserCount(){
    	return read().size();
    }
    
    public List<User> getUsers(){
    	return read();
    }
}