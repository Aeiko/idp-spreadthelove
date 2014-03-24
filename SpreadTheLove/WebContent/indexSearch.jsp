<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib prefix="d"
	uri="http://stripes.sourceforge.net/stripes-dynattr.tld"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8" />
<title>Spread the Love</title>

<!-- Attach our CSS -->
<link rel="stylesheet" href="css/normalize.css">
<link rel="stylesheet" href="css/orbit-1.3.0.css">
<link rel="stylesheet" href="css/globals.css">
<link rel="stylesheet" href="css/grid.css">
<link rel="stylesheet" href="css/mobile.css">
<link rel="stylesheet" href="css/typography.css">
<link rel="stylesheet" href="css/demo-style.css">
<link rel="stylesheet" href="css/foundation.css">
<link
	href='http://fonts.googleapis.com/css?family=Covered+By+Your+Grace'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/custom.css">
<link rel="stylesheet"
	href="font-awesome-4.0.3/css/font-awesome.min.css">

<!-- Attach necessary JS -->
<script type="text/javascript" src="js/vendor/jquery.js"></script>
<script type="text/javascript" src="js/vendor/jquery.orbit-1.3.0.js"></script>
<script src="https://cdn.firebase.com/v0/firebase.js"></script>

<script src="js/foundation/foundation.js"></script>
<script src="js/foundation/foundation.reveal.js"></script>

