package com.idp.app.action;

import com.idp.app.ext.MyActionBeanContext;
import com.idp.app.dao.FeelDaoImpl;
import com.idp.app.dao.FollowDaoImpl;
import com.idp.app.dao.MessageDaoImpl;
import com.idp.app.dao.UserDaoImpl;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;

public abstract class BaseActionBean implements ActionBean {
	private MyActionBeanContext context;

    public MyActionBeanContext getContext() {
        return context;
    }
    
    public void setContext(ActionBeanContext context) {
        this.context = (MyActionBeanContext) context;
    }
    
    protected User getUser() {
        return getContext().getUser();
    }
    
    public UserDaoImpl userDao = new UserDaoImpl();
    public MessageDaoImpl messageDao = new MessageDaoImpl();
    public FollowDaoImpl followDao = new FollowDaoImpl();
    public FeelDaoImpl feelDao = new FeelDaoImpl();
}
