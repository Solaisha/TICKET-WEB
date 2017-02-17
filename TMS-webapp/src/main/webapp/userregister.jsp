<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Register</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
<form action="/tickets/userregister" method="GET">

<h3><font color=lightblue >*Name</font></h3><input type="text" name="Name" required autofocus/><br>
<h3><font color=lightblue >*Email Id</font></h3><input type="email" name="EmailId" required /><br>
<h3><font color=lightblue >*Password</font></h3><input type="password" name="Password" required/><br>
<br>
<br>
<button type="submit"><h3><font color=orange >Register</font></h3></button>


</form>

<!--  <a href="userlogin.jsp" class="button">Touch here for sign up</a>-->

</body>
</html>