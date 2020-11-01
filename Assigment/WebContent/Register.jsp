<%@include file = "jsp/header.jsp" %>
<div class="container1" >
<center>
<h2>Registration Form </h2>
<form action="RegistrServlet"  method="post"><br><br>
				 <input type="text" name="fname" placeholder="First name:"><br><br>
			  <input type="text" name="lname" placeholder="Last name:"><br> <br>
              <input type="text" name="username" placeholder="UserName:"><br> <br>
			  <input type="password" name="password" placeholder="Password:"/><br><br>
			  <input type="email" name="email" placeholder="Email:"><br>
               <input type="submit" value="Register" />
           </form>  
           <br>
</center>
</div>

 <%@include file = "jsp/footer.jsp" %> 