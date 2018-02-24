<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Naruto Login</title>
<style>
	
	.center-in-browser {
		height: 300px;
		width: 350px;
		background-color:yellow;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
	
	.center-in-div {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
	}
</style>

<script>
	$(function(){
		
	});
</script>

</head>
<%String invalid = request.getParameter("invalid")==null?"0":request.getParameter("invalid");%>

<body>
	<div class="center-in-browser">
		<form name="myform" method="POST" action="<%=request.getContextPath()%>/Controller?login=1">
			<table class="center-in-div" align="center" style="" border="0">
				<tr>
					<td>Username: </td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password: </td>
					<td><input type="text" name="password"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="Log in"></td>
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