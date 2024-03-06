<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale1.0">
<title>Contact Page</title>
<link rel="stylesheet" type="text/css" href="nav.css">
 <link rel="stylesheet" type="text/css" href="contact.css"> 


</head>
<body style="background-image: url(images/image2.jpg)">
<header>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include> 
</header>
<div class="main15">
<h2 style="margin-left:50px;font-size:30px">CONTACTS</h2><br><br>
<h4>Address :</h4>
<hr>
<h4>#141, 2nd Floor, Outer Ring Road, Teacher's Colony,<br><br> Sector 5, HSR Layout, Bangalore 560034</h4><br><br>
<h4>Landmark :</h4>
<hr>
<h4>Above My Baby Store</h4><br><br>
<h4>Phone :</h4>
<hr>
<h4>+91 8086612659</h4><br><br>
<h4>Email :</h4>
<hr>
<h4>info@eizitech.com</h4><br>
</div>
<fieldset style="background-color:#08B8BE">
<div class="container">
<div class="div1">
<p style="margin-left: 30px;margin-top:30px">BANGALORE<br><br>
#141, 2nd Floor, Outer Ring Road,<br><br> Teacher's Colony, Sector 5,<br><br> HSR Layout, Bangalore 560034<br><br>
Landmark: Above My Baby Store<br><br>

Phone: +91 8086612659 </p>

</div>

  <div class="div2">
  <p style="margin-left: 30px; margin-top:50px"> KOCHI<br><br>
#16, Geo Infopark, 2nd floor,<br><br> KINFRA, Infopark P.O., Kakkanad,<br><br>
Kochi - 682042</p>
  </div>
  <div class="div4" style="border:5px; color:solid block"> 
  <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7777.721905642734!2d77.6350041!3d12.9166571!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae15f0fa16facd%3A0xb7605f8183d73165!2sEinfachzauberer%20Technologies%20Private%20Limited!5e0!3m2!1sen!2sin!4v1704965637001!5m2!1sen!2sin" width="600" height="300" style="border:0; border-color:solid black;" allowfullscreen="yes" loading="eager" referrerpolicy="no-referrer-when-downgrade"></iframe>
  

  </div>
  </div>
  </fieldset>
  
  






</body>

<style>
.main15{
	margin-left:60px;
}


.container{
	display: flex;
	column-gap:20px;
}
.div1{
	border: 1px solid white;
	width:300px;
	height:300px;
	
}
.div2{
	border:1px solid white;
	width:300px;
	height:300px;
}
</style>


</html>