<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib prefix="d"
	uri="http://stripes.sourceforge.net/stripes-dynattr.tld"%>
	<%@ include file="googleAnalytics.jsp" %>
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
				Spread The Love > <b>Account Settings</b> 
			</div>
			<div class="small-6 columns text-right"></div>
		</div>
		<div class="row" style="padding-top: 20px;">
			
			<!-- Post Listing -->
			<div class="small-9 columns">
				<div class="row" id="container">
					<div class="small-11 columns panel" style="width:700px;">
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
					</div>
	            </div>
			</div>
			<!-- Side Bar Nav -->
			<div class="small-3 columns sidebar" style="min-height: 300px">
				<form action="/counsellor/search.action">
					<input tabindex="1" class="commentarea" name="search" type="search"
						placeholder="Search" />
				</form>
				<ul class="side-nav">
					<li><a href="/home.action"><i
							class="fa fa-home fa-fw"></i> Home</a></li>
					<li><a href="/activity.action"><i
							class="fa fa-bolt fa-fw"></i> Activity</a></li>
					<li><a href="/questioniasked.action"><i
							class="fa fa-lightbulb-o fa-fw"></i> Questions I asked</a></li>
					<li><a href="/postsifollowed.action"><i
							class="fa fa-star fa-fw"></i> Posts I followed </a></li>
					<hr>
					<li  class="active"><a href="/accountsettings.action"><i
							class="fa fa-fw fa-gears"></i> Account Settings</a></li>
					<li><a href="/faq.action"><i
							class="fa fa-question fa-fw"></i> Help</a></li>
					<li><a href="/logout.action"><i
							class="fa fa-sign-out fa-fw"></i> Logout</a></li>
				</ul>
			</div>
		</div>
	</div>

	<script src="/js/vendor/jquery.js"></script>
	<script src="/js/foundation.min.js"></script>
	<script src="/js/isotope.pkgd.min.js"></script>
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
				$.post('/generatefollow.action', $("#followForm_" + messageId).serialize(), function (data) {
			    });
				$('#followbtn_' + messageId ).toggleClass("highlight");
			}
		    function feel(messageId){
				$.post('/generateifeelyou.action', $("#feelForm_" + messageId).serialize(), function (data) {
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
</body>
</html>



