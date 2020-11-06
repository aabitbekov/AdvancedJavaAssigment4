<%@include file = "jsp/headera.jsp" %>
<%@ page import ="astanait.com.Cart" %>
<%@ page import ="astanait.com.Product" %>
<%@ page import ="java.util.List" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.util.Date" %>

<div class="container1">
<%
Integer count;
count = (Integer) session.getAttribute("count");
Date now;
now = (Date) session.getAttribute("date");
%>
<center>
<h4>You counter:<%=count %></h4>
<h4>Time is :<%=now %></h4>
</center>
<form method="get" action="removecook">
<input type="submit" value="Logout">
</form>
</div> 



<%-- <%
  List<Cart> carts = new ArrayList<Cart>();
  carts = (List<Cart>)session.getAttribute("carts");
  request.setAttribute("carts", carts);
  for(Cart cart : carts){
%>
<div class="product-item">
 <img src="<%=cart.getImage()%>">
  <div class="product-list">
  <h3><%=cart.getMark() %></h3>
  <h3><%= cart.getModel() %></h3>
   <span class="price"><%=cart.getPrice() %></span>
  </div>
<% } %>  --%>

<%@include file = "jsp/footer.jsp" %>