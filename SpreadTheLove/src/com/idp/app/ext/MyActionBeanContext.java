package com.idp.app.ext;

import java.util.List;

import com.idp.app.model.User;
import com.idp.app.model.Message;

import net.sourceforge.stripes.action.ActionBeanContext;

public class MyActionBeanContext extends ActionBeanContext {
    private static final String USER = "user";
    //private static final String MLIST = "mList";
    
    
    public void setUser(User user) {
        setCurrent(USER, user);
    }
    
    public User getUser() {
    	return (User) getRequest().getSession().getAttribute(USER);
    }
    
    /*public void setMessageList(List<Message> mList){
    	setCurrent(MLIST,mList);
    }
    
    @SuppressWarnings("unchecked")
	public List<Message> getMList() {
    	return (List<Message>) getRequest().getSession().getAttribute(MLIST);
    }*/
    
    protected void setCurrent(String key, Object value) {
        getRequest().getSession().setAttribute(key, value);
    }
}
