package com.idp.app.action;

import com.idp.app.model.Dao;

import net.sourceforge.stripes.action.ActionBean;
import net.sourceforge.stripes.action.ActionBeanContext;

public abstract class BaseActionBean implements ActionBean {
    private ActionBeanContext context;

    public ActionBeanContext getContext() { return context;}
    public void setContext(ActionBeanContext context) { this.context = (ActionBeanContext) context; }
    
    public Dao dao = new Dao();
}
