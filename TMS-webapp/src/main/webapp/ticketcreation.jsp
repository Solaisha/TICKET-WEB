<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ticket Creation</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<br>
<br>
<div align= "left"><font size=5 color=orange>WELCOME</font> <font size=5 color=lightblue>${login.name}!!</font></div>
<form action="/tickets/ticketcreation" method="GET">
			
	     <h3><font color=lightblue ></font></h3> <input type="hidden" name="EmailId" value="${login.emailId}"/>
	  
		<h3><font color=lightblue ></font></h3>  <input type="hidden" name="Password" value="${login.password}"/>
	
	    <h3><font color=lightblue >Subject:</font></h3>    <input type="text" name="Subject" required/>
	 
	   <h3><font color=lightblue >Description:</font></h3> <input type="text" name="Description" required/>
	
	    <h3><font color=lightblue >Department:</font></h3> <input type="radio" name="Department" value="HR" ><font color=orange >HR</font>
							<input type="radio" name="Department" value="IT"><font color=orange >IT   </font>
							<input type="radio" name="Department" value="Finance"><font color=orange > Finance</font>				
	
	    <h3><font color=lightblue >Priority:</font></h3>   <input type="radio" name="Priority" value="High"><font color=orange > High</font>
 	
 					 		 <input type="radio" name="Priority" value="Medium"><font color=orange > Medium</font>
 	
 							 <input type="radio" name="Priority" value="Low"><font color=orange > Low </font>
 							 
		<button type="submit"><h4>Create Ticket</h4></button>
		<a href="Welcome.jsp">LOGOUT</a>     
		
		
		
	</form>




</body>
</html>