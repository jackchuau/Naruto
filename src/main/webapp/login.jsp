<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Naruto Login</title>
<link rel="shortcut icon" href="images/logo/site_title.ico" />
<style>

	body {
    	background-image: url("images/wallpaper/login_bg.jpg");
    	background-attachment: fixed ;
	    background-repeat: no-repeat;
	    background-size: cover;
	    background-position: center;
	}
	
	.center-in-browser {
		height: 100px;
		width: 250px;
		background-color:#F2F3F4;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);	
	}
	
	.center-in-div {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
</style>

</head>
<%String invalid = request.getParameter("invalid")==null?"0":request.getParameter("invalid");%>

<body>
	<div class="center-in-browser">

		<form name="myform" method="POST" action="<%=request.getContextPath()%>/Controller?">
			<table class="center-in-div" align="center" style="" border="0">
				<tr>
					<td align="right">Username: </td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td align="right">Password: </td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr align="center">
					<td colspan="2" align="center">
						<input type="submit" value="Log In"> 
						&nbsp;
						<a href="signup.jsp"><input type="button" value="Sign Up"></a>
					</td>
				</tr>
				<%if(invalid.equals("1")) {%>
				<tr align="center">
					<td colspan="2"><div style="color:red; font-size:9pt;">Invalid username or password.</div></td>
				</tr>
				<%} %>
			</table>
		</form>
		
	</div>
</body>
</html>