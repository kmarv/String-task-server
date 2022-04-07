<?php


$fh = fopen("ready_list.txt", 'w') or die("Could not open: " . mysql_error());
fwrite($fh);
fclose($fh);

$sql = mysql_connect("localhost", "root", "","work");
if (!$sql) {
    die("Could not connect: " . mysql_error());
}
mysql_select_db("work");
$result = mysql_query("LOAD DATA INFILE '$myFile'" .
                      " INTO TABLE test FIELDS TERMINATED BY '|'");
if (!$result) {
    die("Could not load. " . mysql_error());
}
?>