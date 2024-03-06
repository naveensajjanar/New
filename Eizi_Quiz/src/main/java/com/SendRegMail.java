package com;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class SendRegMail
 */
@WebServlet("/SendRegMail")
public class SendRegMail extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String name=request.getParameter("name");
		RequestDispatcher dispatcher = null;
		String password="Eizitech@123";
		HttpSession mySession = request.getSession();
		
		if(email!=null || !email.equals("")) {


			String to = email;// change accordingly
			// Get the session object
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("naveensajjanar08@gmail.com", "focu mevf rlcy rhaq");// Put your email
																									// id and
																									// password here
				}
			});
			// compose message
			try {
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress(email));// change accordingly
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
				message.setSubject("Your Login Credential");
				message.setText("Hi " +name+"\n"+"Here is your Login details"+"\n"+"your email is "+email+"\n"+"Password is "+password);
				// send message
				Transport.send(message);
				System.out.println("message sent successfully");
			}

			catch (MessagingException e) {
				throw new RuntimeException(e);
			}
			dispatcher = request.getRequestDispatcher("registerDAO.jsp");
			request.setAttribute("message","Password is sent to your registered email id");
			//request.setAttribute("connection", con);
			mySession.setAttribute("pass",password); 
			mySession.setAttribute("email",email); 
			dispatcher.forward(request, response);
			//request.setAttribute("status", "success");
		}
		
	}

}



