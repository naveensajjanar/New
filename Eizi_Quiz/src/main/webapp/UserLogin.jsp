<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
<link rel="stylesheet" type="text/css" href="userlogin.css">


</head>
<body class="image">

<header>
<img alt="logo" src="logo.png" width="auto" height="80px" >

 <!--   <jsp:include page="header.jsp"></jsp:include> 

       <marquee style="background-color:#32c2b4; height:40px; font-size:30px; margin-top:10px; color:white;border-radius:10px;">
Welcome to Einfachzauberer Technologies Private Limited</marquee>   -->
</header>
    <div id="section">
    
      <%
        String state=request.getParameter("state");
        
        if(state!=null){
        	if(state.equals("true"))
        	{%>
        		<p style="color:green">"ThankYou!"</p>
        	<%}
        	else if(state.equals("false"))
        	{
        	%>
        		<p style="color:red">"You Have Enterded Wrong!"</p>
        		        	<%}
        }
        %>
    
        <br/><br/>
        
        <div align="center">
        <form action="UserLoginDAO.jsp" name="login" onsubmit="return check()">
            <table cellpadding="10">
                <tr>
                    <th colspan="2"><h1><b>Student Login</b></h1></th>
                </tr>        
                
                <tr>
                    <td><b>Email:</b></td>
                    <td><input type="email" name="email" required/></td>
                </tr>
                
                <tr>
                    <td><b>Password:</b></td>
                    <td><input type="password" name="pass" required/></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login" style="cursor:pointer; background-color: skyblue"/></td>
                </tr>
            </table>
        </form>
        </div>
        
    </div>
    
    
    
    
    

</body>

</body>
</html> --%>



<!DOCTYPE html>
<html lang="en">
<head>
 
    <title>Candidate Login</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
   
    
</head>
<body>
<header>
<img alt="logo" src="images/logo.png" width="auto" height="80px" >
</header>
<%
        String state=request.getParameter("state");
        
        if(state!=null){
        	if(state.equals("true"))
        	{%>
        		<p style="color:green">"ThankYou!"</p>
        	<%}
        	else if(state.equals("false"))
        	{
        	%>
        		<p style="color:red">"You Have Enterded Wrong!"</p>
        		        	<%}
        }
        %>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
   <form action="UserLoginDAO.jsp" name="login" onsubmit="return check()">
        <h3>Candidate Login</h3>

        <label for="email">Email</label>
        <input type="email" name="email" required placeholder="Email" id="email">

        <label for="password">Password</label>
        <input type="password" name="pass" required placeholder="Password" id="pass">

        <button>Log In</button>
      <%--  <div class="social">
        <div class="go"><a class="btn icon" href="https://eizitech.com/" target="_blank"><i class="fab fa-google"></i></a></div>
          
          <div class="fb"><a class="btn icon" href="https://www.facebook.com/EiZitech" target="_blank"><i class="fab fa-facebook"></i></a></div>
          
        </div>--%> 
    </form>
</body>


<style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
   /* background-color: #080710;*/
   background-color:#581845 
  /* background-color:#40E0D0*/
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -30px;
    bottom: -80px;
}
form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
   color: #ffffff;
  /*  color:#080710;*/
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color: #080710;
    color: #ffffff;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div:hover{
  background-color: rgba(255,255,255,0.47);
}
.social .fb{
  margin-left: 25px;
}
.social i{
  margin-right: 4px;
}

    </style>

</html>
	
