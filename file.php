<?php
s : $conn = new mysqli('localhost','root','','work');
$file = fopen("ready_list.txt", "r");

while (!feof($file)) {
	$content = fgets($file);
	$array = explode("|", $content);
	list($clientid,$jobid,$result,$function,$time) = $array;
	$sql = "INSERT INTO `tasks`(`clientid`,`jobid`,`result`,`function`,`time`) VALUES ('$clientid','$jobid','$result','$function','$time')";
	$conn->query($sql);
}

	sleep(5);
	fclose($file);
	
?>

