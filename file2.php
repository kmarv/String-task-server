<?php
s : $conn = new mysqli('localhost','root','','work');
$file = fopen("blacklist.txt", "r");

while (!feof($file)) {
	$content = fgets($file);
	$array = explode("|", $content);
	list($clientid,$function,$task) = $array;
	$sql = "INSERT INTO `blacklist`(`clientid`,`function`,`job`) VALUES ('$clientid','$function','$task')";
	$conn->query($sql);
}

	sleep(5);
	fclose($file);
	
?>

