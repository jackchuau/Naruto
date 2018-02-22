<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="help.Time" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script type="text/javascript">
	function doOnClick() {
		console.log(123);
		var txt = 'Follow from <a target="_blank" href="https://github.com/jackchuau/Naruto">Github</a>';
		$("#myDiv").html(txt);
	}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Naruto - Dream starts here</title>
</head>
<body>
	<h1 align="center" style="font-weigh:bold; color:red">Welcome to Naruto</h1>
	<h2 align="center" style="font-weigh:bold; color:green">Our project is one the way</h2>
	<h3 align="center">Current time is <%=Time.getCurrentTimestamp()%></h3>
	<div align="center"><button id="btn" onclick="doOnClick()"> Click to view more details</button></div>
	<div id="myDiv" align="center" style="font-size:9pt"></div>
</body>
</html>