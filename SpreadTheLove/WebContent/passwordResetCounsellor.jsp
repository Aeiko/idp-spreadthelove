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
		<script type="text/javascript" src="js/vendor/jquery.js"></script>

    
    	<script>
            $(document).ready(function(){
                $('button').click(function(){       
                    alert("Your password has been sent to your email address.");
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
 
            
    <!-- counsellor -->
            
    <div class="row">
        <div class="large-3 columns">
            <label>Username <label>
            <input type="text"  /> 
        </div>
    </div>

    <div class="row">
        <div class="large-4 columns">
            <label>Email Address <label>
            <input type="text"  /> 
        </div>
    </div>
            
    <div class="row">
        <div class="small-6 columns">
            <button id="submitBtn" class="black"  type="submit" >Submit</button>
        </div>
    </div>        
    
            
            
</div>

</body>


