<%@page import="com.UserDAO"%>
<%@page import="com.AdminDAO"%>
<html>
<head>
<title>Eizitech</title>
<link rel="stylesheet" type="text/css" href="style.css">
<!--  <link rel="stylesheet" type="text/css" href="index.css">-->

</head>


<body class="img">


	<script type="text/javascript">
    	function check(){
    		if(document.register.name.value.length<5){
    			alert("minimum name length must be 5 characters");
    			return false;
    		}
    		
            if(document.register.name.value.length>50){
                alert("maximum name length must be 50 characters");
                return false;
            }

            if(document.register.email.value.length>50){
                alert("maximum email length must be 50 characters");
                return false;
            }   

            windows.alert("Registered Succesfully!,Please check your mail for Password");         
    
	</script>
<header>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include> 
       <!--  <img alt="logo" src="logo.png" width="auto" height="80px" >
      <marquee style="background-color:#32c2b4; height:40px; font-size:30px; margin-top:7px; color:white; border-radius:10px;">
 Welcome to Einfachzauberer Technologies Private Limited</marquee>--> 
        </header>
        <%--
    <div id="section">
    
        <br/><br/>
         <div align="center">
         
        <%
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false"))
        	{%>
        		<p style="color:red">Some error occurred!</p>
        	<%}
        	else if(status.equals("registered"))
        	{
        	%>
        		<p style="color:red">"Email already registered!"</p>
        		        	<%}
        }
        %>
        
       
        <form action="SendRegMail" name="register" onsubmit="return check()" method="post" >
        <div >
        
            <table cellpadding="8">
            
                <tr>
                    <th colspan="2"><h1><b>Register Student</b></h1></th>
                     
                </tr>        
              
                <tr>
                  
                    <td><b>Name :</b></td>
                    <td><input type="text" name="name" /></td>
                </tr>
                
                <tr>
                    <td><b>Email Id :</b></td>
                    <td><input type="email" name="email" /></td>
                </tr>
             <!-- Starts here  -->
          
               <tr>
                    <td><b>Mobile No :</b></td>
                    <td><input type="number" name="mobile" /></td>
                </tr>
                
                 <tr>
                    <td><b>College:</b></td>
                    <td><input type="text" name="clg" /></td>
                </tr>
             
              <tr>
                    <td><b>Height Qualification:</b></td>
                    <td><input type="text" name="quali" /></td>
                </tr>
                
                 <tr>
                    <td><b>Stream Of Study:</b></td>
                    <td><input type="text" name="stream" /></td>
                </tr>
                
                
                <tr>
                    <td><b>Passout :</b></td>
                    <td><input type="number" name="pas" /></td>
                </tr>
                
                 <tr>
                    <td><b>Degree %:</b></td>
                    <td><input type="number" name="per" /></td>
                </tr>
                
                 <tr>
                    <td><b>Current Location :</b></td>
                    <td><input type="text" name="loc" /></td>
                </tr>
              <tr>
                    <td><b>Permanent Address :</b></td>
                    <td><input type="text" name="adrs" /></td>
                </tr>
             	<tr>
                    <td><b>Postal pin-Code :</b></td>
                    <td><input type="text" name="pin" /></td>
                </tr>
             <!-- Ends here  -->
                <tr>
            <td colspan="1" align="center"><input type="submit" value="Register" style="font-size:15px; border-radius: 10px;cursor:pointer;background-color:lightblue;"/></td>
             <td ><input type="reset" value="reset" style="font-size:15px; border-radius: 10px; cursor:pointer;background-color:lightblue;"/></td>
			 </tr>  
            </table>
            </div>
        </form>
        </div> 
    </div>
</body>
</html> --%>


  <div id="section">
    
        <br/><br/>
         <div align="center">
         
        <%
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false"))
        	{%>
        		<p style="color:red">Some error occurred!</p>
        	<%}
        	else if(status.equals("registered"))
        	{
        	%>
        		<p style="color:red">"Email already registered!"</p>
        		        	<%}
        }
        %>
        
       
      
       <div class="container">
    <div class="title">Student Registration</div>
    <div class="content">
       <form action="SendRegMail" name="register" onsubmit="return check()" method="post" >
        <div class="user-details">
          <div class="input-box">
          
          
            <div class="details">Full Name</div>
            <input type="text" name="name" placeholder="Enter your name"  required>
          </div>
          <div class="input-box">
            <div class="details">Email</div>
            <input type="text" name="email" placeholder="Enter your Email-id" required>
          </div>
          <div class="input-box">
            <div class="details">Mobile No</div>
            <input type="text" name="mobile" placeholder="ENter your Mobile No" >
          </div>
          <div class="input-box">
            <div class="details">College Name</div>
            <input type="text" name="clg" placeholder="Enter your College Name" >
          </div>
          <div class="input-box">
            <div class="details">Highest Qualification</div>
            <input type="text" name="quali" placeholder="Enter your Qualification" >
          </div>
          <div class="input-box">
            <div class="details">Strem of Study</div>
            <input type="text" name="stream" placeholder="Enter your Stream" >
          </div>
          <div class="input-box">
            <div class="details">Passout Year</div>
            <input type="text" name="pas" placeholder="Enter Your Passout year" >
          </div>
          <div class="input-box">
            <div class="details">Degree Percentage</div>
            <input type="text" name="per" placeholder="Enter Your Degree Percentage" >
          </div>
          
          
          <div class="input-box">
            <div class="details">Current Address</div>
            <textarea  name="loc" rows="5" cols="44">
               
                </textarea>
          </div>
          
          
          <div class="input-box">
            <div class="details">Permanent Address</div>
            <textarea  name="adrs" rows="5" cols="44">
               
                </textarea>
          </div>
          
          
           <div class="input-box">
            <div class="details">Pin Code</div>
            <input type="number" name="pin" placeholder="Pincode" >
          </div>
          
        </div>
        
   
  
        <div class="button">
          <input type="submit" value="Register" />
        </div>
      </form>
    </div>
  </div>
     
       
        </div> 
    </div>
</body>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
.details {
        display: flex;
        justify-content: space-left;
        
      }
      .gender-details
      {
        display: flex;
        justify-content: space-left;
        
      }
/*.details
{
margin-left:1px;
}


body{
 min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}*/
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{

  display: block;
  font-weight: 500;
margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }

 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 700px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
  .details{
  display:flex;
  justify-content:space-left;
  
}
</style>
</html>