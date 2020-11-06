<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
<style>
    body{        
        padding-top: 60px;
        padding-bottom: 40px;
        background-image:url("http://cdn.onlinewebfonts.com/svg/img_449108.png");	
    }
    .fixed-header, .fixed-footer{
        width: 100%;
        position: fixed;        
        background: #333;
        padding: 10px 0;
        color: #fff;
    }
    .fixed-header{
        top: 0;
    }
    .fixed-footer{
        bottom: 0;
    }
    .container{
        width: 80%;
        margin: 0 auto; 
    }
     .container1{
        width: 80%;
        margin: 0 auto; 
         border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
    }
    nav a{
        color: #fff;
        text-decoration: none;
        padding: 7px 25px;
        display: inline-block;
    }
  input, select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input:focus {
background-color: lightgrey;
}
	input[type=submit] {
  width: 100%;
  background-color: black;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
@media (max-width: 768px) {
    .fixed-header, fixed-footer + * {
      
         width: 100%;
        heigth:600px
        position: fixed;        
        background: #333;
        padding: 10px 0;
        color: #fff;
    }
}
</style>
</head>
<body>
<!-- Wrapper -->
			<div class="wrapper style1">

				<!-- Header -->
					<div id="header" class="skel-panels-fixed">
						<div id="logo">
							<h1><a href="index.html">Library</a></h1>
							<span class="tag">by Almaz</span>
						</div>
						<nav id="nav">
							<ul>
								<li class="active"><a href="home.jsp">Homepage</a></li>
								<li><a href="Books.jsp">Books</a></li>
								<li><a href="SignIn.jsp">Sign In</a></li>
								<li><a href="About.jsp">About</a></li>
							</ul>
						</nav>
					</div>