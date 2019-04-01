<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0"); //prevents caching at the proxy server
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Restaurant E-menu System</title>
<link href="resources/css/css.css" rel="stylesheet" type="text/css" />
<style>
.myImg {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

.myImg:hover {
	opacity: 0.7;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}

/* Modal Content (Image) */
.modal-content {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
}

/* Caption of Modal Image (Image Text) - Same Width as the Image */
#caption {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

/* Add Animation - Zoom in the Modal */
.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* The Close Button */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>
</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container"
		style="width: 960px; background: orange repeat-y;">
		<!-- end of menu -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1 align="center" style="color: #e25c1f; background: black;">WELCOME
					TO MAINLAND INDIA</h1>
			</div>
		</div>
		<div id="templatemo_header"
			style="background: url('./resources/images/12.jpg'); background-size: 50% 100%;">

		</div>
		<!-- end of header -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1 align="center" style="background: black; color: #e25c1f;">MAINLAND
					INDIA</h1>
			</div>
		</div>
		<div id="templatemo_content">

			<div id="templatemo_content_left"
				style="margin-top: 20px; height: 200px; background-color: orange; border: 4px solid black;">
				<jsp:include page="Menu.jsp" />



			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">


				<div>
					<pre style="font-size: 20px;">
		
			
  	Building amazing experiences around dining.
		
  <!--	<img id="myImg" src=".\resources\images\1.jpg" alt="Photo" style="width:100%; max-width:300px">
<img id="myImg" src=".\resources\images\2.jpg" alt="Photo" style="width:100%; max-width:300px" align="right">
<!-- The Modal 
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01">
  <div id="caption"></div>
</div> -->

<script
							src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Trigger the Modal -->
<img class="myImg" src=".\resources\images\1.jpg" alt="Mainland India"
							width="300" height="220" align="left"
							style="margin-top: -60px; margin-left: -50px; margin-bottom: 30px; margin-right: 30px; padding: 10px; border: none;">
<img class="myImg" src=".\resources\images\2.jpg" alt="Mainland India"
							width="300" height="200" align="right"
							tyle="margin-top: -60px;
    margin-left: -50px;
    margin-bottom: 30px;
    margin-right: 30px;
    padding: 10px;
    border: none;">


<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- The Close Button -->
  <span class="close"
										onclick="document.getElementById('myModal').style.display='none'">&times;</span>

  <!-- Modal Content (The Image) -->
  <img class="modal-content" id="img01">

  <!-- Modal Caption (Image Text) -->
  <div id="caption"></div>

									
								</div>
<script>
	// Get the modal
	var modal = document.getElementById('myModal');

	// Get the image and insert it inside the modal - use its "alt" text as a caption
	var img = $('.myImg');
	var modalImg = $("#img01");
	var captionText = document.getElementById("caption");
	$('.myImg').click(function() {
		modal.style.display = "block";
		var newSrc = this.src;
		modalImg.attr('src', newSrc);
		captionText.innerHTML = this.alt;
	});

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
		modal.style.display = "none";
	}
</script>
		 
		
		
			
						
					</pre>
				</div>
				<div class="cleaner_with_height">&nbsp;</div>

				<a href="subpage.html"></a>
			</div>
			<!-- end of content right -->

			<div class="cleaner_with_height">&nbsp;</div>
		</div>
		<!-- end of content -->

		<div id="templatemo_footer"
			style="border-top: 1px solid #e25c1f; color: #e25c1f; background-color: #111110;">
			<a href="HomePage.html" style="color: orange;">Home</a> | <a
				href="LoginPage.jsp" style="color: orange;"> Login </a> | <a
				href="AboutUs.html" style="color: orange;">About Us</a> | <a
				href="ContactUs.html" style="color: orange;">Contact Us</a><br />
		</div>
		<!-- end of footer -->
		<!--  Free CSS Template www.templatemo.com -->
	</div>
	<!-- end of container -->
</body>
</html>