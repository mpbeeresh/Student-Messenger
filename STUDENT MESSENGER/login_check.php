<?php
$servername='localhost';  // hostname or ip of server
$mysqli_login='root'; // username and password to log onto db server
$mysqli_password='';
$dbname='a310';  // name of database

function connecttodb($servername,$dbname,$mysqli_login,$mysqli_password)
{
	global $link;
	$link=mysqli_connect("$servername","$mysqli_login","$mysqli_password","$dbname");
	if(!$link){die("Could not connect to MySQL");}
		mysqli_select_db($link,"$dbname")// change the default database for the connection.
		 or die ("could not open db".mysqli_error());
}

connecttodb($servername,$dbname,$mysqli_login,$mysqli_password);

session_start();
$username=$_REQUEST['username'];
$pass=$_REQUEST['password'];
$res=mysqli_query($link,"select user_id, password from users where user_id='$username' and password='$pass'");
$rows=mysqli_num_rows($res);

if($rows>0)
{
	?>
	<script>
		document.location="home.html";
	</script>
	<?php
	$_SESSION['username']=$user=$_REQUEST['username'];
	$password=$_REQUEST['password'];
	mysqli_query($link,"UPDATE users SET status=1 WHERE user_id='$user'");
}
else
{
	?>
	<script>
		alert("invalid username or password. Please enter again");
		document.location="index.html";
	</script>
	<?php
}
mysqli_close($con);
?>

