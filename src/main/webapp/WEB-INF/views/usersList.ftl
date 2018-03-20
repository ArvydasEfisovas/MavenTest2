<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Vartotoju sarasas</h1>
<table>
	<tr>
	<th>username</th>
	<th>userlevel</th>
	<th>El. pastas</th>
	<th>Metai</th>
	</tr>
	<#list users as user>
	<tr>
		<td>${user.username}</td>
		<td>${user.userlevel}</td>
		<td>${user.email}</td>
		<td>${user.timestamp}</td>
	</tr>
	</#list>
</table>
</body>
</html>