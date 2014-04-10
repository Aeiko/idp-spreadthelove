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
        
        .panel-4 {
			color: #000;
			background: #fff; /* Old browsers */
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
	            <div class="tweleve columns panel-4">
	           	</br>
	           	<h4> Informed Consent Form </h4>

					<strong>Description:</strong>  You are invited to participate in a research study on using Spread The Love, an online platform where questions can be asked anonymously and answered.  You will be asked to perform a series of tasks with the Spread The Love web application, as well as complete a questionnaire on your thoughts about the application after the experiment.
					<br/></br>
					<strong>Time Involvement:</strong>  Your participation will take less than 10 minutes.
					<br/></br>
					<strong>Risks and Benefits:</strong>  There are no known risks associated with this study. There are no expected benefits from this experiment.
					<br/></br>
					<strong>Payments: </strong> There will be no reimbursement for your participation in this study.
					<br/></br>
					<strong>Participant's Right:</strong>  If you have read this form and have decided to participate in this project, please understand your participation is voluntary and you have the right to withdraw your consent or discontinue participation at any time without penalty or loss of benefits to which you are otherwise entitled.  The alternative is not to participate.  You have the right to refuse to answer any questions. With your additional permission, your photographs will be taken during the study.
					<br/></br>
					<strong>Other Information: </strong>
					If you have any questions, concerns or complaints about this research, its procedures, risks and benefits, contact Tan Siong Min at 9843 7125 or smtan.2011@smu.edu.sg. If you have any questions pertaining to your rights as a participant, you may contact the Institutional Review Board Secretariat at 6828-1925 or irb@smu.edu.sg.
					<br/></br>
					If you agree to the terms and conditions above, please click on the Proceed button to proceed with the web experiment
					<br/></br>
			
					
				
				<s:form action="/webexp3.action">
					<div>
						<s:submit name="Proceed" class="tiny radius button success" value="Proceed" />	
					</div>
				</s:form>				
	            </div>
        </div>
    </div>	
	
		
	</div>
	<script src="js/vendor/jquery.js"></script>
	<script src="js/foundation.min.js"></script>
	<script src="layerslider/js/greensock.js" type="text/javascript"></script>
	<script src="layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
	<script src="layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
	
	<script>
		$(document).foundation();
	</script>
</body>
</html>