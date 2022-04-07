<?php
session_start();

if(isset($_SESSION['uname'])){
	echo "<h2>Welcome to home page</h2>";
	echo "<br><a href='http://localhost/GROUP5/welcome.php'><input type=button name=back value=back></a>";

}
else{
	echo"<script>location.href='http://localhost/GROUP5/login.php'</script>";
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>home page</title>
	<link rel="stylesheet" href="styles.css" type="text/css" />

</head>
<body>

</body>
</html>