<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib prefix="d" uri="http://stripes.sourceforge.net/stripes-dynattr.tld"%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Spread the love</title>
        <link rel="stylesheet" href="css/foundation.css" />
        <link rel="stylesheet" href="css/custom.css" />
        <link rel="stylesheet" href="font-awesome-4.0.3/css/font-awesome.min.css">
        <script src="js/vendor/modernizr.js"></script>
        <script src="https://cdn.firebase.com/v0/firebase.js"></script>
    </head>
    <body>
        <div class="contain-to-grid sticky" data-options="st icky_on: large">
            <nav class="top-bar" data-topbar>
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="#">Hi ${actionBean.context.user.displayName }</a></h1>
                    </li>
                    <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
                </ul>
                <section class="top-bar-section">
                    <!-- Right Nav Section -->
                    <ul class="right">
                        <li class="divider"></li>
                        <li><a href="/SpreadTheLove/logout-user.action"><i class="fa fa-power-off fa-fw"></i> Logout</a></li>
                    </ul>
                </section>
            </nav>
        </div>
        <div class="container">
            <div class="row">
                <div class="small-12 columns">
                    <div class="row">
                        <!-- Posts Listing -->
                        <div class="small-8 columns">
                            <br>
                            <div class="row">           
                                <fieldset>
	                                <legend>Edit Account Details </legend>
	                                <s:form action="/editpassword.action">
	                                <label>Username: ${actionBean.context.user.username}
								      </label>
								      <label>Password: 
								        <input type="password" name="password" value="${actionBean.context.user.password}" />
								      </label>
								      <label>Confirm Password: 
								        <input type="password" name="reconfirmpassword" placeholder="*******"/>
								      </label>
								      <s:submit name="post" class="tiny radius button success" value="Change Password" />
								     </s:form> 
	                            </fieldset>
                                
                            </div>
                        </div>
                        <!-- Side Bar Nav -->
                        <div class="small-4 columns sidebar" style="min-height: 500px">
                            <input tabindex="1" type="search" placeholder="Search" >
                            <button type="submit" class="tiny" id="searchbtn">Submit</button>
                            <ul class="side-nav">
                                <li><a href="/SpreadTheLove/home.action"><i class="fa fa-home fa-fw"></i> Home</a></li>
                                <li><a href="/SpreadTheLove/activity.action"><i class="fa fa-bolt fa-fw"></i> Activity</a></li>
                                <li><a href="/SpreadTheLove/questioniasked.action"><i class="fa fa-lightbulb-o fa-fw" ></i> Questions I asked</a></li>
                                <li><a href="/SpreadTheLove/postsifollowed.action"><i class="fa fa-anchor fa-fw"></i> Posts I follow</a></li>
                                <li  class="active"><a href="/SpreadTheLove/accountsettings.action"><i class="fa fa-user fa-fw"></i> Account Settings</a></li>
                                <li><a href="/SpreadTheLove/faq.action"><i class="fa fa-bars fa-fw"></i> FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/vendor/jquery.js"></script>
        <script src="js/foundation.min.js"></script>
		
        <script>
            $(document).foundation();
        </script>
		
    </body>
</html>
