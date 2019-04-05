<%@page import="java.util.Date"%>
<%@page import="org.pk.hotel.constants.GlobalConstants"%>
<%@page import="org.pk.hotel.beans.Login"%>
<%
	Login login =(Login) session.getAttribute(GlobalConstants.USER);
%>

<div class="templatemo_content_left_section">
	<h1 style="text-align: center; font-size: 20px; color: #111110;"> WELCOME</h1>
	<ul style="margin-left: 35px; padding: 0px 0px 0px 0px; color: #25211e; font-weight: bold;">
		<li><a href="" style="color: #25211e; font-weight: bold;"> <%=new Date() %>
		
		</a></li>
		<li><a href="UserHome.jsp" style="color: #25211e; font-weight: bold;"> Welcome,<%=login.getUserName() %>
		</a></li>
		<% if(login.getUserName().equals("cook")){%>
		<li><a href="AddCategory.jsp" style="color: #25211e; font-weight: bold;"> Add Category </a></li>
		<li><a href="AddItem.jsp" style="color: #25211e; font-weight: bold;"> Add Item </a></li>
		<li><a href="ViewAllItems.jsp" style="color: #25211e; font-weight: bold;"> View All Items </a></li>
		<li><a href="DeleteAnItem.jsp" style="color: #25211e; font-weight: bold;"> Delete an Item </a></li>
		<li><a href="ViewOrder.jsp" style="color: #25211e; font-weight: bold;"> View Order </a></li>
		<li><a href="ViewBillToCook.jsp" style="color: #25211e; font-weight: bold;"> View Bill </a></li>
		<li><a href="LoginPage.jsp" style="color: #25211e; font-weight: bold;"> Log Out </a></li>
		<%} else{%>
		<li><a href="ViewCategory.jsp" style="color: #25211e; font-weight: bold;">Place Order</a></li>
		<li><a href="OrderStatus.jsp" style="color: #25211e; font-weight: bold;"> Order Status </a></li>
		<li><a href="ViewBill.jsp" style="color: #25211e; font-weight: bold;"> View Bill </a></li>
		<li><a href="LoginPage.jsp" style="color: #25211e; font-weight: bold;"> Log Out </a></li>
		<%} %>
	</ul>
</div>
