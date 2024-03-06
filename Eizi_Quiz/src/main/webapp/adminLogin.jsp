<% 
String email=(String)session.getAttribute("email");
if(email!=null)
{
    if(email.equals("admin"))
    {
        response.sendRedirect("Ahome.jsp");
    }
}

%>
   
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
 <!--  <link rel="stylesheet" type="text/css" href="nav.css">-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">


</head>
<header>
<%--<img alt="logo" src="logo.png" width="auto" height="80px" style="background-color:black;" >--%>

 <jsp:include page="header.jsp"></jsp:include>
 <jsp:include page="nav.jsp"></jsp:include> 
 <%--   
  <marquee style="background-color:#32c2b4; height:40px; font-size:30px; margin-top:10px; color:white;border-radius:10px;">
Welcome to Einfachzauberer Technologies Private Limited</marquee> --%>
    
</header>


<body class="bod">
<!--  <a href="HomePage.jsp" class="forgot" style="font-size:18px; color:buttonface;"> < Back to main Page</a>-->
<input type="hidden" id="state" value="<%=request.getAttribute("state") %>">
 
 <script type="text/javascript">

var state=document.getElementById("state").value;
if(state=="resetSuccess")
	{
	window.alert("Password Rest Successfull","Success");
	
	}

else if(state="resetFailed")
	{

swal("Password Reset Failed","error");
	}
	
var status=document.getElementById("check").value;

if(status=="false"))
{
window.alert("You have Entered wrong email or Password!","Error");

}
else if(status=="true"))
{
	window.alert("Thank You!","Success");

	}

 </script>
 <%
        String status=request.getParameter("status");
 
        
        if(status!=null){
        	if(status.equals("false"))
        	{%>
        		<p style="color:red; font-size:25px; margin-left:20%;margin-right:35%; background-color: white; border-radius:10px;">You have Entered wrong email or Password!</p>
        	<%}
        	else if(status.equals("true"))
        	{
        	%>
        		<p style="color:red">"Thank You....!"</p>
        		
        <%}
        }
        %>
 
 <div class="wrapper">
  <div class="container">
    <div class="col-left">
      <div class="login-text">
        <h2>Welcome to our World<br></h2>
       
        
      </div>
    </div>
    <div class="col-right">
      <div class="login-form">
        <h2>Login</h2>
        <form action="adminLoginDAO.jsp" name="login" onsubmit="return check()">
          <p>
            <label>Username or email address<span>*</span></label>
            <input type="text" name="email" placeholder="Username or Email" required>
          </p>
          <p>
            <label>Password<span>*</span></label>
            <input type="password" name="password" placeholder="Password" required>
          </p>
          <p>
            <input type="submit" value="Sign In" />
          	<p>Forgot Password?  <a href="forgotPassword.jsp">Click Here</a></p>
          </p>
          
          
        </form>
      </div>
    </div>
  </div>
  
</div>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
   
   
   
      
    
  
  

  

  
</body>

<style>


*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 16px;
  font-weight: 400;
  color: #666666;
  background: #eaeff4;
}

