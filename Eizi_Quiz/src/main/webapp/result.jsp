 <%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>


<html>
<head>
<title>Eizitech</title>
<link rel="stylesheet" type="text/css" href="style.css">



<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


</head>

<body style="background-color:burlywood; ">

    <script type="text/javascript">
        window.onbeforeunload = function() { return "Warning: Your work will be lost!"; };
    </script>
<header>
<img alt="logo" src="images/logo.png" width="auto" height="80px" >
   <!--   <jsp:include page="header.jsp"></jsp:include> 
    <marquee style="background-color:#32c2b4; height:40px; font-size:30px; margin-top:10px; color:white;border-radius:10px;">
Welcome to Einfachzauberer Technologies Private Limited</marquee>      -->   
      <%-- <li><button style="background-color: skyblue"> --%> 
        
        
        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
  <button class="btn btn-primary me-md-5" type="button"><a href="UserLogout.jsp"style="color:white;">Logout</a></button>

</div>
        
      <%--  <a href="UserLogout.jsp" style="text-decoration: none;">Logout</a></button></li> --%> 

</header>
    <div id="section" >
    <h2>Test Finished:</h2>
    <ul>
      <li>Your result is saved.</li>
      <li>Please wait while others finish their test.</li>
      <li>Please don't press close or reload this window.</li>
    </ul>  
    
    <br/>
    <h2>Happy Coding!! :) :)</h2>
    </div>
    
</body>
<style>

header
{
margin-top:10px;
width:100%;

}
header li
{
magin-right:20px;
float:right;
list-style-type:none;

text-decoration: none;
    color: aliceblue;
    padding: 5px 20px;
    border: 5px solid transparent;
    transition: 0.6s ease;
    border-radius:10px;
display:inline-block;


}


header li a:hover
{

    background-color: #c0c0c0;
    color: black;
} 

#section{
	background-image: url(image24.jpg);
	
}

</style>
</html>