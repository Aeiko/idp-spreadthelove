<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib prefix="d"
	uri="http://stripes.sourceforge.net/stripes-dynattr.tld"%>
<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Spread the love</title>
<link rel="stylesheet" href="css/foundation.css" />
<link rel="stylesheet" href="css/custom.css" />
<link rel="stylesheet"
	href="font-awesome-4.0.3/css/font-awesome.min.css">
<link rel="stylesheet" href="css/testing.css">

<script src="js/vendor/modernizr.js"></script>
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
				Spread The Love > <b>Home</b> 
			</div>
			<div class="small-6 columns text-right"></div>
		</div>
		<div class="row">
		
		</div>
		<div class="row" style="padding-top: 20px;">
			
			<!-- Post Listing -->
			<div class="small-9 columns">
				<div class="row" id="container">
						<div class="item">
							<div class="small-11 columns panel-1" style="width:700px;">
								<h4>
									<small class="white"><b><i class="fa fa-user"></i>
											&nbsp;${actionBean.message.user.displayName } - ${message.title}  </b></small>
								</h4>
								<p class="question">${actionBean.message.content }</p>
								<!-- Buttons -->
								<div class="row">
									<div class="small-2 columns">
										<h6 class="question">${actionBean.getFeels(actionBean.message.id)}
											<i class="fa fa-hand-o-up"></i>
										</h6>
									</div>
									<div class="small-2 columns">
										<h6 class="question">${actionBean.getFollows(actionBean.message.id) }
											<i class="fa fa-star"></i>
										</h6>
										<p class="number hide">${actionBean.getFollows(actionBean.message.id) }</p>
									</div>
									<div class="small-1 columns">
										<s:form action="/generatefollow.action" method="post"
											id="followForm_${actionBean.message.id}">
											<input type="hidden" name="messageID" value="${message.id}" />
										</s:form>
										<s:form action="/generateifeelyou.action" method="post"
											id="feelForm_${actionBean.message.id}">
											<input type="hidden" name="messageID" value="${message.id}" />
										</s:form>
									</div>
									<div class="small-7 columns text-right">
										
										<c:choose>
											<c:when test="${actionBean.hasFelt(message.id)}">
												<div class="small-offset-4 small-5 columns">
														<img src="img/splleft2.png" alt="splleft1" class="left-marker">
														<div class="feltdotted-line"></div>
														<img src="img/splright2.png" alt="splright1" class="feltright-marker">
												</div>		
											</c:when>
											<c:otherwise>
												<div class="small-offset-4 small-5 columns">
													<img src="img/splleft1.png" alt="splleft1" class="left-marker">
													<div class="container1" >
														<div class="dotted-line"></div>
														<img src="img/splright1.png" alt="splright1"
															id="${message.id}"
															class="right-marker draggable" style="cursor: w-resize">
													</div>
												</div>
											</c:otherwise>
										</c:choose>
										
										<c:choose>
											<c:when test="${actionBean.hasFollowed(actionBean.message.id)}">
												<button id="followbtn_${actionBean.message.id}"
													onclick="follow(${actionBean.message.id});"
													class="tiny secondary radius highlight"
													style="background: #fff">
													<i class="fa fa-star"></i> <b>Follow</b>
												</button>
											</c:when>
											<c:otherwise>
												<button id="followbtn_${actionBean.message.id}" onclick="follow(${actionBean.message.id});" class="tiny secondary radius" style="background: #fff">
													<i class="fa fa-star"></i> <b>Follow</b>
												</button>
											</c:otherwise>
										</c:choose>
										
										
									</div>
								</div>
							</div>
							<c:if test="${not empty actionBean.getAnswer(actionBean.message.id) }">
									<c:forEach var="answer" items="${actionBean.getAnswer(actionBean.message.id)}">
									<div class="small-11 columns panel-2" style="width:700px;">
										<h4><small><b><i class="fa fa-check"></i> &nbsp;Answered by ${answer.user.displayName }</b></small></h4>
										<p class="answer">${answer.content }</p>
										<hr>
									</div>
									</c:forEach>
								</c:if>
							<div class="small-11 columns panel-2 reply" style="width:700px;">
								<h4>
									<small><i class="fa fa-reply"></i> &nbsp;Leave a reply,
										${actionBean.context.user.displayName }</small>
								</h4>
								<form action="/SpreadTheLove/reply.action"
									style="margin-bottom: 0rem">
									<input type="hidden" name="parentMessageId"
										value="${actionBean.message.id }" />
									<textarea class="commentarea" name="content"
										style="min-height: 75px"></textarea>
								</form>
							</div>
							<br>
						</div>
				</div>
			</div>
			<!-- Side Bar Nav -->
			<div class="small-3 columns sidebar" style="min-height: 300px">
				<form action="/SpreadTheLove/search.action">
					<input tabindex="1" class="commentarea" name="search" type="search"
						placeholder="Search" />
				</form>
				<ul class="side-nav">
					<li class="active"><a href="/SpreadTheLove/home.action"><i
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
					<li><a href="/SpreadTheLove/faq.action"><i
							class="fa fa-question fa-fw"></i> Help</a></li>
					<li><a href="/SpreadTheLove/logout.action"><i
							class="fa fa-sign-out fa-fw"></i> Logout</a></li>
				</ul>
			</div>
		
	</div>

	<script src="/SpreadTheLove/js/vendor/jquery.js"></script>
	<script src="/SpreadTheLove/js/foundation.min.js"></script>
	<script src="/SpreadTheLove/js/isotope.pkgd.min.js"></script>
	<script>
			var $container = $('#container');
			// init
			$container.isotope({
				getSortData: {
					number: '.number parseInt'
				},
				// options
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
		    function feel(messageId){
				$.post('/SpreadTheLove/generateifeelyou.action', $("#feelForm_" + messageId).serialize(), function (data) {
			    });
				$('#feelbtn_' + messageId ).toggleClass("highlight");
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
	    </script>
	    
<script src="js/vendor/jquery-1.10.2.js"></script>
<script src="js/vendor/jquery-ui-1.10.4.custom.js"></script>
<script src="js/vendor/testing.js"></script>

</body>
</html>



