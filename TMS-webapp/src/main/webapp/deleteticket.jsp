<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Tickets</title>
</head>
<body>

<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action="/tickets/deleteticket" method="GET">
	  <h3></h3>   <input type="hidden" name="EmailId" required placeholder="eg:xyz@gmail.com"  value="${emplogin.emailId }"required autofocus/>
	    <h3></h3> <input type="hidden" name="Password" value="${emplogin.password}"required/>
	    <h3>Issue Id:</h3><input type="text" name="IssueId" required/><br>
		<button type="submit"><h4>Delete this Ticket</h4></button>
	
	</form>

</body>
</html>