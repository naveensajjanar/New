<%
String email=(String)session.getAttribute("email");
if(email!=null){
    if(!email.equals("admin")){
        response.sendRedirect("adminLogin.jsp");
    }
}
else{
    response.sendRedirect("adminLogin.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home page</title></head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- <link rel="stylesheet" type="text/css" href="Ahome.css">--%>
 
 </head>
 <body >
<header>
<!--  <img alt="logo" src="logo.png" width="auto" height="80px" >-->
<jsp:include page="header.jsp"></jsp:include>       
<jsp:include page="navigationnew.jsp"></jsp:include>  

</header>
<div class = "main">
    <marquee class="marq" bgcolor = "grey" direction = "left" loop="" >
        <div class="name">EINFACHZAUBERER TECHNOLOGIES PRIVATE LIMITED</div>
        
    </marquee>
    </div>

<div class="text">

<h2>About US:</h2><br><br>
<p style="color:white;"><h3 style="color:white;">Einfachzauberer Technologies Private Limited is a fast growing,<br><br> innovative and vibrant software company.<br><br>

We provide process automation and management software that <br><br>facilitates products on multiple channels different industries and<br><br> large entities, while seamlessly integrating with various solutions<br><br> and eCommerce platforms.<br><br>

Einfachzauberer Technologies Private Limited has offices in Bangalore, Chennai<br><br>Hyderabad and Cochin and teams in various geographies as well.</h3></p>
</div>


</body>
<style>

body{
	background-image: url(images/image23.jpg);
}
.text h1{
	padding:30px;
	text-align: center;
}


 .main {
 
        text-align:center;
    }
    .marq {
        padding-top:10px;
        padding-bottom:10px;
    }
    .name {
        font-size:36px;
        font-weight:bold;
        color:white;
        padding-bottom:10px;
    }

</style>
</html>