<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Ticket</title>
</head>
<body>
<h4><a href="/">List Tickets</a> &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;                               
<a href="/logout">Logout</a></h4>
<h1> Create a new ticket </h1>
	<form method="POST" action="/saveTicket" enctype="multipart/form-data">
		 Subject<br /> 
		<input type="text" name="subject"><br />
		<br /> Description<br />
		<textarea name="description" rows="5" cols="30"></textarea>
		<br />
		<br /> <input type="submit" value="Submit" />
	</form>
</body>
</html>