<?php
session_start();

$opass=$_POST['opass'];
$npass=$_POST['npass'];
$cpass=$_POST['cpass'];
$newpass = password_hash($npass, PASSWORD_DEFAULT);
$oldpass = password_hash($opass, PASSWORD_DEFAULT);
$userid = $_SESSION['userid'];


$conn=mysqli_connect('localhost','root','','apdcl');
if(!$conn)
{
	die ("Connection fail".mysqli_connect_error());
}

if($npass==$cpass)
{
	$qry="UPDATE users SET password ='$newpass' WHERE userid='$userid'";
	


	if(mysqli_query($conn,$qry))
    {
   
	
	$activity="insert into activity (userid,status,description) values ('$userid','INSERT','password has been changed')";
    mysqli_query($conn,$activity);
    header("Location: account.php?password=ok");
	}

}
else{
	header("Location: account.php?password=fail");
	}

mysqli_close($conn);

?>