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

<html>
<head>
<title>Eizitech</title>
<link rel="stylesheet" type="text/css" href="style.css">


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>



</head>


<body style="background-image:url(images/image23.jpg)">

   <header>
   <img alt="logo" src="images/logo.png" width="auto" height="80px" >
   <!--  <jsp:include page="header.jsp"></jsp:include>  -->       
    <jsp:include page="navigation.jsp"></jsp:include>  
 </header>
      
    <div id="section">
        <h2>Add Question</h2>
     
      <%
        String status=request.getParameter("status");
        
        if(status!=null){
            if(status.equals("false")){%>
                <p style="color:red">Some error occurred!</p>
            <%}
            else if(status.equals("true")){%>
                <p style="color:Green">Record added!</p>
            <%}
        }
        %>
           
        <form action="addQuestionDAO.jsp" name="login" onsubmit="return check()">
            <table cellpadding="10">
                       
                
                <tr>
                    <td><b>Question:</b></td>
                    <td><textarea rows="10" cols="100" name="question" required></textarea></td>
                </tr>
                
                <tr>
                    <td><b>A:</b></td>
                    <td><textarea rows="2" cols="50" name="a" required></textarea></td>
                </tr>

                <tr>
                    <td><b>B:</b></td>
                    <td><textarea rows="2" cols="50" name="b" required></textarea></td>
                </tr>

                <tr>
                    <td><b>C:</b></td>
                    <td><textarea rows="2" cols="50" name="c" required></textarea></td>
                </tr>

                <tr>
                    <td><b>D:</b></td>
                    <td><textarea rows="2" cols="50" name="d" required></textarea></td>
                </tr>
                
                <tr>
                <td><b>Answer:</b></td>
                <td>  <input type="radio" name="answer" value="A" required> A &nbsp;
                <input type="radio" name="answer" value="B"> B &nbsp;
                <input type="radio" name="answer" value="C"> C &nbsp;
                <input type="radio" name="answer" value="D"> D &nbsp;
                </td>
                </tr>

                <tr>
                <td><b>Set:</b></td>
                <td>  <input type="radio" name="set" value="1" required> 1 &nbsp;
                <input type="radio" name="set" value="2"> 2 &nbsp;
                <input type="radio" name="set" value="3"> 3
                </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                    <div class="d-grid gap-2 col-2 mx-auto">
                    
                    <input type="submit" value="Add" class="btn btn-primary"/>
                    </div>
                  
                    </td>
                </tr>
            </table>
        </form>        
    </div>
</body>

</html>