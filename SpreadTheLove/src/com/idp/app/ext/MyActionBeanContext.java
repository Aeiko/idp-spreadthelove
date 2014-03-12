package com.idp.app.ext;

import com.idp.app.model.User;

import net.sourceforge.stripes.action.ActionBeanContext;

public class MyActionBeanContext extends ActionBeanContext {
    private static final String USER = "user";
    
    public void setUser(User user) {
        setCurrent(USER, user);
    }
    
    public User getUser() {
    	return (User) getRequest().getSession().getAttribute(USER);
    }
    
    protected void setCurrent(String key, Object value) {
        getRequest().getSession().setAttribute(key, value);
    }
}
