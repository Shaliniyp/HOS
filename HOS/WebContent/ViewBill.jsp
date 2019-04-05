<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="org.pk.hotel.beans.Login"%>
<%@page import="org.pk.hotel.beans.BillDetails"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.pk.hotel.dao.UserService"%>
<%@page import="org.pk.hotel.constants.GlobalConstants"%>
<%
	UserService uService = new UserService();
	Login login = (Login) session.getAttribute(GlobalConstants.USER);
	ArrayList<BillDetails> bDetails = uService.getBill(Integer.parseInt(login.getUserName()));
%>
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
		<div id="templatemo_header"></div>
		<!-- end of header -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1 align="center">VIEW BILL</h1>
			</div>
		</div>
		<div id="templatemo_content">

			<div id="templatemo_content_left">
				<jsp:include page="Menu.jsp" />
			</div>
			<!-- end of content left -->

			<div id="templatemo_content_right">
				<%
					if (bDetails != null && !bDetails.isEmpty()) {
				%>
				<table
					style="width: 90%; margin: 20px; padding: 20px; border-style: double">
					<%
						if (!GlobalConstants.MESSAGE.equals("") && GlobalConstants.MESSAGE != null) {
								out.write("<tr><td colspan='3' align='center' style=''color:white;visibility:visible'> "
										+ GlobalConstants.MESSAGE + " </td></tr>");
								GlobalConstants.MESSAGE = "";
							}
					%>

					<tr>
						<th>Sr No</th>
						<th>Order Name</th>
						<th>Item Name</th>
						<th>Item Cost</th>
						<th>Item Quantity</th>
						<th>Order Quantity</th>
						<th>Amount</th>
					</tr>
					<%
						double total = 0;
					%>
					
					<%
					
						
						for (int i = 0; i < bDetails.size(); i++) {
								BillDetails bd = bDetails.get(i);
								
								
					%>
					<tr>
						<td><%=i + 1%></td>
						<td><%=bd.getOrderName()%></td>
						<td><%=bd.getItemName()%></td>
						<td><%=bd.getItemCost()%></td>
						<td><%=bd.getItemQnt()%></td>
						<td><%=bd.getOrderQnt()%></td>
						<td><%=Double.parseDouble(bd.getItemCost()) * bd.getOrderQnt()%>
							<%
								total = (Double.parseDouble(bd.getItemCost()) * bd.getOrderQnt()) + total;
							%>
						</td>
					</tr>
					<%
						}
					%>
					<tr>
						<td style="text-align: center;">Total</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><%=total%></td>
					</tr>
					</table>
	
				
				<form action="Payment.html">
					<input type="submit" value="Online Payment" class="btn" />
				</form>
				<form action="FeedBack.html">
					<input type="submit" value="Payment by Cash" class="btn" />
				</form>

				<%
					}
				%>

				<div class="cleaner_with_height">&nbsp;</div>

				<a href="subpage.html"></a>
			</div>
			<!-- end of content right -->

			<div class="cleaner_with_height">&nbsp;</div>
		</div>
		<!-- end of content -->

		<div id="templatemo_footer">
			<a href="HomePage.html">Home</a> | <a href="LoginPage.jsp"> Login
			</a> |<a href="AboutUs.html">About Us</a> | <a href="ContactUs.html">Contact
				Us</a><br />
		</div>
		<!-- end of footer -->
		<!--  Free CSS Template www.templatemo.com -->
	</div>
	<!-- end of container -->
</body>
</html>