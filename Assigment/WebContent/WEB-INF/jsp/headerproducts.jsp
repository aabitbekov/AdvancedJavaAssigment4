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
        background-color:black;
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
.product-item {
  width: 300px;
  text-align: center;
  margin: 0 auto;
  border-bottom: 2px solid #F5F5F5;
  background: white;
  font-family: "Open Sans";
  transition: .3s ease-in;
}
.product-item:hover {border-bottom: 2px solid #fc5a5a;}
.product-item img {
  display: block;
  width: 100%;
}
.product-list {
  background: #fafafa;
  padding: 15px 0;
}
.product-list h3 {
  font-size: 18px;
  font-weight: 400;
  color: #444444;
  margin: 0 0 10px 0;
}
.price {
  font-size: 16px;
  color: #fc5a5a;
  display: block;
  margin-bottom: 12px;
}
.button {
  text-decoration: none;
  display: inline-block;
  padding: 0 12px;
  background: #cccccc;
  color: white;
  text-transform: uppercase;
  font-size: 12px;
  line-height: 28px;
  transition: .3s ease-in;
}
.product-item:hover .button {background: #fc5a5a;}
</style>
</head>
<body>
    <div class="fixed-header">
        <div class="container">
            <nav>
               <a href="http://localhost:8080/Shop/index.jsp">SHOP</a>
            <a href="#"></a>
            <a href="#"></a>
                <a href="http://localhost:8080/Shop/ShowCart.jsp">Home</a>
	                <a href="http://localhost:8080/Shop/ProductServlet">Products</a>
	                <a href="#">Services</a>
			        <a href="#"></a>
			        <a href="#"></a>
               		<a href="http://localhost:8080/Shop/SignIn.jsp">Sign in</a>		            
           </nav>
        </div>
    </div>