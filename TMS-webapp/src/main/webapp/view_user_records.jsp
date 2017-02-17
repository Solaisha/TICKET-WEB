<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View User Records</title>
</head>
<body>
<div align="left">
<img src="/Images/Revature Logo.png" width="75" height="50" />
</div>
	<form action="/tickets/view_user_records" method="GET">
	<h3><font color=lightblue >Email Id :</font></h3>   <input type="text" name="EmailId" value="${login.emailId }"/><br>
	
	    <h3><font color=lightblue >Password :</font></h3> <input type="password" name="Password" value="${login.password} "/><br>
		 
		 <button type="submit"><h3><font color=orange >View</font></h3></button><br>
	

<table border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>User_id</th>
				<th>Subject</th>
				<th>Description</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="c" items="${list}" varStatus="i">
				<tr>
					<td>${c.id}</td>
					<td>${c.userId.id}</td>
					<td>${c.subject}</td>
					<td>${c.description}</td>
					<td>${c.status}</td>
					
				</tr>
			</c:forEach>
		</tbody>
	</table>
	</form>
</body>
</html>