<%@ include file="googleAnalytics.jsp" %>
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
                        <h1><a href="#">Hi Sarah!</a></h1>
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
                                <div class="small-12 columns text-left">
                                    <h4><small><b>Sort by: &nbsp;</b><button class="tiny round secondary"><i class="fa fa-fw fa-rocket"></i> Popular</button> <button class="tiny round secondary"><i class="fa fa-clock-o fa-fw"></i> Recent</button></small></h4>  
                                </div>
                                <fieldset>
									<legend>Trending Posts</legend>
	                                
	                                <div class="small-12 columns panel">
	                                    #12345
	                                    <p class="message-content">Why is the sky blue?</p> 
	                                    
	                                     <ul class="button-group">
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-arrow-circle-up "></i> Follow Post</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-comment-o "></i> View Comments</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-pencil "></i> Reply</a></li>
				                        </ul>
	                                  
	                                </div>
	                                
	                                <div class="small-12 columns panel">
	                                    #4263
	                                    <p class="message-content">Why are elephants grey? Why can't they be grey? I love the color blueeee.</p> 
	                                    
	                                     <ul class="button-group">
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-arrow-circle-up "></i> Follow Post</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-comment-o "></i> View Comments</a></li>
				                            <li><a href="#" class="button tiny radius "><i class=" fa fa-pencil "></i> Reply</a></li>
				                        </ul>
	                                </div>
	                                
	                                <div class="small-12 columns panel">
	                                    #1247
	                                    <p class="message-content">How can I make my teacher answer my question properly?</p> 
	                                    
	                                     <ul class="button-group">
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
                            <button type="submit" class="tiny" id="searchbtn">Submit</button>
                            <ul class="side-nav">
                            	<li><a href="/activity.action"><i class="fa fa-user fa-fw"></i>My Account</a></li>
                                <li class="active"><a href="#"><i class="fa fa-home fa-fw"></i> Home</a></li>
                                <li><a href="/counsellorViewPending.action"><i class="fa fa-upload fa-fw"></i> View Pending (1)</a></li>
                                <li><a href="/activity.action"><i class="fa fa-bolt fa-fw"></i> Activity</a></li>
                                <li><a href="/questions.action"><i class="fa fa-lightbulb-o fa-fw" ></i> Questions I Answered</a></li>
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
        <script>
        	$( '#register' ).click(function() {
        </script>
    </body>
</html>
