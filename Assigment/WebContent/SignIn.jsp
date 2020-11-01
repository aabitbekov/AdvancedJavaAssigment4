<%@include file = "jsp/header.jsp" %>
<div class="container1" >
<center>
<h2>Sign In</h2><br><br>
<form action="InServlet"  method="post">
              <input type="text" name="username" placeholder="UserName"><br><br><br> 
			  <input type="password" name="password" placeholder="Password"/><br>
				 <hr>
               <input type="submit" value="Sign in" />
           </form>  
           <br>
           <a href="http://localhost:8080/Assigment/Register.jsp">Don't have account?</a>
</center>
</div>

 <%@include file = "jsp/footer.jsp" %> 