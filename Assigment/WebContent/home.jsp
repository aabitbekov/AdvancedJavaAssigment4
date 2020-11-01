<%@include file="jsp/header.jsp" %>
<%@ page import ="java.util.List" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.util.Date" %>
<div class="container">
<%
String name = (String) request.getAttribute("firstname");
String lname = (String) request.getAttribute("lastname");
Integer count;
count = (Integer) session.getAttribute("count");
Date now;
now = (Date) session.getAttribute("date");
%>
<center>
<h2>Hello <%=name+" "+lname %>!</h2>
<h4>You counter:<%=count %></h4>
<h4>Time is :<%=now %></h4>
</center>
<form method="get" action="removecook">
<input type="submit" value="Logout">
</form>
</div> 


<%@include file="jsp/footer.jsp"%>