.wrapper {
  margin: 0 auto;
  width: 100%;
  max-width: 1140px;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.container {
  position: relative;
  width: 100%;
  max-width: 600px;
  height: auto;
  display: flex;
  background: #ffffff;
  box-shadow: 0 0 5px #999999;
}

.credit {
  position: relative;
  margin: 25px auto 0 auto;
  width: 100%;
  text-align: center;
  color: #666666;
  font-size: 16px;
  font-weight: 400;
}

.credit a {
  color: #222222;
  font-size: 16px;
  font-weight: 600;
}

.col-left,
.col-right {
  padding: 30px;
  display: flex;
}

.col-left {
  width: 60%;
  -webkit-clip-path: polygon(0 0, 0% 100%, 100% 0);
  clip-path: polygon(0 0, 0% 100%, 100% 0);
  background: #44c7f5;
}

.col-right {
  padding: 60px 30px;
  width: 50%;
  margin-left: -10%;
}

@media(max-width: 575.98px) {
  .container {
    flex-direction: column;
    box-shadow: none;
  }

  .col-left,
  .col-right {
    width: 100%;
    margin: 0;
    -webkit-clip-path: none;
    clip-path: none;
  }

  .col-right {
    padding: 30px;
  }
}

.login-text {
  position: relative;
  width: 100%;
  color: #ffffff;
}

.login-text h2 {
  margin: 0 0 15px 0;
  font-size: 30px;
  font-weight: 700;
}

.login-text p {
  margin: 0 0 20px 0;
  font-size: 16px;
  font-weight: 500;
  line-height: 22px;
}

.login-text .btn {
  display: inline-block;
  padding: 7px 20px;
  font-size: 16px;
  letter-spacing: 1px;
  text-decoration: none;
  border-radius: 30px;
  color: #ffffff;
  outline: none;
  border: 1px solid #ffffff;
  box-shadow: inset 0 0 0 0 #ffffff;
  transition: .3s;
  -webkit-transition: .3s;
}

.login-text .btn:hover {
  color: #44c7f5;
  box-shadow: inset 150px 0 0 0 #ffffff;
}

.login-form {
  position: relative;
  width: 100%;
}

.login-form h2 {
  margin: 0 0 15px 0;
  font-size: 22px;
  font-weight: 700;
}

.login-form p {
  margin: 0 0 10px 0;
  text-align: left;
  color: #666666;
  font-size: 15px;
}

.login-form p:last-child {
  margin: 0;
  padding-top: 3px;
}

.login-form p a {
  color: #44c7f5;
  font-size: 14px;
  text-decoration: none;
}

.login-form label {
  display: block;
  width: 100%;
  margin-bottom: 2px;
  letter-spacing: .5px;
}

.login-form p:last-child label {
  width: 60%;
  float: left;
}

.login-form label span {
  color: #ff574e;
  padding-left: 2px;
}

.login-form input {
  display: block;
  width: 100%;
  height: 35px;
  padding: 0 10px;
  outline: none;
  border: 1px solid #cccccc;
  border-radius: 30px;
}

.login-form input:focus {
  border-color: #ff574e;
}

.login-form button,
.login-form input[type=submit] {
  display: inline-block;
  width: 100%;
  margin-top: 5px;
  color: #44c7f5;
  font-size: 16px;
  letter-spacing: 1px;
  cursor: pointer;
  background: transparent;
  border: 1px solid #44c7f5;
  border-radius: 30px;
  box-shadow: inset 0 0 0 0 #44c7f5;
  transition: .3s;
  -webkit-transition: .3s;
}

.login-form button:hover,
.login-form input[type=submit]:hover {
  color: #ffffff;
  box-shadow: inset 250px 0 0 0 #44c7f5;
}


/* menu bar css
.menu{
margin-top:-30px;
    width: 400px;
    margin-left: 30%;
    height: 70px;
}

ul{
    float: left;
    display: flex;
    justify-content: center;
    align-items: center;
}

ul li{
    list-style: none;
    margin-left: 62px;
    margin-top: 27px;
    font-size: 14px;
}

ul li a{
    text-decoration: none;
   /* color: #fff;
   color:black;
    font-family: Arial;
    font-weight: bold;
    transition: 0.4s ease-in-out;
}

ul li a:hover{
    color: #ff7200;
}
*/

</style>
</html>
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    
<%--
<html>
<head>
<title>EiziTech</title>
<link rel="stylesheet" type="text/css" href="adminLogin.css">

</head>


  <body style="background-image: url('1.jpeg'); 	
	background-repeat: no-repeat;
	background-size: cover;">
	<body>

    <script type="text/javascript">
        function check(){
            if(document.login.password.value.length<5){
                alert("minimum password length must be 5 characters");
                return false;
            }
            
            if(document.login.password.value.length>15){
                alert("maximum password length must be 15 characters");
                return false;
            }

            if(document.register.email.value.length>50){
                alert("maximum email length must be 50 characters");
                return false;
            }  

            var user=document.getElementById("email").value;
            var password=document.getElementById("password").value;
            var user1=DBDetails.EMAIL_COL;
        if(user!=user1)
        {
            alert("Enter valid Email Id");
             return false;// if we dont write return statement it will true for both if we leave blank for both the fields
        }
     
        if(password=="")
        {
             alert("Enter the Password");
          return true;
        }          
        }
    </script>
  <header>
    <jsp:include page="header.jsp"></jsp:include>        
<marquee style="background-color:#32c2b4; height:40px; font-size:30px; margin-top:10px; color:white;border-radius:10px;">
Welcome to Einfachzauberer Technologies Private Limited</marquee>


        <!-- <h1><a href="HomePage.jsp">Back</a></h1>-->
      <!-- </header>
        <div style="margin-top:6%" >
    <div id="section" style="background-color:#32c2b4;"><div class="shadow p-3 mb-5 bg-body rounded"  ></div>
        <br/><br/>
       <!-- onsubmit="return check()" 
        <div align="center" >
        <form action="adminLoginDAO.jsp" name="login" onsubmit="return check()">
            <table cellpadding="10" >
                <tr>
                    <th colspan="2" ><h1 style="color:red">Admin Login</h1></th>
                </tr>        
                
                <tr>
                    <td><b style="font-size:20px;" id="1">Email:</b></td>
                    <td class="thi"><input type="email" name="email" required/></td>
                </tr>
                
                <tr>
                    <td><b style="font-size:20px;" >Password:</b></td>
                    <td class="thi"><input type="password" name="password"  required/></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center">
                    <input type="submit" value="Login"
                     style="margin-left:8%; 
                     margin-right: 10%; 
                     font-size:20px; 
                     border-radius: 20px;"/>
                     <input type="reset" value="Reset" style="font-size:20px; border-radius: 20px;"/></td>
                </tr>
                
               
            </table>
        </form>
        </div>
        
    </div>
    </div>

</body>

</html>   --%>

<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">


</head>
<header>
<!--<img alt="logo" src="logo.png" width="auto" height="80px" >-->

<jsp:include page="header.jsp"></jsp:include>

<marquee style="background-color:#32c2b4; height:40px; font-size:30px; margin-top:10px; color:white;border-radius:10px;">
Welcome to Einfachzauberer Technologies Private Limited</marquee>   
    
</header>


<body class="bod">
<a href="HomePage.jsp" class="forgot" style="font-size:18px; color:white;"> < Back to main Page</a>
<input type="hidden" id="state" value="<%=request.getAttribute("state") %>">
 
 <script type="text/javascript">

var state=document.getElementById("state").value;
if(state=="resetSuccess")
	{
	window.alert("Password Rest Successfull","Success");
	
	}

else if(state="resetFailed")
	{

swal("Password Reset Failed","error");
	}
	
var status=document.getElementById("check").value;

if(status=="false"))
{
window.alert("You have Entered wrong email or Password!","Error");

}
else if(status=="true"))
{
	window.alert("Thank You!","Success");

	}

 </script>
 <%
     
 
           String status=request.getParameter("status");
        if(status!=null){
        	if(status.equals("false"))
        	{%>
        		<p style="color:red; font-size:25px; margin-left:20%;margin-right:35%; background-color: white; border-radius:10px;">You have Entered wrong email or Password!</p>
        	<%}
        	else if(status.equals("true"))
        	{
        	%>
        		<p style="color:red">"Thank You....!"</p>
        		
        <%}
        }
        %>
 
 

  <div class="container">
  
  
  
    <input type="checkbox" id="check">
   
   
    <div class="login-dark" style="border-radius: 10px;">
     
   <form action="adminLoginDAO.jsp" name="login" onsubmit="return check()">
           <h2 style="text-align: center;">Login Form</h2>
            <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
            <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email" required></div>
            <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password" required></div>
            <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Log In</button>
            </div>
            <a href="forgotPassword.jsp" class="forgot" style="font-size:18px; color:buttonface;">Forgot your  password?</a>
           
            </form>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
   
   
   
      
    </div>
  
  
  <div class="imgcls">
  <div id="imge" >
 <!--   <img alt="unavilable" src="code.jpg"  width="500" height="485">-->
  </div>
