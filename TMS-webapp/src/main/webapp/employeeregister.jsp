<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Register</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action="/tickets/employeeregister" method="GET">

<h3><font color=lightblue >*Name</font></h3><input type="text" name="Name" required autofocus/>
<h3><font color=lightblue >*Email Id</font></h3><input type="text" name="EmailId" required />
<h3><font color=lightblue >*Password</font></h3><input type="password" name="Password" required/>
<h3><font color=lightblue >*Role</font></h3><input type="radio" name="Role" value="Admin"><font color=orange >Admin</font>
											<input type="radio" name="Role" value="Author"><font color=orange >Author</font>
											<input type="radio" name="Role" value="User"><font color=orange >User</font>
											
<h3><font color=lightblue >*Department</font></h3><input type="radio" name="Department" value="HR"><font color=orange >HR</font>
													<input type="radio" name="Department" value="IT"><font color=orange >IT</font>	
											
<button type="submit"><h3><font color=orange >Register</font></h3></button>

</form>



</body>
</html>