package com.idp.app.action;

import com.idp.app.ext.MyActionBeanContext;
import com.idp.app.model.Dao;
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
    
    
    public Dao dao = new Dao();
}
