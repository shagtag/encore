package com.encore.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MySQLDBUtil {

	//DB 연결
	public static Connection dbConnect() {
		Connection conn = null;
		
		String url="jdbc:mysql://192.168.2.106:3306/employees?useSSL=true&verifyServerCertificate=false";  
		
		String user = "root", password="1234";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				conn = DriverManager.getConnection(url, user, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
		
	}
	
	//DB 연결해제
	public static void dbDisconnect(ResultSet rs, Statement st, Connection conn) {
		try {
			
			if(rs!=null)conn.close();
			if(st!=null)conn.close();
			if(conn!=null)conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
