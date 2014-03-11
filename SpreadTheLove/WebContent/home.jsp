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
    </head>
    <body>
        <div class="contain-to-grid sticky" data-options="st icky_on: large">
            <nav class="top-bar" data-topbar>
                <ul class="title-area">
                    <li class="name">
                        <h1><a href="#">Hi Anonymous#1101</a></h1>
                    </li>
                    <li class="toggle-topbar menu-icon"><a href="#">Menu</a></li>
                </ul>
                <section class="top-bar-section">
                    <!-- Right Nav Section -->
                    <ul class="right">
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-power-off fa-fw"></i> Logout</a></li>
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
                                <div class="small-12 columns text-left">
                                    <h4><small><b>Sort by: &nbsp;</b><button class="tiny round secondary"><i class="fa fa-fw fa-rocket"></i> Popular</button> <button class="tiny round secondary"><i class="fa fa-clock-o fa-fw"></i> Recent</button></small></h4>  
                                </div>
                                <fieldset>
                                <fieldset>
	                                	<legend><h6>Ask a question...<i class=" fa fa-comment-o"></i> It's safe in here! :) </h6></legend>
	                                	<textarea placeholder="Ask something or confide in us. We will try our best to help you."></textarea>
	                                </fieldset>
	                                
	                                <c:forEach var="message" items="${actionBean.mList}">
	                                	<div class="small-12 columns panel">
	                                	#${message.getId()}
	                                	<p class="message-content">${message.getContent() }</p> 
	                                	
	                                	<ul class="button-group">
				                            <li><a href="#" class="alert tiny radius  button"><i class="fa fa-hand-o-up "></i> I Feel You</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-arrow-circle-up "></i> Follow Post</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-comment-o "></i> View Comments</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-pencil "></i> Reply</a></li>
				                        </ul>
	                                </c:forEach>	
	                                <div class="small-12 columns panel">
	                                    #12345
	                                    <p class="message-content">Why is the sky blue?</p> 
	                                    
	                                     <ul class="button-group">
				                            <li><a href="#" class="alert tiny radius  button"><i class="fa fa-hand-o-up "></i> I Feel You</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-arrow-circle-up "></i> Follow Post</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-comment-o "></i> View Comments</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-pencil "></i> Reply</a></li>
				                        </ul>
	                                  
	                                </div>
                                </fieldset>
                            </div>
                        </div>
                        <!-- Side Bar Nav -->
                        <div class="small-4 columns sidebar" style="min-height: 500px">
                            <input tabindex="1" type="search" placeholder="Search" >
                            <ul class="side-nav">
                                <li class="active"><a href="#"><i class="fa fa-home fa-fw"></i> Home</a></li>
                                <li><a href="/SpreadTheLove/activity.action"><i class="fa fa-bolt fa-fw"></i> Activity</a></li>
                                <li><a href="/SpreadTheLove/questions.action"><i class="fa fa-lightbulb-o fa-fw" ></i> Questions I asked</a></li>
                                <li><a href="#"><i class="fa fa-anchor fa-fw"></i> Posts I follow</a></li>
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
