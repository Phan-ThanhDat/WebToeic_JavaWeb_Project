package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Member;
import DAO.LoginDAO;
import DB.DBConnection;

import java.sql.*;
/**
 * Servlet implementation class Logincontroller
 */
@WebServlet("/Logincontroller")
public class Logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logincontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		Connection conn= DBConnection.CreateConnection();
		
		String membername= request.getParameter("membername");
		String memberpass= request.getParameter("memberpass");
		
		Member member = new Member();
		member.setMembername(membername);
		member.setMemberpass(memberpass);
		
		String name = LoginDAO.Exportnamemember(request, conn, member);
		String authentication = LoginDAO.Authentication(request, conn, member);
		
		if(authentication.equals("success"))
		{
			int authorization = LoginDAO.AuthenticationCatogaryMember(request, conn, member);
			if(authorization ==1)
			{
				HttpSession session = request.getSession(true);
				
				//session
				session.setAttribute("sessionuser",name);
				RequestDispatcher rd = request.getRequestDispatcher("Homeforward");
				rd.forward(request, response);
			}
			else				
				if(authorization ==2)
				{
					HttpSession session = request.getSession(true);
					
					//session
					session.setAttribute("sessionadmin",name);
					RequestDispatcher rd = request.getRequestDispatcher("Adminforward");
					rd.forward(request, response);
				}
			
		}
		else
		{
			request.setAttribute("msglogin", "maybe your username or password is wrong");
			RequestDispatcher rd = request.getRequestDispatcher("Loginforward");
			rd.forward(request, response);
		}
	}

}
