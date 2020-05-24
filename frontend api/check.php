<?php
include "db_connect.php";

$pass=sha1($_POST["Password"]);
$sel="SELECT * FROM `user` where Email='".$_POST["Email"]."' and Password='$pass'";
$result=mysqli_query($connec,$sel) or die(mysqli_error($connec));
if(mysqli_num_rows($result) == 0)
{
session_start();
$_SESSION['error'] = '<p style="color:black;">Invalid username or password</p>';
  header('Location: login.php');
}
else
{
session_start();
$_SESSION['user']=$_POST["Email"];
$_SESSION['last_login_timestamp'] = time();
$sel2="SELECT * FROM `login_details` where Email='".$_POST["Email"]."'";
$result2=mysqli_query($connec,$sel2);

if(mysqli_num_rows($result2) == 0)
{
$ins1="INSERT INTO `login_details`(`Email`)VALUES('".$_POST['Email']."')";
mysqli_query($connec,$ins1) or die(mysqli_error($connec));
}

$sel2 = "UPDATE user SET Timestamp = now() WHERE Email='".$_POST["Email"]."'";
mysqli_query($connec,$sel2);

echo '<script language="javascript">document.location.href="loggedin.php"</script>';

}
?>