<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0"); //prevents caching at the proxy server
%>
<%@page import="org.pk.hotel.constants.GlobalConstants"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Restaurant E-menu System</title>
<link href="resources/css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container">
		<!-- end of menu -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1 align="center">WELCOME TO MAINLAND INDIA</h1>
			</div>
		</div>
		<div id="templatemo_header"
			style="background: url('./resources/images/12.jpg'); background-size: 50% 100%;"></div>
		<!-- end of header -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1 align="center">LOGIN</h1>
			</div>
		</div>
		<div id="templatemo_content">

			<div id="templatemo_content_left"
				style="margin-top: 3px; height: 150px; background-color: orange; border: 4px solid black;">
				<div class="templatemo_content_left_section">
					<h1 style="text-align: center; font-size: 20px; color: #111110;">WELCOME</h1>
					<ul
						style="margin-left: 35px; padding: 5px 5px 4px 5px; color: #25211e; font-weight: bold;">
						<li><a href="HomePage.html"
							style="color: #25211e; font-weight: bold;"> Home </a></li>
						<li><a href="LoginPage.jsp"
							style="color: #25211e; font-weight: bold;"> Login </a></li>
						<li><a href="AboutUs.html"
							style="color: #25211e; font-weight: bold;">About Us</a></li>
						<li><a href="ContactUs.html"
							style="color: #25211e; font-weight: bold;">Contact Us </a></li>
					</ul>
				</div>
			</div>
			<form action="control?action=login" method="post">
				<table
					style="width: 40%; margin: 30px; padding: 30px; margin-left: 300px; border-style: double; color:black; font-weight:bold;">
					<tr>
						<td colspan="2" style="text-align: center; font-size: 20px">
							Login</td>
					</tr>
					<%
						if (!GlobalConstants.MESSAGE.equals("") && GlobalConstants.MESSAGE != null) {
							out.write("<tr><td colspan='3' align='center' style=''color:white;visibility:visible'> "
									+ GlobalConstants.MESSAGE + " </td></tr>");
							GlobalConstants.MESSAGE = "";
						}
					%>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="userName" id="userName" /></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" id="pass" /></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="Login" /> <input type="reset" /></td>
					</tr>
				</table>
			</form>
			<!-- end of content left -->
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