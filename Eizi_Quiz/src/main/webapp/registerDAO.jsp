<%@page import="java.util.Random"%>
<%@page import="com.UserDAO"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");

String mobile=request.getParameter("mobile");
String college=request.getParameter("clg");
String qualification=request.getParameter("quali");
String Stream=request.getParameter("stream");
String percentage=request.getParameter("per");
String CLocation=request.getParameter("loc");
String Address=request.getParameter("adrs");
String pincode=request.getParameter("pin");
String passout=request.getParameter("pas");




String result=UserDAO.registerUser(name,email,mobile,college,qualification,Stream,percentage,CLocation,Address,pincode,passout);



if(result.equals("true")){
	Random random=new Random();
	int i=random.nextInt(3)+1;
	session.setAttribute("email",email);
	session.setAttribute("set", ""+i);
	response.sendRedirect("UserLogin.jsp");
}

if(result.equals("false")){
	response.sendRedirect("index.jsp?status=false");
}

if(result.equals("registered")){
    response.sendRedirect("index.jsp?status=registered");
}
%>