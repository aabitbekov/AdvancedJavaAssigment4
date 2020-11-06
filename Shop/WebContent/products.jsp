<%@ page import = "astanait.com.Product" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.util.ArrayList" %>
<%@include file = "jsp/headerproducts.jsp" %>
<<%-- <c:forEach  var = "product" items = "$(categories)">
         <c:out value = "${product}"/><p>
      </c:forEach> --%>
<script src="http://code.jquery.com/jquery-2.0.2.min.js"></script>
<script>
    $(document).ready(function(){
         PopUpHide();
    });
    function PopUpShow(){
        $("#popup1").show();
    }
    function PopUpHide(){
        $("#popup1").hide();
    }
</script>
<div class="container1">
<div class="b-container">
   Categoriees
    <a href="javascript:PopUpShow()">Show categories</a>
</div>
<div class="b-popup" id="popup1">
    <div class="b-popup-content">
       <ul>
  <li> SROPT </li>
  <li> PHONES </li>
  <li> LAPTOPS </li>
</ul>       
    <a href="javascript:PopUpHide()">Hide popup</a>
    </div>
<br> <br> <br>
</div>
</div>
 <%
  List<Product> products = new ArrayList<Product>();
  products = (List<Product>)request.getAttribute("products");

  
for(Product product : products){
	
%>
<div class="product-item">
 <img src="<%=product.getImage()%>">
  <div>
  <h3><%=product.getCategories() %></h3>
  <h3><%=product.getMark() %></h3>
  <h3><%= product.getModel() %></h3>
      <span class="price"><%=product.getPrice() %></span>
     <input type="submit" class="button" value="To Cart" />
     <%
      session.setAttribute("product",product);
      %>
  </div>
  <hr> <hr>
<% } %>



<%@include file ="jsp/footer.jsp" %>