<%-- <%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>

<%
String email=(String)session.getAttribute("email");
if(email==null){
	response.sendRedirect("index.jsp");
}


%>

<html>
<head>
<title>Eizitech</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="home.css">
</head>

<body class="pho">

<header>
<img alt="logo" src="logo.png" width="auto" height="80px" >
  <!--   <jsp:include page="header.jsp"></jsp:include>  -->       
        </header>
    <div id="section">
    <h2>Instructions:</h2>
    <ul>
	  <li>Total Questions: 30</li>
	  <li>Time Alloted: 30 Minutes</li>
	
	  <li>There is no negative marking</li>
	  
	  <li>Click on <b>Start</b> button to start the test</li>
	  <li>After the test starts, don't press back or refresh button or don't close the browser window</li>
	</ul>  
    
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button id="start" style="width:60px;height:30px ;cursor:pointer;background-color:#03cae4;border-radius:2px" onClick="parent.location='test.jsp';">Start</button>    
    </div>
    
</body>

</html>  --%>


<%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>

<%
String email=(String)session.getAttribute("email");
if(email==null){
	response.sendRedirect("index.jsp");
}


%>


<html>
<head>
<title>Eizitech</title>
<link rel="stylesheet" type="text/css" href="style.css">
<%-- <link rel="stylesheet" type="text/css" href="home.css">--%>

</head>

<body class="pho">

<header>
<img alt="logo" src="images/logo.png" width="auto" height="80px" >
  <!--   <jsp:include page="header.jsp"></jsp:include>  -->       
        </header>
    <div id="section">
    <h1 style="color:#ffffff">Instructions:</h1>
    <ul>
	  <li style="color:cyan;"><h2>Total Questions: 30</h2></li>
	  <li style="color:cyan;"><h2>Time Alloted: 30 Minutes</h2></li>
	  <li style="color:cyan;"><h2>There is no negative marking</h2></li>
	  
	  <li style="color:cyan;"><h2>Click on <b>Start</b> button to start the test</h2></li>
	  <li style="color:cyan;"><h2>After the test starts, don't press back or refresh button or don't close the browser window</h2></li>
	</ul>  
    
    <br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <button class=" button button2" id="start" style="cursor:pointer;" onClick="parent.location='test.jsp';">Start</button>    
    </div>
    
</body>
<style>
.button {
 /* background-color: #4CAF50;  Green */
  background-color:#FF5F1F;
  border-radius: 15px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 19px;
  margin: 4px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
}
.button2:hover {
  box-shadow: 0px 12px 16px 0px rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
.pho{
	/*background-image: url(image14.jpg);*/
	background-image: url(images/circuit.jpg);
}
form
{
	margin-top:0;
	margin-left:350px;
	margin-right:350px;
background-color: white;
border-radius: 10px;

box-shadow: black;
box-shadow:  0 20px 20px 0 rgba(0, 0, 0, 0.5);

}



</style>
</html>

