<%
String email=(String)session.getAttribute("email");
if(email!=null)
{
    if(!email.equals("admin")){
        response.sendRedirect("adminLogin.jsp");
    }
}
    else
    {
    	 response.sendRedirect("adminLogin.jsp");
    }

%>

<html>
<head>
<title>admin home</title>
 <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body style="background-color:burlywood;">
<header>
<img alt="logo" src="images/logo.png" width="auto" height="80px" >
   <%--   <jsp:include page="header.jsp"></jsp:include>    --%>    
    <jsp:include page="navigation.jsp"></jsp:include>  
 </header>
 
    <div id="section">
        <br/><br/>
        
        <form action="filterQuestions.jsp">
            <table cellpadding="10">
                
                <tr>
                    <td></td>
                    <td><b style="font-size:19px;">Select Question Set:</b>
                       <%--  <select style="border-color: skyblue;cursor:pointer"name="set" required>--%>
                                                <select style="font-size:19px;font-weight:italic;height:30px;width:100px ;
                                                border-color: skyblue;cursor:pointer"name="set" required>
                            <option style="border-color: skyblue;cursor:pointer" value="">Select</option>
                            <option style="border-color: skyblue; cursor:pointer" value="1">Set 1</option>
                            <option style="border-color: skyblue ;cursor:pointer" value="2">Set 2</option>
                            <option style="border-color: skyblue ;cursor:pointer" value="3">Set 3</option>
                        </select>
                  </td>
                 <%--  <td><input style="border-color: skyblue;cursor:pointer" type="submit" value="click"/>--%>
                 <td> <input type="submit" value="click" ></td>
                </tr>
            </table>
        </form>
        
    </div>
    
</body>
 <style> 
				input[type=submit] {
				  background-color: #FF5733;
				  border:10px;
				  color: white;
				  padding: 10px 32px;
				  text-decoration: none;
				  margin: 4px 2px;
				  cursor: pointer;
				  border-radius:10px;
				}
</style>
</html>