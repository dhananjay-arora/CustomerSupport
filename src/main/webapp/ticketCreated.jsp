<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Created</title>
</head>
<body>
<h4><a href="/">List Tickets</a> &emsp;&emsp;     
<a href="/ticket-form">Create another new ticket</a> &emsp;&emsp;                               
<a href="/logout">Logout</a></h4>
<h3>Ticket has been created successfully. </h3>
<br/>
<h3>Ticket Details:<br/></h3>
<table border="1">
<tr><th align="left">Ticket ID</th><td>${ticketObj.ticketid}</td></tr>
<tr><th align="left">Subject</th><td>${ticketObj.subject}</td></tr>
<tr><th align="left">Description</th><td>${ticketObj.description}</td></tr>
</table>
</body>
</html>