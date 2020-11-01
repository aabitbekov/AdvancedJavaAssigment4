<%@include file="jsp/header.jsp" %>
<%@ page import = "java.util.List" %>
<%@ page import = "astanait.com.Classes.Book" %>
<%
List<Book> books = (List<Book>) request.getAttribute("bookList");
for(int i=0; i<books.size(); i=i+3){
	Book book=books.get(i);
	%>
	<div id="extra">
	<div class="container">
	W	<div class="row no-collapse-1">
			<section class="4u"> <a href="#" class="image featured"><img src="<%=book.getImage() %>" alt=""></a>
				<div class="box">
					<p><%=book.getName()%>  by  <%=book.getAuthor() %></p>
					<a href="#" class="button">Read More</a> </div>
			</section><%	book=books.get(i++); %>
			<section class="4u"> <a href="#" class="image featured"><img src="<%=book.getImage() %>" alt=""></a>
				<div class="box">
					<p><%=book.getName()%>  by  <%=book.getAuthor() %></p>
					<a href="#" class="button">Read More</a> </div>
			</section><%	book=books.get(i++); %>
			<section class="4u"> <a href="#" class="image featured"><img src="<%=book.getImage() %>" alt=""></a>
				<div class="box">
					<p><%=book.getName()%>  by  <%=book.getAuthor() %></p>
					<a href="#" class="button">Read More</a> </div>
			</section>
		</div>
	</div>
</div>
<%
}
%>
<!-- Footer -->
		<div id="footer" class="wrapper style2">
			<div class="container">
				<section>
					<header class="major">
						<h2>Do you have some questions?</h2>
						<span class="byline">You will write here!</span>
					</header>
					<form method="post" action="#">
						<div class="row half">
							<div class="12u">
								<input class="text" type="text" name="name" id="name" placeholder="Name" />
							</div>
						</div>
						<div class="row half">
							<div class="12u">
								<input class="text" type="text" name="email" id="email" placeholder="Email" />
							</div>
						</div>
						<div class="row half">
							<div class="12u">
								<textarea name="message" id="message" placeholder="Message"></textarea>
							</div>
						</div>
						<div class="row half">
							<div class="12u">
								<ul class="actions">
									<li>
										<input type="submit" value="Send Message" class="button alt" />
									</li>
								</ul>
							</div>
						</div>
					</form>
				</section>
			</div>
		</div>
	<!-- /Footer -->

	<!-- Copyright -->
		<div id="copyright" >
			<div  class="container"> <span class="copyright">Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)</span>
				<ul class="icons">
					<li><a href="#" class="fa fa-facebook"><span>Facebook</span></a></li>
					<li><a href="#" class="fa fa-twitter"><span>Twitter</span></a></li>
					<li><a href="#" class="fa fa-google-plus"><span>Google+</span></a></li>
				</ul>
			</div>
		</div>

</body>
</html>