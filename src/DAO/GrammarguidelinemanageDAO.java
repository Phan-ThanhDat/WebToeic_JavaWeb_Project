package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import BEAN.Member;
import BEAN.grammarguideline;

public class GrammarguidelinemanageDAO {
	public static List<grammarguideline> Displaygrammarguidelinemanage(HttpServletRequest request,Connection conn) throws SQLException
	{
		List<grammarguideline> list = new ArrayList<grammarguideline>();
		
		String sql = "select * from grammarguideline";
		
		PreparedStatement ptmt;
		try {
			ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			
			if(rs.isBeforeFirst())
				while ( rs.next())
				{
					grammarguideline gmgl = new grammarguideline();
					
					int grammarguidelineid = rs.getInt("grammarguidelineid");
					String  grammarguidelinename= rs.getString("grammarguidelinename");
					String grammarguidelineimage = rs.getString("grammarguidelineimage");
					String content = rs.getString("content");
					
					gmgl.setGrammarguidelineid(grammarguidelineid);
					gmgl.setGrammarguidelinename(grammarguidelinename);
					gmgl.setGrammarguidelineimage(grammarguidelineimage);
					gmgl.setContent(content);
					
					list.add(gmgl);
								
				}
			else
				request.setAttribute("msglistgrammarguidelinemanage", "there is not any grammar exercise ");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			request.setAttribute("msglistgrammarguidelinemanage", e.getMessage());
		}	
		
		return list;
	
	}
	
	public static boolean Insertgrammarguidelinename(HttpServletRequest request,Connection conn,grammarguideline grammarguideline)
	{
		//create preparedstatement
		PreparedStatement pttm = null;
		
		// truyền truy vấn sql cho đối tượng preqaredstatement
		String sql = "insert into grammarguideline(grammarguidelinename) values(?)" ;
		
		
		try 
		{
			pttm = conn.prepareStatement(sql);
			
			
			String grammarguidelinename 	= grammarguideline.getGrammarguidelinename();
			
			
			pttm.setString(1,grammarguidelinename);						// 1 2 :paremeterindex là vị trí, x là biến 
			
															//pttm.setString(parameterIndex, x);
			// thực thi truy vấn
			//int kt = pttm.executeUpdate(); 							// khai báo int vì biến trả về của excuteupdate là kiểu int
			int kt = pttm.executeUpdate();
			if (kt != 0)    // điề kiện if đúng thì thực thi thêm dữ liệu thành công
			{
				return true;
			}
			pttm.close();  // đóng pttm
		} 
		catch (SQLException e) 
		{
			//e.printStackTrace();
			request.setAttribute("msglistgrammarguidelinemanage", e.getMessage());
			
		}
		return false;
	}
	
}
