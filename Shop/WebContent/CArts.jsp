<%@include file = "jsp/header.jsp" %>
<%@ page import ="astanait.com.Cart" %>
<%@ page import ="astanait.com.Product" %>
<%@ page import ="java.util.List" %>
<%@ page import ="java.util.ArrayList" %>


<%
	 Cart carts = (Cart) session.getAttribute("carts");
	 List<Product> products = carts.getCarts();
	 if(products != null){
	 for(Product product : products){
%>
<div class="product-item">
 <img src="<%=product.getImage()%>">
  <div>
  <h3><%=product.getCategories() %></h3>
  <h3><%=product.getMark() %></h3>
  <h3><%= product.getModel() %></h3>
      <span class="price"><%=product.getPrice() %></span>
<%
	 }
	 }

%>

<%@include file ="jsp/footer.jsp" %>