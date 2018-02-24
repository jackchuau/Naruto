package Servlet;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * This class is for processing the login
 * @author jackchu
 *
 */
public class LoginControl{

	public static String logIn(HttpServletRequest request) throws IOException{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username);
		System.out.println(password);
		if(username.equals("admin")&&password.equals("admin")) {
			return "./index.jsp";
		}
		return "./login.jsp?invalid=1";
	}
}
