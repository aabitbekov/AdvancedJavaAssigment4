<%@include file = "jsp/header.jsp" %>
<div class="container1" >
<center>
<h1>Sign In</h1>
<form action="InServlet"  method="post">
             UserName <input type="text" name="username"><br><br><br> 
			 Password <input type="password" name="password" /><br><br><br>
				 <hr>
               <input type="submit" value="Sign in" />
           </form>  
           <br>
           <a href="http://localhost:8080/Shop/Registr.jsp">Don't have account?</a>
</center>
</div>

 <%@include file = "jsp/footer.jsp" %> 