<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Login</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action="/tickets/employeelogin" method="GET">

<h3><font color=lightblue >*Email Id</font></h3><input type="text" name="EmailId" required autofocus />
<h3><font color=lightblue >*Password</font></h3><input type="password" name="Password" required/>
<button type="submit"><h3><font color=orange >Sign up</font></h3></button>

</form>


</body>
</html>