</div>
  

  
</body>

<style>


@charset "UTF-8";
/* Import Google font - Poppins */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}
.bod
{

  height:600px;
background-image:url(bgmain.jpg);
background-repeat:no-repeat;
  background-size:105%;
  position:relative;
}



.container{ 
margin-top:0%;
margin-right:10%;
margin-left:35%;
  float:center;
  top: 50%;
  left: 20%;
  transform: translate(-50%,-50%);
  max-width: 500px;
  width: 450px;
  background: #ffff;
  border-radius: 7px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.3);
}




.container .registration{
  display: none;
}
#check:checked ~ .registration{
  display: block;
}
#check:checked ~ .login{
  display: none;
}
#check{
  display: none;
}
.container .form{
  padding: 2rem;
}





.login-dark form {
  max-width:450px;
  width:90%;
  background-color:#1e2833;
  border-radius:4px;
 padding:40px;
   
  /* transform:translate(-50%,-50%);*/
  position:absolute;
 top:50%;
  left:50%;
  color:#fff;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
}

.login-dark .illustration {
  text-align:center;
  padding:15px 0 20px;
  font-size:100px;
  color:#2980ef;
}

.login-dark form .form-control {
  background:none;
  border:none;
  border-bottom:1px solid #434a52;
  border-radius:0;
  box-shadow:none;
  outline:none;
  color:inherit;
}

.login-dark form .btn-primary {
  background:#214a80;
  border:none;
  border-radius:4px;
  padding:11px;
  box-shadow:none;
  margin-top:26px;
  text-shadow:none;
  outline:none;
}

.login-dark form .btn-primary:hover, .login-dark form .btn-primary:active {
  background:#214a80;
  outline:none;
}

.login-dark form .forgot {
  display:block;
  text-align:center;
  font-size:12px;
  color:#6f7a85;
  opacity:0.9;
  text-decoration:none;
}

.login-dark form .forgot:hover, .login-dark form .forgot:active {
  opacity:1;
  text-decoration:none;
}

.login-dark form .btn-primary:active {
  transform:translateY(1px);
}





</style>
</html>


--%>













