<?php
$con=mysqli_connect("localhost","root","","a310");
$c=mysqli_select_db($con,"a310");
if($c)
$username=$_POST['username'];
$zipcode=$_POST['zipcode'];
$year=$_POST['yy'];
$month=$_POST['mm'];
$day=$_POST['dd'];
$dob=$year.'-'.$month.'-'.$day;
if(empty($username) or empty($zipcode) or empty($dob) )
{
         ?>
        <script>
        alert("Please enter all fields ");
        document.location="forgot_password.html";
        </script>
        <?php
}
else
{
$res=mysqli_query($con,"select password from users where user_id='$username' and zipcode='$zipcode'and dob='$dob'");
$rows=mysqli_num_rows($res);
	if($rows>0)
	{
	$f=mysqli_fetch_array($res);
	$color="green";
	 print "<center><h1>your password is :<font color='$color'>  $f[0]</font> </h1></center>" ; 
        }
        else
        {
                ?>
                <script>
                alert("invalid enterys");
                document.location="forgot_password.html";
                </script>
                <?php
        }
}
mysqli_close($con);
?>

