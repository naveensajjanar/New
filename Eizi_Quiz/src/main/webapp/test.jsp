<%@page import="java.util.LinkedHashMap"%>
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
<!--<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="test.css">-->


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


<script src="jquery-1.11.3.js"></script>
</head>

<body   onload="startTimer()">
<jsp:include page="header.jsp"></jsp:include>  
 <%--  <div class="logo">
<img alt="logo" src="logo.png" width="300px" height="80px ">
 
    </div>  --%> 
 <div class="quiz">
    <script type="text/javascript">
    var question_no=1;
    var question_id=0;
    var max_questions=30;
    
   var timer=1800;
  //var timer=15;
    var min=0;
    var sec=0;
   
    window.onbeforeunload = function() { if(question_no!=max_questions){return "Warning: Your work will be lost!";} };

    function startTimer(){
    	min=parseInt(timer/60);
    	sec=parseInt(timer%60);

    	if(timer<1){
    		
            window.location="resultDAO.jsp";
            
        }
        
    		
    	document.getElementById("time").innerHTML = "<b>Time Left: </b>"+min.toString()+":"+sec.toString();
    	timer--;
    	setTimeout(function(){ startTimer(); }, 1000);
    	
    }
    
    $(document).ready(function(){
        $.get('getQuestionDAO.jsp?question_no='+question_no+'&req=first',function(data,status){
            var obj=JSON.parse(data);
            question_id=obj.id;
            $('#question').html('<b>Question '+question_no+': </b><br/>'+obj.question);
            $('#a').html('<b>A:</b><input type="radio" name="answer" value="A">'+obj.a);
            $('#b').html('<b>B:</b><input type="radio" name="answer" value="B">'+obj.b);
            $('#c').html('<b>C:</b><input type="radio" name="answer" value="C">'+obj.c);
            $('#d').html('<b>D:</b><input type="radio" name="answer" value="D">'+obj.d);
        });
        
        if(question_no==1){
        	$('#back').hide();
        }
        else{
        	$('#back').show();
        }
        
        if(question_no==max_questions){
            $('#next').hide();
        }
        else{
            $('#next').show();
        }
        
        if(question_no!=max_questions){
            $('#submit').hide();
        }
        else{
            $('#submit').show();
        }
        
        $('#next').click(function(){
            var answer=$('input[name=answer]:checked').val();
            var s=$('input[name=answer]:checked').size();
        	
            if(s==0){
        		alert("Please select answer for this question");
        	}
        	else{
        	question_no++;
        	$.get('getQuestionDAO.jsp?question_no='+question_no+'&question_id='+question_id+'&answer='+answer,function(data,status){
                var obj=JSON.parse(data);
                question_id=obj.id;
                $('#question').html('<b>Question '+question_no+': </b><br/>'+obj.question);
                $('#a').html('<b>A:</b><input type="radio" name="answer" value="A">'+obj.a);
                $('#b').html('<b>B:</b><input type="radio" name="answer" value="B">'+obj.b);
                $('#c').html('<b>C:</b><input type="radio" name="answer" value="C">'+obj.c);
                $('#d').html('<b>D:</b><input type="radio" name="answer" value="D">'+obj.d);
            });
        	
        	if(question_no==1){
                $('#back').hide();
            }
            else{
                $('#back').show();
            }
            
            if(question_no==max_questions){
                $('#next').hide();
            }
            else{
                $('#next').show();
            }
            
            if(question_no!=max_questions){
                $('#submit').hide();
            }
            else{
                $('#submit').show();
            }
        	}
        });
        
        $('#submit').click(function(){
        	   var answer=$('input[name=answer]:checked').val();
               var s=$('input[name=answer]:checked').size();
               
               if(s==0){
                   alert("Please select answer for this question");
               }
               else{
            	   $.post('getQuestionDAO.jsp?question_no='+question_no+'&question_id='+question_id+'&answer='+answer+"&req=last");
            	   window.location='resultDAO.jsp';
               }
        });
        
        
        $('#back').click(function(){
            question_no--;
            var answer=$('input[name=answer]:checked').val();
            
            $.get('getQuestionDAO.jsp?question_no='+question_no+'&question_id='+question_id+'&answer='+answer,function(data,status){
                var obj=JSON.parse(data);
                question_id=obj.id;
                $('#question').html('<b>Question '+question_no+': </b><br/>'+obj.question);
                $('#a').html('<b>A:</b><input type="radio" name="answer" value="A" required>'+obj.a);
                $('#b').html('<b>B:</b><input type="radio" name="answer" value="B">'+obj.b);
                $('#c').html('<b>C:</b><input type="radio" name="answer" value="C">'+obj.c);
                $('#d').html('<b>D:</b><input type="radio" name="answer" value="D">'+obj.d);
            });
            
            if(question_no==1){
                $('#back').hide();
            }
            else{
                $('#back').show();
            }
            
            if(question_no==max_questions){
                $('#next').hide();
            }
            else{
                $('#next').show();
            }
            
            if(question_no!=max_questions){
                $('#submit').hide();
            }
            else{
                $('#submit').show();
            }
        });
        
     });

    </script>
   <%-- 
<header>
  
 
     <jsp:include page="header.jsp"></jsp:include>   
    </header>--%>
    <marquee style="background-image:linear-gradient(#08B8BE, #08B8BE); height:40px; font-size:30px; margin-top:10px; color:white;border-radius:10px; box-shadow:  0 8px 8px 0 rgba(0, 0, 0, 0.5);">
Welcome to Einfachzauberer Technologies Private Limited</marquee>     
        
    <div id="section">
        <p id="time"></p>
        <p id="test"></p>
        <br/>
        <p id="question"></p>
        <p id="a"></p>
        <p id="b"></p>
        <p id="c"></p>
        <p id="d"></p>
        
        <br/>
        
           
        <div class="d-flex gap-2 col-5 mx-auto">
  <button id="back" class="btn btn-primary" >Back</button>&nbsp;
  <button id="next" class="btn btn-primary" >Next</button>&nbsp;
  <button id="submit" class="btn btn-primary" >Submit</button>
</div>
        
        <%-- 
        <button id="back" style="cursor:pointer;background-color:#03cae4;">Back</button>&nbsp;
        <button id="next" style="cursor:pointer;background-color:#03cae4;">Next</button>&nbsp;
        <button id="submit"style="cursor:pointer;background-color:#03cae4;">Submit</button>--%>
            
    </div>
    </div>
</body>

<style>

#time,#test
{
font-size:25px;
color:red;

}
#time
{
margin-top:5px;
margin-left:10px;
}



#question
{
font-size:28px;

}
#a,#b,#c,#d
{
font-size:24px;

}
#question,#a,#b,#c,#d
{

margin-left:5%;
}
/*
#back,#next,#submit
{
margin-left:30%;
}


@charset "UTF-8";
*{
	box-sizing: border-box;
	
}
body{
	
	background-color: #b8c6db;
	background-image: url(image20.jpg);
	font-family: 'Poppins',sans-serif;
	display: flex;
	align-items: center;
	justify-content: center;
	height: auto;
	overflow: hidden;
	margin: 0%;
	
	

}
.quiz{
	background-color:#fff;
	border-radius: 10px;
	box-shadow: 0 0 10px 2px rgba(100,100,100,0.1);
	
	height: auto;
	overflow: hidden;
	margin-top:2%;
	
	
	
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.6;
	
text-align: center;
	padding-left: 30px
	margin-left: 25%;
	margin-right: 25%;
	
	
	
}
header
{
	
	margin:0%;
}
button
{
	
	margin-bottom: 10px;
	
}



*/


</style>
</html>