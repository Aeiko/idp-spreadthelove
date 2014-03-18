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
        <link rel="stylesheet" href="css/orbit-1.3.0.css">
		
<link
	href='http://fonts.googleapis.com/css?family=Covered+By+Your+Grace'
	rel='stylesheet' type='text/css'>        
        <link rel="stylesheet"
	href="font-awesome-4.0.3/css/font-awesome.min.css">
        
        <link rel="stylesheet" href="font-awesome-4.0.3/css/font-awesome.min.css">
        <script src="js/vendor/modernizr.js"></script>
        <script src="https://cdn.firebase.com/v0/firebase.js"></script>
		
		<script type="text/javascript" src="js/vendor/jquery.js"></script>
		<script type="text/javascript" src="js/vendor/jquery.orbit-1.3.0.js"></script> 
		
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
                        <li><a href="/SpreadTheLove"><i class="fa fa-power-off fa-fw"></i> Logout</a></li>
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
                               		<legend>Frequently Asked Questions</legend>
                                	
                                	<h5><strong>1. What can I do in this website?</strong></h5>
                                	<h6>You can post any questions anonymously, and any registered user will be able to answer your questions! :) </h6>
                                	<h6>Refer to the following.</h6>
                                	
                                		<div id="responsive">
											<div class="content" style="">
												<!--<h1>Orbit does content now.</h1>
												<h3>Highlight me...I'm text.</h3>-->
											</div>
											<img src="img/spread the love-01.png"/> 
											<img src="img/spread the love-02.png"/> 
											<img src="img/spread the love-03.png"/> 
											
											
										</div>
                                	
                                	<br>
                                	
                                	<h5><strong>2. How many questions can I ask?</strong></h5>
                                	<h6>There is no limit as to how many questions you can ask. If you are in doubt or having something that is bothering you, feel free to post your question on Spread the love! :)</h6>
                                	<br>
                                	
                                	<h5><strong>3. I have posted my question but I have yet to see any replies. What is happening?</strong></h5>
									<h6>We are currently increasing our manpower but rest assured that our counsellors are trying their best to answer all questions that you have asked :) </h6>                                	
                                	<br>
                                	
                                	<h5><strong>4. Will my friends find out that I am the one asking the questions?</strong></h5>
                                	<h6>Your identity will remain absolutely anonymous when post anything on Spread The Love. However, do take note not to disclose any personal details such as your name or address when create the posts.</h6>
                                	<br>
                                	
                                	<h5><strong>5. What is the <i>I Feel You</i> function about?</strong></h5>
                                	<h6>You can click <i>I Feel You</i> on an individual post to show that you feels the same as the person who created this post. </h6>
                               
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
                                <li><a href="/SpreadTheLove/accountsettings.action"><i class="fa fa-user fa-fw"></i> Account Settings</a></li>
                                <li  class="active"><a href="/SpreadTheLove/faq.action"><i class="fa fa-bars fa-fw"></i> FAQ</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

     
		
		<script>
			function follow(){
				
				$.post('/SpreadTheLove/generatefollow.action', $("#followForm").serialize(), function (data) {
					
                });
				$('#followbtn').css('color', 'black');
			}
			
			function ifeelyou(){
				
				$.post('/SpreadTheLove/generateifeelyou.action', $("#ifeelyouForm").serialize(), function (data) {
					
                });
				$('#ifeelyoubtn').css('color', 'black');
			}
		</script>
        <script>
            $(document).foundation();
        </script>
		
    </body>
</html>
