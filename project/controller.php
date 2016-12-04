<?php
session_start();
require("User.php");
if(! isset($_POST["act"])) {
	exit(0);
}

$act =$_POST["act"];
switch($act) {
	case "login":
		$loginName = $_POST['id'];
		$password = $_POST['pwd'];
		if (checkUser($loginName, $password)) {
			//set login session mark
			$_SESSION['uID'] = $loginName;
			echo "login OK<br>";
			echo "<a href='mycard.php'>Home</a>";
		} else {
			//set login mark to empty
			$_SESSION['uID'] = "";
			echo "Login failed.<br>";
			echo "<a href='loginForm.php'>login</a>";
		}
	default:
}
?>
