
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Cron Jobs</title>
<link rel="stylesheet" href="styles.css" type="text/css" />

<?php
include_once('connection.php');

$result=mysqli_query($dbcon,"select clientid,jobid,result,function,time from tasks");

?>
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--
agile, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>

<body>
	<fieldset>
		<form>
		<?php
$uname = "admin";
$pwd = "admin";

session_start();

if(isset($_SESSION['uname'])){

	echo "<h1>Welcome  ".$_SESSION['uname']."</h1>";
	
	echo "<br> <a href='logout.php'><input type=button  class=formbutton value= logout name= logout></a>";
}
else{
	if($_POST['uname']==$uname && $_POST['pwd'] == $pwd){
		$_SESSION['uname']=$uname;
		echo "<script>location.href='index1.php'</script>";
	}
	else{
		echo "<script>alert('username or password incorrect!')</script>";
		echo"<script>location.href='login.php'</script>";

	}
}
?>
</form>
</fieldset>
		<section id="body" class="width">
			<aside id="sidebar" class="column-left">

			<header>
				<h1><a href="#">Cron Jobs</a></h1>

				<h2>Monitor Ur Cron Jobs</h2>
				
			</header>

			<nav id="mainnav">
  				<ul>
                            		<li class="selected-item"><a href="http://localhost/GROUP5/index1.php">Average Rate</a></li>
                           		 <li><a href="http://localhost/GROUP5/example.php">Waiting Jobs</a></li>
                           		 <li><a href="#">Failure Rate</a></li>
                            		<li><a href="#">Success Rate</a></li>
                            		<li><a href="http://localhost/GROUP5/index1.php">Ready jobs</a></li>
                            		<li><a href="http://localhost/GROUP5/blacklist.php">Black Listed</a></li>
                        	</ul>
			</nav>

			
			
			</aside>
			<section id="content" class="column-right">
                		
	    <article>
				
			
			
				<h3>Table</h3>
				<?php
				echo "<table width = 100%>";
				echo "	<tr>
				        <th>clientid</th>
						<th>JobId</th>
						<th>Result</th>
						<th>Function</th>
						<th>Time</th>
						
					</tr>";
				
					   while($rows=mysqli_fetch_assoc($result)){

					   		echo "<tr><td>";
					   		echo $rows['clientid'];
					   		echo "</td><td>";
					   		echo $rows['jobid'];
					   		echo "</td><td>"; 
					   		echo $rows['result']; 
					   		echo "</td><td>";
					   		echo $rows['function']; 
					   		echo "</td><td>";

					   		echo $rows['time'];
					   		echo "</td><td>";
					   		
					   		echo "</td><td>";
					   		
					   		echo "</td><td>";
					   		 
					   		echo "</td><td>";
					   		
					   		echo "</td><td>";
					   		
					   		echo "</td><td>"; 
					   		
					   		
					   		


					   }
					   

					  
					

				echo "</table>";
				?>

			
		<a href="#" class="button">Calculate</a>
		<a href="#" class="button button-reversed">Refresh</a>


		
		</article>
	
		<article class="expanded">

            		
			<div class="article-info"> <time datetime="2013-05-14">14 May</time> by <a href="#" rel="author">Group 5</a></div>

			
            

		
		</article>

			
			<footer class="clear">
				<p>&copy; 2018 Cron Jobs <a href="#">Web Task Server</a> by Group 5</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>
	

</body>
</html>
