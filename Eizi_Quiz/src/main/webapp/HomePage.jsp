<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>HomePage</title>
   <link rel="stylesheet" type="text/css" href="HomePage.css">
  <!--    <link rel="stylesheet" type="text/css" href="nav.css"> -->
    
   
</head>
<body style="background-image: url(images/image2.jpg);">
    
    
    <header>
    <jsp:include page="header.jsp"></jsp:include> 
   <jsp:include page="nav.jsp"></jsp:include> 
   
   
  
    </header>
    
    
  
<div class="comp">
    <p><h1>EINFACHZAUBERER TECHNOLOGIES PRIVATE LIMITED</h1></p>
    </div>
    <div class="pah">
    <h2><b>ABOUT US :</b></h2>
    <h3 style="color:blue;">EINFACHZAUBERER TECHNOLOGIES PRIVATE LIMITED</h3>
    <p>Einfachzauberer Technologies Private Limited is a fast growing, innovative and vibrant software company.<br><br>

We provide process automation and management software that facilitates products on multiple channels,<br><br> different industries and large entities, while seamlessly integrating with various solutions and eCommerce<br><br> platforms.

Einfachzauberer Technologies Private Limited has offices in Bangalore, Chennai, Hyderabad and <br><br> Cochin and teams in various geographies as well.  <button onclick="window.location.href='aboutus.jsp'">Read More</button> </p>

<h2><b>PRODUCTS :</b></h2>
<ol>
<li><h3>Signulu</h3></li>
<li><h3>Atlassian</h3></li>
<li><h3>Amazon Web Services (AWS)</h3></li>
<li><h3>Microsoft Azure</h3></li>
<li><h3>Salesforce</h3></li>  	
<button onclick="window.location.href='product.jsp'">Read More</button>
</ol>
  
</div>
<style>
button {
  background-color: #32c2b4; 
  border: none;
  color: white;
  padding: 10px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>

   
    
</body>
</html>
