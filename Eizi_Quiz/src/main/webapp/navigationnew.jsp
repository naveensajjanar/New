<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <%-- <link rel="stylesheet" href="navigationnew.css">--%> 
</head>
<body>
    <nav>
        <div class="logo">
            
        </div>
        <ul>
            <li><a href='Ahome.jsp'>Home</a></li>
            <li><a href='addQuestion.jsp'>Add</a></li>
            
            <li><a href="QuestinsSet.jsp">Questions Set</a></li>
            
            <li><a href='adminResult.jsp'>Result</a></li>
            <li><a href='adminLogout.jsp'>Logout</a></li>
        </ul>
    </nav>
</body>

<style>



*{
    margin: 0px;
    padding: 0px;
    box-sizing: border-box;
}
nav{
	
    width: 100%;
    height: 60px;
   
     padding:25px 100px  ; 
    
    /*background-image:linear-gradient(	#a7bed3,#a7bed3);*/
   background-image:linear-gradient(#08B8BE,#08B8BE);
}
nav.logo p{
    font-size: 30px;
    font-weight: bold;
    float: left;
    color: black;
    text-transform: uppercase;
    letter-spacing: 1.5px;
    cursor: pointer;
}
nav ul{
    text-align: center;

}
nav li{
    display: inline-block;
    list-style: none;

}
nav li a{
    font-size: 18px;
    text-transform: uppercase;
    padding: 0px 30px;
    color:black;
    text-decoration: none;
}
nav li a:hover
{
    color:#ff8c69;
   font-weight: bold;
    transition: all 0.4s ease 0s;
    background-color: #ffffff;
    border-radius: 5px;
    padding-top:7px;
    padding-bottom:7px ;
    
}

</style>


</html>