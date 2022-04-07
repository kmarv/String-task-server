<!DOCTYPE html>
<html>
<head>
	<title>welcome page</title>
	<link rel="stylesheet" href="styles.css" type="text/css" />

</head>
<body>

</body>
</html>

<?php
$uname = "admin";
$pwd = "admin";

session_start();

if(isset($_SESSION['uname'])){

	echo "<h1>Welcome  ".$_SESSION['uname']."</h1>";
	echo "<a href='http://localhost/GROUP5/product.php'>Product</a><br>";
	echo "<br> <a href='http://localhost/GROUP5/logout.php'><input type=button value= logout name= logout></a>";
}
else{
	if($_POST['uname']==$uname && $_POST['pwd'] == $pwd){
		$_SESSION['uname']=$uname;
		echo "<script>location.href='http://localhost/GROUP5/index1.php'</script>";
	}
	else{
		echo "<script>alert('username or password incorrect!')</script>";
		echo"<script>location.href='http://localhost/GROUP5/login.php'</script>";

	}
}
?>