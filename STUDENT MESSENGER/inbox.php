<html>
<head>
</head>
<body>

<br>

<?php

$con=mysqli_connect("localhost", "root","","a310");
$c=mysqli_select_db($con,"a310");

?>
<form method="post" action="inbox.php" target="c">
<font color="#ffffff">
<table align=left height=70 width=100% style='border-collapse: collapse' >
<tr>
        <td bgcolor="#6e6f7b"  width="10">box</td>
        <td bgcolor="#6e6f7b"  width="20">From</td>
        <td bgcolor="#6e6f7b" width="120">Subject</td>
        <td bgcolor="#6e6f7b"  width="120">Date and Time</td>
</tr>
</font>
<?php

//$user=$_COOKIE["session_id"];
session_start();
$user=$_SESSION['username'];
$res=mysqli_query($con,"select * from messages where receiver_id='$user' order by msg_time desc"); //changed by me

echo "<p><P>";
$num=mysqli_num_rows($res);
$check="checkbox";
$color1="#ffffff";
$color2="#eeeeee";
$nowrap="nowrap";

for($i=0;$i<$num;$i++)
{
        $row=mysqli_fetch_array($res);
	   if($i%2){
          echo "<tr>
                  <td bgcolor=$color1 nowrap=$nowrap width=10><input type=$check  name=box[] value=$row[0]></td> 
                  <td bgcolor=$color1 nowrap=$nowrap width=20>$row[2]</td> 
                  <td bgcolor=$color1 nowrap=$nowrap width=120><a href=mail_content.php?msg_id=$row[0]>$row[4]</a></td> 
                        <td bgcolor=$color1 nowrap=$nowrap width=120>$row[5]</td></tr> ";
        }else{
                 echo "<tr>
                        <td bgcolor=$color2 nowrap=$nowrap width=10><input type=$check name=box[] value=$row[0] ></td> 
                        <td bgcolor=$color2 nowrap=$nowrap width=20>$row[2]</td> 
                        <td bgcolor=$color2 nowrap=$nowrap width=120><a href=mail_content.php?msg_id=$row[0]>$row[4]</a></td> 
                        <td bgcolor=$color2 nowrap=$nowrap width=120>$row[5]</td></tr> ";

        }

}

?>

</table>
<DIV STYLE="POSITION:ABSOLUTE; LEFT:30; TOP:300">
<input type="submit"  name="submit" value="delete">
</div>
</form>
<div  STYLE="POSITION:ABSOLUTE; LEFT:30; TOP:400"><img src="img/u14366930.jpg"></div>
<<?php  
if(isset($_POST['submit'])) //checking if the form is submitted or not. 
{ 

  $box=$_REQUEST['box'];
    
  //echo" your inbox has " 
    foreach($box as $key=>$value)
    $result=mysqli_query($con,"DELETE from messages where msg_id='$value' ");
    echo "You have successfully deleted the selected mails!!! <br>"; 
}
?>
</body>
</html>

