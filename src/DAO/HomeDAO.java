package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Sliderbanner;



public class HomeDAO {

	//display dabase
		public static List<Sliderbanner> Displayslidebanner(Connection conn) throws SQLException
		{
			List<Sliderbanner> list = new ArrayList<Sliderbanner>();
			
			String sql = "select * from slidebanner";
			
			PreparedStatement ptmt;
			try {
				ptmt = conn.prepareStatement(sql);
				ResultSet rs = ptmt.executeQuery();
				
				while ( rs.next())
				{
					Sliderbanner slide = new Sliderbanner();
					
					String slidename = rs.getString("slidename");
					String slidecontent = rs.getString("slidecontent");
					String slideimage = rs.getString("slideimage");
					
					
					slide.setSlidename(slidename);
					slide.setSlidecontent(slidecontent);
					slide.setSlideimage(slideimage);
					list.add(slide);
								
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
			
			return list;
		
		}
}
