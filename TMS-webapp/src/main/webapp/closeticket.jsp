<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ticket Close</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action="/tickets/closeticket" method="GET">
	  <h3>Email Id :</h3>   <input type="email" name="EmailId" required placeholder="eg:xyz@gmail.com" required autofocus/>
	    <h3>Password :</h3> <input type="password" name="Password" required/>
	    <h3>Issue Id:</h3><input type="text" name="IssueId" required/><br>
		<button type="submit"><h4>Close This Ticket</h4></button>
	</form>
</body>
</html>