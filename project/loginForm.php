<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>無標題文件</title>
</head>
<body>
<center>
<?php
session_start();
//set the login mark to empty
$_SESSION['uID'] = "";
?>
<h1>Login Form</h1><hr />
<form method="post" action="controller.php">
	<input type="hidden" name="act" value="login">
	<table>
	<tr>
		<td>User Name</td> 
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit"></td>
	</tr>
</form>
</center>
</body>
</html>