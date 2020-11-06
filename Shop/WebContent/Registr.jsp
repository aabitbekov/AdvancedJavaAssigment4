<%@include file = "jsp/header.jsp" %>
<div class="container1" >
<center>
<h1>Register</h1>
<form action="RegisterServlet"  method="post">
             UserName <input type="text" name="username"><br><br><br> 
			 Password <input type="password" name="password" /><br><br><br>
			 Email <input type="email" name="email" /><br><br><br>
				 <hr>
               <input type="submit" value="Sign in" />
           </form>  
</center>
</div>


 <%@include file = "jsp/footer.jsp" %>