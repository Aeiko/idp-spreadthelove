<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://stripes.sourceforge.net/stripes.tld"%>
<%@ taglib prefix="d" uri="http://stripes.sourceforge.net/stripes-dynattr.tld"%>
<%@ include file="googleAnalytics.jsp" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
	<meta charset="utf-8" />
	<title>Spread the Love</title>
	
	<!-- Attach our CSS -->
	<link rel="stylesheet" href="css/custom.css">
	<link rel="stylesheet" href="font-awesome-4.0.3/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/foundation.css" />
    <link rel="stylesheet" href="layerslider/css/layerslider.css" type="text/css">
    <script src="js/modernizr.js"></script>

    <style>
        #container { 
            background: url(img/solarclipse2.jpg) no-repeat center center fixed; 
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
        .panel-1 {
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
            background: #468b67; /* Old browsers */
            background: -moz-linear-gradient(-45deg,  #468b67 0%, #d5d4a1 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#468b67), color-stop(100%,#d5d4a1)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(-45deg,  #468b67 0%,#d5d4a1 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(-45deg,  #468b67 0%,#d5d4a1 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(-45deg,  #468b67 0%,#d5d4a1 100%); /* IE10+ */
            background: linear-gradient(135deg,  #468b67 0%,#d5d4a1 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#468b67', endColorstr='#d5d4a1',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
   
        }
        .panel-3 {
            background: #10727e; /* Old browsers */
            background: -moz-linear-gradient(-45deg,  #10727e 0%, #fadcbf 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#10727e), color-stop(100%,#fadcbf)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(-45deg,  #10727e 0%,#fadcbf 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(-45deg,  #10727e 0%,#fadcbf 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(-45deg,  #10727e 0%,#fadcbf 100%); /* IE10+ */
            background: linear-gradient(135deg,  #10727e 0%,#fadcbf 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#10727e', endColorstr='#fadcbf',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
   
        }
    </style>
</head>
<body id="container">
    <div class="container">
        <div class="row">
            <br>
            <div class="small-12 columns panel-1" style="border-radius: 5px; padding-top: 7px; padding-bottom: 7px">
                
                <h4 style="color: #fff;"><b>Spread the Love <i class="fa fa-heart"></i></b> <small style="color: #fff;">where no questions are too awkward to ask</small></h4>
            </div>
            <div class="small-12 columns" id="layers">
                <br><br>
                <!-- LayerSlider start -->
                <div id="layerslider" style="width: 1280px; height: 938px;">
                    <div class="ls-slide" data-ls="slidedelay: 7000; transition2d: 75,79;">
                        <img src="img/spread%20the%20love-01.png" class="ls-bg" alt="Slide background"/>
                    </div>
                    <div class="ls-slide" data-ls="slidedelay: 5000; transition2d: 5; timeshift: -1000;">
                        <img src="img/spread%20the%20love-02.png" class="ls-bg" alt="Slide background"/>
                    </div>
                    <div class="ls-slide" data-ls="slidedelay: 5000; transition2d: 5; timeshift: -1000;">
                        <img src="img/spread%20the%20love-03.png" class="ls-bg" alt="Slide background"/>
                    </div>
                </div>
                <!-- LayerSlider end -->
                <br>
            </div>
            <div class="small-12 columns" >
                <div class="row">
					<fieldset class="small-6 columns" style="background: rgba(255,255,255,0.8);">
						<legend>
							<h6>&nbsp;Not a member? <b>Register now!</b>&nbsp;</h6>
						</legend>
						<s:form action="/register.action">
							<label for="createNewUserName">Enter your desired username</label>
							<input name="username" id="createNewUserName" type="text" placeholder="No real names!"> 
							<label for="createNewUserPassword">Enter your desired password</label>
							<input name="password" id="createNewUserPassword" type="password" placeholder="******">
							<s:submit name="register" class="tiny radius button success" id="register" value="register" />
						</s:form>
					</fieldset>
					<fieldset class="small-6 columns" style="background: rgba(255,255,255,0.8); margin-bottom: 100px;" >
						<legend>
							<h6>&nbsp;<b>Member login</b>&nbsp;</h6>
						</legend>
						<s:form action="/login.action">
							<label for="loginUsername">Username</label>
							<input id="loginUsername" name="username" type="text"> 
							<label for="loginPassword">Password</label>
							<input id="loginPassword" name="password" type="password" placeholder="******">
							<s:submit name="login" class="tiny radius button success" value="login" />
							<a href="/passwordReset.action" class="button tiny secondary radius">Forget Password</a>
						</s:form>
					</fieldset>
                </div>
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
								<a href="/passwordReset.action">Forget Password</a>
							</div>
						</s:form>
					</fieldset>
					
				</div>
			</div>
		</div>
		
		
		<a class="close-reveal-modal">&#215;</a>
		
	</div>
	<script src="js/vendor/jquery.js"></script>
	<script src="js/foundation.min.js"></script>
	<script src="layerslider/js/greensock.js" type="text/javascript"></script>
	<script src="layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
	<script src="layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
	<script type="text/javascript">
         // Running the code when the document is ready
         $(document).ready(function(){
             // Calling LayerSlider on the target element
             $('#layerslider').layerSlider({
                 // Slider options goes here,
                 // please check the 'List of slider options' section in the documentation
                 responsive: false,
                 responsiveUnder: 1920,
                 layersContainer: 1920,
                 pauseOnHover: false,
                 navButtons: false
             });
         });
	</script>
	<script>
		$(document).foundation();
	</script>
</body>
</html>