<%@ include file="googleAnalytics.jsp" %>
<head>
		
		<meta charset="utf-8" />
		<title>Spread the Love</title>
		
		<!-- Attach our CSS -->
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
		<script type="text/javascript" src="js/jquery-1.5.1.min.js"></script>
		<script type="text/javascript" src="js/jquery.orbit-1.3.0.js"></script>	
	    <script src="js/jquery.js"></script>
        <script src="js/foundation.js"></script>
        <script src="js/foundation.alert.js"></script>	
    
        <script>
            $(document).ready(function(){
                $('button').click(function(){       
                    alert("Your password is jan123");
                });            
            });
        </script>
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
            <div class="small-6 medium-4 columns text-center"> <br>
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
            <fieldset class="large-3" style="float: left">
            <legend>Children</legend>
            <a class="th" href="/passwordResetChildren.action">
				<img src="img/children.jpg" />
            </a>
        </fieldset>
        
        <fieldset class="large-3" style="float: left">
                <legend>Counsellor</legend>
                <a class="th" href="/passwordResetCounsellor.action">
                    <img src="img/counsellor.png" style="height: 284px;"	/>
                </a>
            </fieldset>
        </div>

    </div>
    
    
    </div>
</body>

