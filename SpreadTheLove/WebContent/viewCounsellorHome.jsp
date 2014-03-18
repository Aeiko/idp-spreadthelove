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
        <link rel="stylesheet" href="/SpreadTheLove/font-awesome-4.0.3/css/font-awesome.min.css">
        <script src="/SpreadTheLove/js/vendor/modernizr.js"></script>
        <style>
	        .panel-1 {
	        	min-height: 175px;
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
				<!-- Post Listing -->
				<div class="small-9 columns">
					<div class="row">
						<div class="small-12 columns panel-1">
							<h4><small class="white"><b><i class="fa fa-user"></i> &nbsp;Anon1242</b></small></h4>
							<p class="question">I have always felt that cats and dogs are friends. I have always felt that cats and dogs are friends. 
							I have always felt that cats and dogs are friends. I have always felt that cats and dogs are friends. 
							I have always felt that cats and dogs are friends.</p>
							<!-- Buttons -->
							<div class="row">
								<div class="small-2 columns">
									<h6 class="question">67 <i class="fa fa-hand-o-up"></i></h6>
								</div>
								<div class="small-2 columns">
									<h6 class="question">11 <i class="fa fa-star"></i></h6>
								</div>
								<div class="small-6 columns">
								</div>
								<div class="small-2 columns text-right">
									<button class="tiny secondary radius" style="background: #fff;">Follow <i class="fa fa-star"></i></button>
								</div>
							</div>
						</div>
						<div class="small-12 columns panel-2">
							<h4><small><b><i class="fa fa-check"></i> &nbsp;Answered by Counsellor Siongmin</b></small></h4>
							<p class="answer">You are right, havent you watched the cat and dog videos being best friends? :D</p>
							<hr>
						</div>
						<div class="small-12 columns panel-2 reply">
							<h4><small><i class="fa fa-reply"></i> &nbsp;Leave a reply for this child</small></h4>
							<textarea style="min-height: 100px"></textarea>
						</div>
						<br>
					</div>
				</div>
				<!-- Side Bar Nav -->
                <div class="small-3 columns sidebar" style="min-height: 300px">
                    <input tabindex="1" type="search" placeholder="Search" />
                    <ul class="side-nav">
                    	<li class="active"><a href="/SpreadTheLove/home.action"><i class="fa fa-home fa-fw"></i> Home</a></li>
                    	<li><a href="/SpreadTheLove/pending.action"><i class="fa fa-ellipsis-h fa-fw"></i> Pending</a></li>
                        <li><a href="/SpreadTheLove/activity.action"><i class="fa fa-bolt fa-fw"></i> Activity</a></li>
                        <li><a href="/SpreadTheLove/questions.action"><i class="fa fa-lightbulb-o fa-fw" ></i> Questions I answered</a></li>
                        <li><a href="/SpreadTheLove/postifollow.action"><i class="fa fa-star fa-fw"></i> Posts I followed</a></li>
                    </ul>
                </div>
			</div>
		</div>
		<script src="/SpreadTheLove/js/vendor/jquery.js"></script>
	    <script src="/SpreadTheLove/js/foundation.min.js"></script>
	    <script>
	        $(document).foundation();
	    </script>	
	</body>
</html>