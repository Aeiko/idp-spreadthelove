package com.idp.app.dao;

import java.util.List;

import com.idp.app.model.Message;
import com.idp.app.model.User;

public class MessageDaoImpl extends BaseDaoImpl<Message,Integer> {
    
	public List<Message> getMessagesByUser(User user){
		List<Message> msgList = read("user",user);
		return msgList;
	}
	
	public Message findById(String id){
		List<Message> results = findBy("id",Integer.parseInt(id));
		Message foundEntity = null;
        if(!results.isEmpty()){
            // ignores multiple results
            foundEntity = (Message) results.get(0);
        }
        return foundEntity;
	}
}