<!--[if IE]>
			     <style type="text/css">
			         .timer { display: none !important; }
			         div.caption { background:transparent; filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,endColorstr=#99000000);zoom: 1; }
			    </style>
			<![endif]-->

<!-- Run the plugin -->
<script type="text/javascript">
	$(window).load(function() {
		$('#featured').orbit({
			bullets : true
		});
		$('#featured2').orbit({
			bullets : true
		});
		$('#responsive').orbit({
			bullets : true,
			fluid : true
		});
	});
	
</script>


</head>
<body>

	<div class="container">
		<div class="row">
			<div class="small-6 medium-4 columns text-center">
				<br>
				<h1>
					Spread the Love<i class=" fa fa-heart"></i>
				</h1>
			</div>
			<div
				class="small-12 medium-8 large-7 large-centered medium-centered small-centered columns">
				<img
					src="http://cdn.vectorstock.com/i/composite/36,15/two-black-and-white-kids-holding-hands-vector-1583615.jpg"
					width="150">
			</div>
		</div>
	</div>
	


	<div class="container">
		<div class="row">
			<div class="ten columns">
				<h6>Where no questions are too awkward to go unanswered...</h6>

				<div id="responsive">
					<img src="img/spread the love-01.png"/> 
					<img src="img/spread the love-02.png"/> 
					<img src="img/spread the love-03.png"/>
				</div>
				
				<fieldset>
					<legend>
						<h6>
							Ask a question...<i class=" fa fa-comment-o"></i> It's safe in
							here! :)
						</h6>
					</legend>
					
					<fieldset class="five columns" style="float: left;">
						<legend>
							<h6>Not a member?</h6>
						</legend>
						<s:form action="/register.action">
							<div>
								Username<input name="username" id="createNewUserName"
									type="text" placeholder="No real names!"> 
									
								Password<input
									name="password" id="createNewUserPassword" type="password"
									placeholder="******">
								<s:submit name="register" class="tiny radius button success" id="register"
									value="register" />
							</div>
						</s:form>
					</fieldset>
					<fieldset class="five columns" style="float: center;">
						<legend>
							<h6>Member login</h6>
						</legend>
						<s:form action="/login.action">
							<div>
								Username<input name="username" type="text"
									placeholder="username"> Password<input name="password"
									type="password" placeholder="******">
								<s:submit name="login" class="tiny radius button success"
									value="login" />
									<a href="/SpreadTheLove/passwordReset.action">Forget Password</a>
							</div>
						</s:form>

					</fieldset>
				</fieldset>


				
				<fieldset>
                                	
                                	<div class="small-12 columns text-left">
	                                    <h4><small><b>Sort by: &nbsp;</b><button class="tiny round secondary"><i class="fa fa-fw fa-rocket"></i> Popular</button> <button class="tiny round secondary"><i class="fa fa-clock-o fa-fw"></i> Recent</button></small></h4> 
	                                  
	                                </div>
	                                
	                                <div class="small-4 columns" >
                                	  <form action="/SpreadTheLove/indexsearch.action">
						                    <input tabindex="1" class="commentarea" name="search" type="search" placeholder="Search" />
					                    </form> 
                                	</div>
	                                 
                                	
                                	<legend>Recent Posts</legend>
                                	
									<c:if test="${actionBean.messages.size() > 0 }">
		                                <c:forEach var="message" items="${actionBean.messages}">
		                                	<div class="small-9 columns panel">
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
					                            <li><a onclick="ifeelyou('${message.id}');" class="alert tiny radius button" id="ifeelyoubtn${message.id}"><i class="fa fa-hand-o-up "></i> I Feel You</a></li>
					                         	<li><a onclick="follow('${message.id}');" class="button tiny radius " id="followbtn${message.id}"><i class=" fa fa-arrow-circle-up "></i> Follow Post</a></li>
					                            <li><a  class="button tiny radius "><i class=" fa fa-pencil "></i> Reply</a></li>
					                        </ul>
					                        </div>
					                        
					                        <c:if test="${not empty actionBean.getAnswer(message.id) }">
												<c:set var="answer" value="${actionBean.getAnswer(message.id)}"/>
												<div class="small-9 columns panel-2">
													<h4><small data-reveal-id="promptModal"><b><i class="fa fa-check"></i> &nbsp;Answered by Counsellor ${answer.user.displayName }</b></small></h4>
													<p class="answer">${answer.content }</p>
													<hr>
												</div>
											</c:if>
					                        
		                                </c:forEach>
	                                </c:if>	 
                                	<div class ="small-9 columns">
									<ul class="pagination">
										<li class="arrow unavailable"><a href="">&laquo;</a></li>
										<li class="current"><a href="">1</a></li>
										<li><a href="">2</a></li>
										<li><a href="">3</a></li>
										<li><a href="">4</a></li>
										<li class="unavailable"><a href="">&hellip;</a></li>
										<li><a href="">12</a></li>
										<li><a href="">13</a></li>
										<li class="arrow"><a href="">&raquo;</a></li>
									</ul>
									</div>
				</fieldset>
			</div>
		</div>
	</div>
	
	<div id="promptModal" class="reveal-modal" data-reveal> 
		<div class="container"> 
			<div class="row">
				<div class="twelve columns">
					<fieldset class="six columns"  style="float: left;">
						<legend>
							<h6>Not a member?</h6>
						</legend>
						<s:form action="/register.action">
							<div>
								Username<input name="username" id="createNewUserName" type="text" placeholder="No real names!"> 
								Password<input name="password" id="createNewUserPassword" type="password" placeholder="******">
								<s:submit name="register" class="tiny radius button success" id="register" value="register" />
							</div>
						</s:form>
					</fieldset>
							
					<fieldset class="six columns" style="float: center;">
						<legend>
							<h6>Member login</h6>
						</legend>
						<s:form action="/login.action">
							<div>
								Username<input name="username" type="text" placeholder="username"> 
								Password<input name="password" type="password" placeholder="******">
								<s:submit name="login" class="tiny radius button success" value="login" />
								<a href="/SpreadTheLove/passwordReset.action">Forget Password</a>
							</div>
						</s:form>
			
					</fieldset>
				</div>
			</div>
		</div>
		
		
		<a class="close-reveal-modal">&#215;</a>
		
	</div>
	 
	<script type="text/javascript"> 
	   $(document).foundation();
	</script>
</body>
</html>