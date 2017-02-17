<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action="/tickets/userlogin" method="GET">
<h4><font color=lightblue >*Email Id</font></h4><input type="text" name="EmailId" required autofocus />
<h4><font color=lightblue >*Password</font></h4><input type="password" name="Password" required/>
<button type="submit"><h4>Sign up</h4></button>


</form>


</body>
</html>