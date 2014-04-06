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
        <link rel="stylesheet" href="/SpreadTheLove/css/foundation.css" />
        <link rel="stylesheet" href="/SpreadTheLove/css/custom.css" />
        <link rel="stylesheet" href="/SpreadTheLove/css/trip.min.css" />
        <link rel="stylesheet" href="/SpreadTheLove/font-awesome-4.0.3/css/font-awesome.min.css">
        <script src="/SpreadTheLove/js/vendor/modernizr.js"></script>
        <style>
	        .panel-1 {
	        	color: #fff !important;
	            background: #dd588c; /* Old browsers */
	            background: -moz-linear-gradient(-45deg,  #dd588c 0%, #fdaa68 100%); /* FF3.6+ */
	            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#dd588c), color-stop(100%,#fdaa68)); /* Chrome,Safari4+ */
	            background: -webkit-linear-gradient(-45deg,  #dd588c 0%,#fdaa68 100%); /* Chrome10+,Safari5.1+ */
	            background: -o-linear-gradient(-45deg,  #dd588c 0%,#fdaa68 100%); /* Opera 11.10+ */
	            background: -ms-linear-gradient(-45deg,  #dd588c 0%,#fdaa68 100%); /* IE10+ */
	            background: linear-gradient(135deg,  #dd588c 0%,#fdaa68 100%); /* W3C */
	            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#dd588c', endColorstr='#fdaa68',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
	        }
        	.panel-2 {
        		color: #000 ;
	         	background: #fff; /* Old browsers */   
	        }
        	.panel-3 {
	            min-height: 100%;
	            margin-bottom: 20px;
	            color: #fff;
	            padding-top: 20px;
	            background: #10727e; /* Old browsers */
	            background: -moz-linear-gradient(-45deg,  #10727e 0%, #fadcbf 100%); /* FF3.6+ */
	            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#10727e), color-stop(100%,#fadcbf)); /* Chrome,Safari4+ */
	            background: -webkit-linear-gradient(-45deg,  #10727e 0%,#fadcbf 100%); /* Chrome10+,Safari5.1+ */
	            background: -o-linear-gradient(-45deg,  #10727e 0%,#fadcbf 100%); /* Opera 11.10+ */
	            background: -ms-linear-gradient(-45deg,  #10727e 0%,#fadcbf 100%); /* IE10+ */
	            background: linear-gradient(135deg,  #10727e 0%,#fadcbf 100%); /* W3C */
	            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#10727e', endColorstr='#fadcbf',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
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
   			p { cursor: pointer; cursor: hand; }
        </style>
    </head>
    <body>
		<div class="container panel-3">
			<div class="row">
				<div class="small-6 columns text-left">
					Spread The Love > Counsellor > <b>Home</b>
				</div>
				<div class="small-6 columns text-right">
					
				</div>
			</div>	
			<div class="row" style="padding-top: 20px;">
				<div class="small-12 columns">
					<div id="sorts" class="button-group">
						<button class="tiny radius success" data-sort-value="random">Recent</button>
						<button id="sortsB" class="tiny radius " data-sort-value="number">Popular</button>
					</div>
				</div>		
				
				<!-- Post Listing -->
				<div class="small-9 columns">
					<div class="row" id="container">
						<c:forEach var="message" items="${actionBean.messages}">
						<div class="item" style="width: 100%;">
							<div class="small-12 columns panel-1">
								<h4><small class="white"><b><i class="fa fa-user"></i> &nbsp;${message.user.displayName } - ${message.title}  </b></small></h4>
								<p class="question" onclick="indivPost(${message.id});">${message.content }</p>
								<!-- Buttons -->
								<div class="row">
									<div class="small-2 columns">
										<h6 class="question">${actionBean.getFeels(message.id)} <i class="fa fa-hand-o-up"></i></h6>
									</div>
									<div class="small-2 columns">
										<h6 class="question">${actionBean.getFollows(message.id) } <i class="fa fa-star"></i></h6>
										<p class="number hide">${actionBean.getFollows(message.id) }</p>
									</div>
									<div class="small-1 columns">
										<s:form action="/generatefollow.action" method="post" id="followForm_${message.id}">
											<input type="hidden" name="messageID" value="${message.id}"/>
										</s:form>
										<s:form action="/counsellorindividualpost.action" method="post"
											id="indivPost_${message.id}">
											<input type="hidden" name="messageID" value="${message.id}" />
										</s:form>
									</div>
									<div class="small-7 columns text-right">
										
										<c:choose>
											<c:when test="${actionBean.hasFollowed(message.id)}">
												<button id="followbtn_${message.id}" onclick="follow(${message.id});" class="tiny secondary radius highlight" style="background: #fff"><i class="fa fa-star"></i> <b>Follow</b></button>
											</c:when>
											<c:otherwise>
												<button id="followbtn_${message.id}" onclick="follow(${message.id});" class="tiny secondary radius" style="background: #fff"><i class="fa fa-star"></i> <b>Follow</b></button>	
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
								<c:if test="${not empty actionBean.getAnswer(message.id) }">
									<c:forEach var="answer" items="${actionBean.getAnswer(message.id)}">
									<div class="small-12 columns panel-2">
										<h4><small><b><i class="fa fa-check"></i> &nbsp;Answered by ${answer.user.displayName }</b></small></h4>
										<p class="answer">${answer.content }</p>
										<hr>
									</div>
									</c:forEach>
								</c:if>
							<div class="small-12 columns panel-2 reply">
								<h4><small><i class="fa fa-reply"></i> &nbsp;Leave a reply, ${actionBean.context.user.displayName }</small></h4>
								<form action="/SpreadTheLove/counsellor/reply.action" style="margin-bottom: 0rem">
									<input type="hidden" name="parentMessageId" value="${message.id }"/>
									<textarea id="reply_box" class="commentarea" name="content" style="min-height: 75px"></textarea>
								</form>
							</div>
							<br>
						</div>
						</c:forEach>
					</div>
				</div>
				<!-- Side Bar Nav -->
                <div class="small-3 columns sidebar" style="min-height: 300px">
                    <form action="/SpreadTheLove/counsellor/search.action">
	                    <input id="search_box" tabindex="1" class="commentarea" name="search" type="search" placeholder="Search" />
                    </form>
                    <ul class="side-nav">
                    	<li class="active"><a href="/SpreadTheLove/counsellor/home.action"><i class="fa fa-home fa-fw"></i> Home</a></li>
                    	<li><a href="/SpreadTheLove/counsellor/pending.action"><i class="fa fa-ellipsis-h fa-fw"></i> Pending</a></li>
                        <li><a href="/SpreadTheLove/counsellor/activity.action"><i class="fa fa-bolt fa-fw"></i> Activity</a></li>
                        <li><a href="/SpreadTheLove/counsellor/answered.action"><i class="fa fa-lightbulb-o fa-fw" ></i> Questions I answered</a></li>
                        <li><a href="/SpreadTheLove/counsellor/followed.action"><i class="fa fa-star fa-fw"></i> Questions I followed</a></li>
                        <hr>
                        <li><a href="#"><i class="fa fa-fw fa-gears"></i> Account Settings</a></li>
                        <li><a href="/SpreadTheLove/counsellor/cfaq.action"><i class="fa fa-question fa-fw"></i> FAQ</a></li>
                        <li><a href="/SpreadTheLove/logout.action"><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
                    </ul>
                </div>
			</div>
		</div>
		<script src="/SpreadTheLove/js/vendor/jquery.js"></script>
	    <script src="/SpreadTheLove/js/foundation.min.js"></script>
	    <script src="/SpreadTheLove/js/isotope.pkgd.min.js"></script>
	    <script src="/SpreadTheLove/js/jquery.cookie.js"></script>
	    <script src="/SpreadTheLove/js/trip.min.js"></script>
	    <script>
			var trip = new Trip([
				{ 
					sel : $('#container'),
					content : 'Questions from kids will be listed here.',
					position : 'n',
					showNavigation:true,
					delay : -1
             },
             {
					sel : $('#sortsB'),
					content : 'You can also sort the questions by date or popularity.',
					position : 'e',
					showNavigation:true,
                	delay : -1
             },
             {
					sel : $('#followbtn_1'),
					content : 'If you would like to follow the kid, click on this button!',
					position : 'n',
					showNavigation:true,
	             	delay : -1
	          },
	          {
					sel : $('#reply_box'),
					content : 'Let the child know what you feel about his question.',
					position : 'n',
					showNavigation:true,
	             	delay : -1
	          },
	          {
					sel : $('#search_box'),
					content : 'You can also search for questions using this box.',
					position : 'n',
					showNavigation:true,
	             	delay : -1
	          }
     		], {});
			var $container = $('#container');
			// init
			$container.isotope({
				getSortData: {
					number: '.number parseInt'
				},
				itemSelector: '.item'
			});
			// bind sort button click
		  	$('#sorts').on( 'click', 'button', function() {
		    	var sortValue = $(this).attr('data-sort-value');
		    	$container.isotope({ sortBy: sortValue, sortAscending: false });
			    
		  	});
		    function follow(messageId){
				$.post('/SpreadTheLove/generatefollow.action', $("#followForm_" + messageId).serialize(), function (data) {
			    });
				$('#followbtn_' + messageId ).toggleClass("highlight");
			}
		    function indivPost(messageId){
		    	var form = document.getElementById("indivPost_"+messageId);
		    	form.submit();
			}
		    
		    $(document).ready(function() {
		    	
		        $('.commentarea').keydown(function(event) {
		            if (event.keyCode == 13) {
		                this.form.submit();
		                return false;
		             }
		        });
		    });
	        $(document).foundation();
	        if($.cookie('idp-trip') === null || $.cookie('idp-trip') === "" || $.cookie('idp-trip') === "null" || $.cookie('idp-trip') === undefined)
	        {
	              //no cookie
	              $.cookie('idp-trip', 'true', { expires: 365 });
	              trip.start();
	        }
	        else
	        {
	             //have cookie
	        }
			
	    </script>	
	</body>
</html>