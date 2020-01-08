<html>
<head>
</head>
<body>
<br>
<br>
<form method="post" action="inbox.html" target="c">
<font color="#ffffff">
<table align=left height=70 width=700 style='border-collapse: collapse' >   
 </font>
<?php

session_start();
$con=mysqli_connect("localhost", "root","","a310");
$c=mysqli_select_db($con,"a310");
$user=$_SESSION["username"];
$num=$_REQUEST["msg_id"];

$res=mysqli_query($con,"select * from messages where msg_id='$num'"); 
//print_r($res);
echo "<p><P>";
$num=mysqli_num_rows($res);
$check="checkbox";
$color1="#bbbbbb";
$color2="#eeeeee";
$nowrap="nowrap";


$row=mysqli_fetch_array($res);

				echo "<tr><td bgcolor=$color1 >User name: $row[1]</td></tr>
					  <tr><td bgcolor=$color1 >Subject : $row[4]</td></tr>
					  <tr><td bgcolor=$color1 >Date and Time : $row[5]</td></tr>
					  <tr><td bgcolor=$color1 >Content : </td></tr>
                      <tr rowspan=10 colspan=6 ><td bgcolor=$color2> $row[6]</td></tr> ";					           
?>
</table>
<br>
<br><br>
<br>
<br>
<br>
<br>
<br><br><br><br><br><br>

<div align="middle">
 <a href="inbox.php"><h3>BACK</h3></a></div></font>
</body>
</div>
</div>

</form>
</body>
</html>

