package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

/**
 * This class is for processing the login
 * @author jackchu
 *
 */
public class LoginControl{

	public static String logIn(HttpServletRequest request) throws IOException{
		
		try{
			String username = request.getParameter("username");
			String password = "";
			
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/naruto", "jackchu", "");
			
			String sqlStmt = "SELECT password FROM users "
						   + "WHERE username = ?";
			
			PreparedStatement pstmt = con.prepareStatement(sqlStmt);
			pstmt.setString(1, username);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()){
				password = rs.getString("password");
				if(password.equals(request.getParameter("password"))) {
					return "./index.jsp";
				}
			}
		} catch(Exception e){
			e.printStackTrace();
		}
		return "./login.jsp?invalid=1";
	}
}
