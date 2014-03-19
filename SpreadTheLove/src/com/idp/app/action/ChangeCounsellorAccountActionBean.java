package com.idp.app.action;

import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.RedirectResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;

@UrlBinding("/counsellor/account/edit.action")
public class ChangeCounsellorAccountActionBean extends BaseActionBean {
	private String username;
	private String displayName;
	private String password;
	private String password2;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	@DefaultHandler
	public Resolution view(){
		User user = getContext().getUser();
		user = userDao.findByUsername(user.getUsername());
		user.setUsername(username);
		user.setDisplayName(displayName);
		userDao.save(user);
		userDao.commit();
		return new RedirectResolution("/counsellor/home.action");
	}
}
