<?php
 session_start();

 if (isset($_SESSION['uname'])) {

 	session_destroy();
 	echo "<script>location.href='http://localhost/GROUP5/login.php'</script>";
 	 	# code...
 }
 else{
 	echo "<script>location.href='http://localhost/GROUP5/login.php'</script>";
 }
?>
<!DOCTYPE html>
<html>
<head>
	<title>logout</title>
	<link rel="stylesheet" href="styles.css" type="text/css" />

</head>
<body>

</body>
</html>