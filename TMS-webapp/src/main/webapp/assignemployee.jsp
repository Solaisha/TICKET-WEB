<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assigning Employee</title>
</head>
<body>


<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action= "/tickets/assignemployee" method="GET">

	     <h3><font color=lightblue ></font></h3> <input type="hidden" name="EmailId" value ="${emplogin.emailId}">
	  
		<h3><font color=lightblue ></font></h3>  <input type="hidden" name="Password" value ="${emplogin.password}">
	
	    <h3><font color=lightblue >IssueId:</font></h3>  <input type="number" name="IssueId" required/>
	 
	   <h3><font color=lightblue >EmployeeId:</font></h3> <input type="number" name="EmployeeId" required/>
	
						 	
 					 		 
		<button type="submit"><h3><font color=orange >Assigned Employee</font></h3></button>
		
		</form>

</body>
</html>