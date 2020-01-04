<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
<h1>Register for Customer Support Portal</h1>
${SPRING_SECURITY_LAST_EXCEPTION.message}
<form action="register" method='POST'>
	<table>
		<tr>
			<td>Email: </td>
			<td><input type='text' name='email' value=''></td>
		</tr>
		<tr>
			<td>Username: </td>
			<td><input type='text' name='username' value=''></td>
		</tr>
		<tr>
			<td>Password: </td>
			<td><input type='password' name='password'></td>
		</tr>
		<tr>
			<td><input type='submit' name='submit' value='Register'></td>
		</tr>
	</table>
</form>

Already registered? <a href="/">Login</a>.

</body>
</html>