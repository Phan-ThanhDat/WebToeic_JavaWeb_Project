package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import BEAN.Member;

public class LoginDAO 	
{
	public static String Authentication(HttpServletRequest request,Connection conn,Member member)
	{
		//create preparedstatement
		PreparedStatement pttm = null;
		// truyền truy vấn sql cho đối tượng preqaredstatement
		String sql = "select membername,memberpass from member" ;
		String test = "";
		
		test = "failed";
		
		try 
		{
			pttm = conn.prepareStatement(sql);
			
			ResultSet rs= pttm.executeQuery();
			
			while(rs.next())
			{
				String membername = rs.getString("membername");
				String memberpass = rs.getString("memberpass");
				
				if(member.getMembername().equals(membername) && member.getMemberpass().equals(memberpass) )
				{
					test = "success";
					
				}	
				
			}
			
			pttm.close();  // đóng pttm
			
			rs.close();
		} 
		catch (SQLException e) 
		{
			//e.printStackTrace();
			request.setAttribute("msglogin", e.getMessage());
			
		}
		return test;
	}
	
	public static int AuthenticationCatogaryMember(HttpServletRequest request,Connection conn,Member member)
	{
		
		PreparedStatement pttm = null;
		// truyền truy vấn sql cho đối tượng preqaredstatement
		String sql = "select Categorymemberid from member where membername='"+member.getMembername()+"' AND memberpass='"+member.getMemberpass()+"'" ;
		int categorymemberid = 0;
		try 
		{
			pttm = conn.prepareStatement(sql);
			
			ResultSet rs= pttm.executeQuery();
			
			while(rs.next())
			{
				categorymemberid = rs.getInt("categorymemberid");
				
			
			}
			
			pttm.close();  // đóng pttm
			
			rs.close();
		} 
		catch (SQLException e) 
		{
			//e.printStackTrace();
			request.setAttribute("msglogin", e.getMessage());
			
		}
		return categorymemberid;
	}
	
	public static String Exportnamemember(HttpServletRequest request,Connection conn,Member member)
	{
		PreparedStatement pttm = null;
		// truyền truy vấn sql cho đối tượng preqaredstatement
		String sql = "select name from member where membername='"+member.getMembername()+"' AND memberpass='"+member.getMemberpass()+"'" ;
		String name="";
		try 
		{
			pttm = conn.prepareStatement(sql);
			
			ResultSet rs= pttm.executeQuery();
			
			while(rs.next())
			{
				name = rs.getString("name");
				
			
			}
			
			pttm.close();  // đóng pttm
			
			rs.close();
		} 
		
		catch (SQLException e) 
		{
			//e.printStackTrace();
			request.setAttribute("msglogin", e.getMessage());
			
		}
		return name;
	}	
	
}
