<%@page import="com.AdminDAO"%>
<%@page import="com.UserDAO"%>
<%@page import="org.json.simple.JSONObject"%>
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
<title>Eizitech Quiz</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>


<body>

<header>
    <jsp:include page="header.jsp"></jsp:include>        
    <jsp:include page="navigation.jsp"></jsp:include>  
 </header> 
      
    <div id="section">
        <h2>Edit Question</h2>
     
      <%
        String set=request.getParameter("set");
        String id=request.getParameter("id");
        %>
    
        <p>Are sure you want to delete this question?</p><br/>
        <a href="deleteQuestionDAO.jsp?id=<%=id%>&set=<%=set%>">Yes</a> &nbsp; <a href="filterQuestions.jsp?set=<%=set%>">No</a>       
    </div>
</body>   

</html>