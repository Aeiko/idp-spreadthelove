package com.idp.app.action;
import com.idp.app.action.BaseActionBean;
import com.idp.app.model.User;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.UrlBinding;



@UrlBinding("/editpassword.action")
public class EditPasswordActionBean extends BaseActionBean{
	
	private String password;
	private String reconfirmPassword;
	private User user;
	

	@DefaultHandler
	public Resolution edit(){
		
		user = userDao.findByUsername(getContext().getUser().getUsername());
		user.setPassword(password);
		
		userDao.save(user);
		userDao.commit();
		
		getContext().setUser(user);
		
		return new ForwardResolution("/home.action");
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getReconfirmPassword() {
		return reconfirmPassword;
	}

	public void setReconfirmPassword(String reconfirmPassword) {
		this.reconfirmPassword = reconfirmPassword;
	}

}
