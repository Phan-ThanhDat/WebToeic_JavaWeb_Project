package Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Member;
import DAO.RegisterDAO;
import DB.DBConnection;

/**
 * Servlet implementation class Registercontroller
 */
@WebServlet("/Registercontroller")
public class Registercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registercontroller() {
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
		if(request.getCharacterEncoding()==null)
		{
			request.setCharacterEncoding("UTF-8");
		}
		Connection conn= DBConnection.CreateConnection();
		
		String name = request.getParameter("name");
		String membername = request.getParameter("membername");
		String memberpass = request.getParameter("memberpass");
		
		Member member = new Member();
		member.setName(name);
		member.setMembername(membername);
		member.setMemberpass(memberpass);
		
		boolean test = RegisterDAO.InsertAccount(request, conn, member);
		
		if ( test == true)
		{
			request.setAttribute("msgregister", "Registered successfully");
			RequestDispatcher rd = request.getRequestDispatcher("Registerforward");
			rd.forward(request, response);
		}
		else
			request.setAttribute("msgregister", "Registered failed");
		
	}

}
