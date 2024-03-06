package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String confPassword = request.getParameter("confPassword");
		RequestDispatcher dispatcher = null;
		if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

			try {
				 
				Connection con=DBConnect.getConnection();
				PreparedStatement pst = con.prepareStatement("update admin set password = ? where email = ? ");
				
				pst.setString(2, (String) session.getAttribute("email"));
				pst.setString(1, newPassword);

				int rowCount = pst.executeUpdate();
				if (rowCount > 0) {
					request.setAttribute("state", "resetSuccess");
					dispatcher = request.getRequestDispatcher("adminLogin.jsp");
				} else {
					request.setAttribute("state", "resetFailed");
					dispatcher = request.getRequestDispatcher("forgetPassword.jsp");
				}
				dispatcher.forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
