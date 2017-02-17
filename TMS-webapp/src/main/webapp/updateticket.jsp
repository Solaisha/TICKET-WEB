<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ticket Update</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action= "/tickets/updateticket" method="GET">

	     <h3><font color=lightblue ></font></h3> <input type="hidden" name="EmailId" value ="${login.emailId}">
	  
		<h3><font color=lightblue ></font></h3>  <input type="hidden" name="Password" value ="${login.password}">
		 	
	    <h3><font color=lightblue >IssueId:</font></h3> <input type="text" name="issueId" required />
							
	    <h3><font color=lightblue >Update Description:</font></h3>  <input type="text" name="update description" required/> 
 	
 					 		 
		<button type="submit"><h3><font color=orange >Update Ticket</font></h3></button>
		
		
		</form>
</body>
</html>