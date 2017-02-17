<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Options</title>
</head>
<body>

<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
	<form action="/tickets/employeeoptions" method="GET">
 <br>
     <br>
      <br>
     <br>
<div align="center">    
<button onclick="location.href='assignemployee.jsp'" type="button">
     <font size=5 color=pink >Assign Tickets</font></button></div> 
     <br>
     <br>
     <div align ="center"><button onclick="location.href='viewtickets.jsp'" type="button">
     <font size=5 color=pink >View his assigned Tickets</font></button></div>
     <br>
     <br>
      <div align ="center"><button onclick="location.href='ticketsolution.jsp'" type="button">
     <font size=5 color=pink >Employee's reply</font></button></div>
     <br>
     <br>
      <div align ="center"><button onclick="location.href='deleteticket.jsp'" type="button">
     <font size=5 color=pink >Delete Tickets</font></button></div>
     </form>



</body>
</html>