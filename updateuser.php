<?php
$userid = $_POST['uid'];
$username=$_POST['uname'];
$email=$_POST['email'];
$usertype=$_POST['usertype'];
$firstname=$_POST['fname'];
$lastname=$_POST['lname'];
$gender=$_POST['gender'];
$dob=$_POST['dob'];
$phone=$_POST['phone'];
$country=$_POST['country'];
$state=$_POST['state'];
$city=$_POST['city'];
$pin=$_POST['pin'];

$conn=mysqli_connect('localhost','root','','apdcl');
if(!$conn)
{
	die ("Connection fail".mysqli_connect_error());
}

$qry="UPDATE users SET usertypes='$usertype',username='$username',firstname='$firstname',lastname='$lastname',gender='$gender',dob='$dob',phone='$phone',email='$email',country='$country',state='$state',city='$city',pincode='$pin' WHERE userid='$userid'";

if(mysqli_query($conn,$qry))
{
	$activity="insert into activity (userid,status,description) values ('$userid','INSERT','A new record is updated from users table')";
	mysqli_query($conn,$activity);
	header("Location: editusers.php?edituser=ok&id=userid");
	
	}
else{
	header("Location: editusers.php?edituser=ok&id=userid");
	}

mysqli_close($conn);

?>