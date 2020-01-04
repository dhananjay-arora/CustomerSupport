<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Support Application</title>
</head>
<body>
	<h1>Customer Support Application</h1>
	<h3><a href="/ticket-form">Create a new ticket</a> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	<a href="/logout">Logout</a></h3>
	<br />
	<h3>List of Tickets</h3>
	<br />
	<table border="1">
		<tr>
			<th>Ticket ID</th>
			<th>Subject</th>
			<th>Description</th>
			<th>Update Ticket</th>
			<th>Delete Ticket</th>
		</tr>
		<c:forEach items="${ticketList}" var="ticket">
			<tr>
				<td>${ticket.ticketid}</td>
				<td>${ticket.subject}</td>
				<td>${ticket.description}</td>
				<td><a href="/">Update</a></td>
				<td><a href="/">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>