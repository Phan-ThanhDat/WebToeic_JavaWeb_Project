package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import BEAN.Member;

public class RegisterDAO {

	public static boolean InsertAccount(HttpServletRequest request,Connection conn,Member member)
	{
		//create preparedstatement
		PreparedStatement pttm = null;
		// truyền truy vấn sql cho đối tượng preqaredstatement
		String sql = "insert into member(name,membername,memberpass,Categorymemberid) values(?,?,?,?)" ;
		try 
		{
			pttm = conn.prepareStatement(sql);
			
			//truyền 2 biến uname và password vào 2 dấu ? line 14
			String name 	= member.getName();
			String membername = member.getMembername();
			String memberpass= member.getMemberpass();
			int categorymemberid = 1;	
			
			pttm.setString(1,name);						// 1 2 :paremeterindex là vị trí, x là biến 
			pttm.setString(2,membername);
			pttm.setString(3,memberpass);						// 1 2 :paremeterindex là vị trí, x là biến 
			pttm.setInt(4,categorymemberid);
															//pttm.setString(parameterIndex, x);
			// thực thi truy vấn
			int kt = pttm.executeUpdate(); 							// khai báo int vì biến trả về của excuteupdate là kiểu int
		
			if (kt != 0)    // điề kiện if đúng thì thực thi thêm dữ liệu thành công
			{
				return true;
			}
			pttm.close();  // đóng pttm
		} 
		catch (SQLException e) 
		{
			//e.printStackTrace();
			request.setAttribute("msgregister", e.getMessage());
			
		}
		return false;
	}
}
