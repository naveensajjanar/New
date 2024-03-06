<%@page import="com.AdminDAO"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");

String result=AdminDAO.login(email, password);

if(result.equals("true")){
	session.setAttribute("email", "admin");
	//request.getRequestDispatcher("Ahome.jsp?status=true");
	
	response.sendRedirect("Ahome.jsp?status=true");
}
else{
	response.sendRedirect("adminLogin.jsp?status=false");
}
%>