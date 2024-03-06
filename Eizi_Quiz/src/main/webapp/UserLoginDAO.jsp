<%@page import="com.UserDAO"%>
<%
String Username=request.getParameter("email");
String Password =request.getParameter("pass");

RequestDispatcher rd = null;

UserDAO ud = new UserDAO();

String result=ud.Login(Username, Password);

 
 if(result.equals(Username) && Password.equals("Eizitech@123"))
{
	rd=request.getRequestDispatcher("home.jsp?state=true");
	rd.forward(request, response);
}	
 
else
	
{
	response.sendRedirect("UserLogin.jsp?state=false");
}
%>