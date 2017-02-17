<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Options</title>
</head>

<body>
${login}
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
	<form action="/tickets/useroptions" method="GET">
 <br>
     <br>
      <br>
     <br>
     
<div align="center">    
<button onclick="location.href='ticketcreation.jsp'" type="button">
     <font size=5 color=pink >Ticket Creation</font></button></div> 
     <br>
     <br>
     <div align ="center"><button onclick="location.href='updateticket.jsp'" type="button">
     <font size=5 color=pink >Update Ticket</font></button></div>
     <br>
     <br>
      <div align ="center"><button onclick="location.href='closeticket.jsp'" type="button">
     <font size=5 color=pink >Close Ticket</font></button></div>
     <br>
     <br>
      <div align ="center"><button onclick="location.href='view_user_records.jsp'" type="button">
     <font size=5 color=pink >View My Tickets</font></button></div>
     
     </form>
</body>
</html>