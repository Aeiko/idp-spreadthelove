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
	                                <legend><h6>Ask a question...<i class=" fa fa-comment-o"></i> It's safe in here! :) </h6></legend>
	                                
	                                <s:form action="/postquestion.action">
	                                	<input type="text" name="title" placeholder="Title of post">
	                                	<textarea name="message" placeholder="Ask something or confide in us. We will try our best to help you."></textarea>
	                               		<s:submit name="post" class="tiny radius button success" value="Post" />
	                                </s:form>
	                            </fieldset>
                                
                                <fieldset>
                                	
                                	<div class="small-12 columns text-left">
	                                    <h4><small><b>Sort by: &nbsp;</b><button class="tiny round secondary"><i class="fa fa-fw fa-rocket"></i> Popular</button> <button class="tiny round secondary"><i class="fa fa-clock-o fa-fw"></i> Recent</button></small></h4>  
	                                </div>
                                	
                                	<legend>Recent Posts</legend>
									<c:if test="${actionBean.mList.size() > 0 }">
		                                <c:forEach var="message" items="${actionBean.mList}">
		                                	<div class="small-12 columns panel">
		                                	${message.getUser().getDisplayName()}
		                         			<p>Title: ${message.getTitle()}</p> 
		                                	<p class="message-content">${message.getContent()}</p> 
		                                	
		                                	
		                                	<s:form action="/generatefollow.action/" method="post" id="followForm${message.id}">
													<input type="hidden" name="messageID" value="${message.id}"/>
											</s:form>
		                                	<s:form action="/generateifeelyou.action/" method="post" id="ifeelyouForm${message.id}">
													<input type="hidden" name="messageID" value="${message.id}"/>
											</s:form>
											
											
		                                	<br>
		                                	<br>
		                                	<br>
		                                	<ul class="button-group">
					                            <li><a onclick="ifeelyou('${message.id}')" class="alert tiny radius button" id="ifeelyoubtn${message.id}"><i class="fa fa-hand-o-up "></i> I Feel You</a></li>
					                         	<li><a onclick="follow('${message.id}');" class="button tiny radius " id="followbtn${message.id}"><i class=" fa fa-arrow-circle-up "></i> Follow Post</a></li>
					                            <li><a class="button tiny radius "><i class=" fa fa-comment-o "></i> View Comments</a></li>
					                            <li><a  class="button tiny radius "><i class=" fa fa-pencil "></i> Reply</a></li>
					                        </ul>
					                        </div>
		                                </c:forEach>
	                                </c:if>	 
                                </fieldset>
                            </div>
                        </div>
                        <!-- Side Bar Nav -->
                        <div class="small-4 columns sidebar" style="min-height: 500px">
                            <input tabindex="1" type="search" placeholder="Search" >
                            <button type="submit" class="tiny" id="searchbtn">Submit</button>
                            <ul class="side-nav">
                                <li class="active"><a href="/SpreadTheLove/home.action"><i class="fa fa-home fa-fw"></i> Home</a></li>
                                <li><a href="/SpreadTheLove/activity.action"><i class="fa fa-bolt fa-fw"></i> Activity</a></li>
                                <li><a href="/SpreadTheLove/questioniasked.action"><i class="fa fa-lightbulb-o fa-fw" ></i> Questions I asked</a></li>
                                <li><a href="/SpreadTheLove/postsifollowed.action"><i class="fa fa-anchor fa-fw"></i> Posts I follow</a></li>
                                <li><a href="/SpreadTheLove/postifollow.action"><i class="fa fa-anchor fa-fw"></i> Posts I follow</a></li>
                                <li><a href="/SpreadTheLove/accountsettings.action"><i class="fa fa-user fa-fw"></i> Account Settings</a></li>
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
			function follow(id){
			
				$.post('/SpreadTheLove/generatefollow.action', $("#followForm"+id).serialize(), function (data) {
					
                });
				$('#followbtn'+id).css('color', 'black');
			}
			
			function ifeelyou(id){
				
				$.post('/SpreadTheLove/generateifeelyou.action', $("#ifeelyouForm"+id).serialize(), function (data) {
					
                });
				$('#ifeelyoubtn'+id).css('color', 'black');
			}
		</script>
        <script>
            $(document).foundation();
        </script>
		
    </body>
</html>
