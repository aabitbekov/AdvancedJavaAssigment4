<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.dropotron.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-layers.min.js"></script>
		<script src="js/init.js"></script>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
						<link rel="stylesheet" href="123.css" />
</head>
<script>
    function searchBook()
    {
        var xhttp = new XMLHttpRequest();
        var name = document.getElementById("searchId").value;
        if (name == "")
        {
            document.getElementById("searchId").value = "Write here...";
            return;
        }
        xhttp.onreadystatechange = function ()
        {
            if (this.readyState == 4 && this.status == 200)
            {
                var bookList = JSON.parse(this.responseText);
                if(bookList.length>0)
                {
                    document.getElementById("bookId").value = bookList[0].id;
                    document.getElementById("bookName").value = bookList[0].name;
                    document.getElementById("bookAuthor").value = bookList[0].author;
                    document.getElementById("bookImage").src = bookList[0].image;
                }
                else
                {
                    document.getElementById("searchId").value = "Neither book with name "+name+" was found";
                }
            }
        };
        xhttp.open("POST", "${pageContext.request.contextPath}/servlet", true);
        xhttp.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhttp.send("submit=search&name="+name);
    }
</script>
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
								<li class="active"><a href="home.jsp"></a></li>
								<li><a href="http://localhost:8080/Assigment/BookServletforAdmin">Books</a></li>
								<li><a href="http://localhost:8080/Assigment/UsersDervlet">Readers</a></li>
							</ul>
						</nav>
					</div>