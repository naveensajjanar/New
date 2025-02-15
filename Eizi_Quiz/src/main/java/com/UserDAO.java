package com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

import org.json.simple.JSONObject;

public class UserDAO {
	public static String registerUser(String name,String email,String mobile,String college,String qualification,String Stream,String percentage,String CLocation,String Address,String pincode,String passout){
		String query="select * from "+DBDetails.USER_TABLE+" where "+DBDetails.EMAIL_COL+"=?";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query,  ResultSet.TYPE_SCROLL_SENSITIVE, 
                    ResultSet.CONCUR_UPDATABLE);
			ps.setString(1,email);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				return "registered";
			}
			

			
			query="insert into "+DBDetails.USER_TABLE+" ("+DBDetails.NAME_COL
					+","+DBDetails.EMAIL_COL+","+DBDetails.MOBILE_COL+","+DBDetails.COLLEGE_COL
					+","+DBDetails.QUALIFICATION_COL+","+DBDetails.STREAM_COL
					+","+DBDetails.PERCENTAGE_COL+","+DBDetails.CLOCATION_COL
					+","+DBDetails.ADDRESS_COL+","+DBDetails.PINCODE_COL+","+DBDetails.PASSOUT_COL+") values(?,?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(query,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
		

			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,mobile);
			ps.setString(4,college);
			ps.setString(5,qualification);
			ps.setString(6,Stream);
			ps.setString(7,percentage);
			ps.setString(8,CLocation);
			ps.setString(9,Address);
			ps.setString(10,pincode);
			ps.setString(11,passout);

			int result=ps.executeUpdate();
			
			ps.close();
			con.close();
			
			if(result>0)
			{
				return "true";
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "false";
	}
	
	public static String getQuestion(String question_no,String set){
		String query="select * from "+DBDetails.QUESTION_TABLE+" where "+DBDetails.SET_COL+"=?";
		JSONObject obj=new JSONObject();

		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query,  ResultSet.TYPE_SCROLL_SENSITIVE, 
                    ResultSet.CONCUR_UPDATABLE);
			ps.setString(1,set);
			ResultSet rs=ps.executeQuery();
			ResultSet rs1=null;
			
			if(rs.next())
			{
				rs.absolute(Integer.parseInt(question_no));
				obj.put("question", rs.getString(DBDetails.TEXT_COL));
				obj.put("id", rs.getString(DBDetails.ID_COL));
				
				query="select * from "+DBDetails.CHOICE_TABLE+" where "+DBDetails.QUESTION_ID_COL+"=?";
				ps=con.prepareStatement(query,  ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
				ps.setString(1,rs.getString(DBDetails.ID_COL));
				rs1=ps.executeQuery();
				
				if(rs1.next())
				{
					rs1.absolute(1);
					obj.put("a", rs1.getString(DBDetails.TEXT_COL));
					
					rs1.absolute(2);
					obj.put("b", rs1.getString(DBDetails.TEXT_COL));
					
					rs1.absolute(3);
					obj.put("c", rs1.getString(DBDetails.TEXT_COL));
					
					rs1.absolute(4);
					obj.put("d", rs1.getString(DBDetails.TEXT_COL));
				}
			}
			
			ps.close();
			rs.close();
			rs1.close();
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return obj.toString();
	}
	
	public static void setResult(String id,LinkedHashMap lhm){
		String query="insert into "+DBDetails.RESULT_TABLE+" ("+DBDetails.ANSWER_COL+","+DBDetails.QUESTION_ID_COL+","+DBDetails.USER_ID_COL+") values(?,?,?)";
		
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps;
			Set set=lhm.entrySet();
			Iterator it=set.iterator();
			
			while(it.hasNext()){
				Map.Entry m=(Map.Entry)it.next();
				
				ps=con.prepareStatement(query,  ResultSet.TYPE_SCROLL_SENSITIVE, 
                        ResultSet.CONCUR_UPDATABLE);
				ps.setString(1,m.getValue().toString());
				ps.setString(2,m.getKey().toString());
				ps.setString(3,id);
				
				ps.executeUpdate();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public static String getUserID(String email){
		String query="select * from "+DBDetails.USER_TABLE+" where "+DBDetails.EMAIL_COL+"=?";
		String id="";
		try{
			Connection con=DBConnect.getConnection();
			PreparedStatement ps=con.prepareStatement(query,  ResultSet.TYPE_SCROLL_SENSITIVE, 
                    ResultSet.CONCUR_UPDATABLE);
			ps.setString(1,email);
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()){
				id=rs.getString(DBDetails.ID_COL);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return id;
	}
	
	public  String Login(String Username,String Password) throws SQLException 
	{
		String user="";

			

		String query="select * from user where EMAIL='"+Username+"'";
		
		Connection con=DBConnect.getConnection();
		PreparedStatement ps=con.prepareStatement(query,  ResultSet.TYPE_SCROLL_SENSITIVE, 
                ResultSet.CONCUR_UPDATABLE);
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			user = rs.getString(DBDetails.EMAIL_COL);
		}
		
		
		return user;

	}
}