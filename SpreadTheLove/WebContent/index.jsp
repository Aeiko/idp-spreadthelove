<!DOCTYPE html>

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
        <link href='http://fonts.googleapis.com/css?family=Covered+By+Your+Grace' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
	  	
		<!-- Attach necessary JS -->
		<script type="text/javascript" src="js/vendor/jquery.js"></script>
		<script type="text/javascript" src="js/vendor/jquery.orbit-1.3.0.js"></script>	
		<script src="https://cdn.firebase.com/v0/firebase.js"></script>
			<!--[if IE]>
			     <style type="text/css">
			         .timer { display: none !important; }
			         div.caption { background:transparent; filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,endColorstr=#99000000);zoom: 1; }
			    </style>
			<![endif]-->
		
		<!-- Run the plugin -->
		<script type="text/javascript">
			$(window).load(function() {
				$('#featured').orbit({bullets: true});
				$('#featured2').orbit({bullets: true});
				$('#responsive').orbit({bullets: true, fluid: true});
			});
		</script>
		
	</head>
	<body>
	
    <div class="container">
            <div class="row">
                <div class="small-6 medium-4 columns text-center">
                    <br>
                    <h1>Spread the Love<i class=" fa fa-heart"></i>
                    </h1>
                </div>
                <div class="small-12 medium-8 large-7 large-centered medium-centered small-centered columns">
                    <img src="http://cdn.vectorstock.com/i/composite/36,15/two-black-and-white-kids-holding-hands-vector-1583615.jpg" width="150">
                </div>
            </div>
    </div>
        
        
	<div class="container">
		<div class="row">
			<div class="ten columns">
				<h6>Where no questions are too awkward to go unanswered...</h6>

                <fieldset>
                    <legend><h6>Ask a question...<i class=" fa fa-comment-o"></i> It's safe in here! :) </h6></legend>
                
                        <fieldset class="five columns" style="float:left;">
                            <legend><h6>Not a member?</h6></legend>
                            <div>
                                Username<input id="createNewUserName" type="text" placeholder="Fake name">
                                Password<input id="createNewUserPassword" type="text" placeholder="******">
                                <a id="register" class="small button">Register</a>
                            </div>

                        </fieldset>
                        <fieldset class="five columns" style="float:center;">
                            <legend><h6>Member login</h6></legend>
                            <div>
                                Username<input type="text" placeholder="Fake name">
                                Password<input type="text" placeholder="******">
                                <a href="/SpreadTheLove/child_homepage.html" class="small button">Login</a>
                            </div>

                        </fieldset>            
                </fieldset>
                
            
				<div id="responsive"> 
					<div class="content" style="">
						<!--<h1>Orbit does content now.</h1>
						<h3>Highlight me...I'm text.</h3>-->
					</div>
					<img src="img/overflow.jpg" />
					<img src="img/captions.jpg" data-caption="#htmlCaption" />
					<img src="img/features.jpg"  />
				</div>
                
                <fieldset>
                    <legend><h6>Recent questions asked</h6></legend>
                    <div class="row">
                        <div class="large-4 small-3 columns left">
                          <input type="text" placeholder="Find Stuff" style="float:left;">
                          <a href="#" class="alert button tiny" style="float:left;">Search</a>
                        </div>
                        <div class="large-4 small-3 columns right">
                            Sort by  :
                             <ul class="button-group">
                                  <li><a href="#" class="small button"><i class="fa fa-group "></i> Popular</a></li>
                                  <li><a href="#" class="small button"><i class=" fa fa-clock-o "></i>Recent</a></li>
                             </ul>
                        </div>
                    </div>
                    
                    <div class="panel radius">
                        <p><h3>Anonymous #1.</h3><p>
                        My dad buys chocolate for me everyday. Is this normal?
                        
                        <br>
                        <br>
                        <br>
                        <ul class="button-group">
                            <li><a href="#" class="alert small button"><i class="fa fa-hand-o-up "></i>I Feel You</a></li>
                            <li><a href="#" class="small button"><i class=" fa fa-arrow-circle-up "></i>Follow Post</a></li>
                            <li><a href="#" class="small button"><i class=" fa fa-comment-o "></i>View Comments</a></li>
                            <li><a href="#" class="small button"><i class=" fa fa-pencil "></i>Reply</a></li>
                        </ul>
                        
                        
                    </div>
                    
                    
                    <div class="panel">
                        <p><h3>Anonymous #2.</h3><p>
                        There's this girl who confessed her feelings for me. I'm a girl too. I think I like her back as well. Am I going to hell for this? :(
                        
                        <br>
                        <br>
                        <br>
                        <ul class="button-group">
                            <li><a href="#" class="alert small button"><i class="fa fa-hand-o-up "></i>I Feel You</a></li>
                            <li><a href="#" class="small button"><i class=" fa fa-arrow-circle-up "></i>Follow Post</a></li>
                            <li><a href="#" class="small button"><i class=" fa fa-comment-o "></i>View Comments</a></li>
                            <li><a href="#" class="small button"><i class=" fa fa-pencil "></i>Reply</a></li>
                        </ul>
                    </div>
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
                    
                </fieldset>
			</div>
		</div>
    </div>    
    
    <script>
        var dataRef = new Firebase("https://crackling-fire-5927.firebaseio.com");
        
        $( '#register' ).click(function() {
         
          var username = $('#createNewUserName').val();
          var password = $('#createNewUserPassword').val(); 
            
          var userRef =dataRef.child('users/'+username.toString()); 
          var messageRef = userRef.child('messages');
          messageRef.set({id:1, message:'hello!'});
          messageRef.set({id:2, message:'hihihi!'});
          
          userRef.set({username: username, password: password});  
          window.location = "http://localhost:8081/SpreadTheLove/child_homepage.html?username=" + username;   
        });
             
    </script>
        
    
    
    <script src="/js/foundation/foundation.min.js"></script>
	
	</body>
</html>