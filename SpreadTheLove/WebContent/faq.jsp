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

<style>
.panel-1 {
	color: #fff !important;
	background: #dd588c; /* Old browsers */
	background: -moz-linear-gradient(-45deg, #dd588c 0%, #fdaa68 100%);
	/* FF3.6+ */
	background: -webkit-gradient(linear, left top, right bottom, color-stop(0%, #dd588c),
		color-stop(100%, #fdaa68)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(-45deg, #dd588c 0%, #fdaa68 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(-45deg, #dd588c 0%, #fdaa68 100%);
	/* Opera 11.10+ */
	background: -ms-linear-gradient(-45deg, #dd588c 0%, #fdaa68 100%);
	/* IE10+ */
	background: linear-gradient(135deg, #dd588c 0%, #fdaa68 100%);
	/* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#dd588c',
		endColorstr='#fdaa68', GradientType=1);
	/* IE6-9 fallback on horizontal gradient */
}

.panel-2 {
	color: #000;
	background: #fff; /* Old browsers */
}

.panel-3 {
	min-height: 100%;
	margin-bottom: 20px;
	color: #fff;
	padding-top: 20px;
	background: #10727e; /* Old browsers */
	background: -moz-linear-gradient(-45deg, #10727e 0%, #fadcbf 100%);
	/* FF3.6+ */
	background: -webkit-gradient(linear, left top, right bottom, color-stop(0%, #10727e),
		color-stop(100%, #fadcbf)); /* Chrome,Safari4+ */
	background: -webkit-linear-gradient(-45deg, #10727e 0%, #fadcbf 100%);
	/* Chrome10+,Safari5.1+ */
	background: -o-linear-gradient(-45deg, #10727e 0%, #fadcbf 100%);
	/* Opera 11.10+ */
	background: -ms-linear-gradient(-45deg, #10727e 0%, #fadcbf 100%);
	/* IE10+ */
	background: linear-gradient(135deg, #10727e 0%, #fadcbf 100%);
	/* W3C */
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#10727e',
		endColorstr='#fadcbf', GradientType=1);
	/* IE6-9 fallback on horizontal gradient */
}

h6 {
	color: #fff;
}

.white {
	color: #fff;
}

.question {
	font-size: 0.90rem;
}

.answer {
	color: #767676;
	font-size: 0.90rem;
	margin-bottom: 0.5rem;
}

.reply {
	margin-bottom: 20px;
}

.highlight {
	color: red !important;
}
</style>
       
    </head>
    <body>
    	<div class="container panel-3">
        <div class="row">
			<div class="small-6 columns text-left">
				Spread The Love > <b>Help</b> 
			</div>
			<div class="small-6 columns text-right"></div>
		</div>
		<div class="row" style="padding-top: 20px;">
        
                        <!-- Posts Listing -->
                        <div class="small-8 columns">
                            <br>
                            <div class="row">           

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
                               

                            </div>
                        </div>
                        <!-- Side Bar Nav -->
                        <div class="small-3 columns sidebar" style="min-height: 300px">
				<form action="/SpreadTheLove/counsellor/search.action">
					<input tabindex="1" class="commentarea" name="search" type="search"
						placeholder="Search" />
				</form>
				<ul class="side-nav">
					<li><a href="/SpreadTheLove/home.action"><i
							class="fa fa-home fa-fw"></i> Home</a></li>
					<li><a href="/SpreadTheLove/activity.action"><i
							class="fa fa-bolt fa-fw"></i> Activity</a></li>
					<li><a href="/SpreadTheLove/questioniasked.action"><i
							class="fa fa-lightbulb-o fa-fw"></i> Questions I asked</a></li>
					<li><a href="/SpreadTheLove/postsifollowed.action"><i
							class="fa fa-star fa-fw"></i> Posts I followed </a></li>
					<hr>
					<li><a href="/SpreadTheLove/accountsettings.action"><i
							class="fa fa-fw fa-gears"></i> Account Settings</a></li>
					<li   class="active"><a href="/SpreadTheLove/faq.action"><i
							class="fa fa-question fa-fw"></i> Help</a></li>
					<li><a href="/SpreadTheLove/logout.action"><i
							class="fa fa-sign-out fa-fw"></i> Logout</a></li>
				</ul>
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
