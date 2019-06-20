<?php

session_start();

$usertype = $_SESSION['usertypes'];

$userid = $_SESSION['userid'];

include('conn.php');

$id = $_GET['id'];
$whometo = $_GET['user'];
$query = "update issue set status='approved' where iid='$id'";
$userquery = "select * from  issue where iid='$id'";

$rss = mysqli_query($conn,$userquery);

$userdb = mysqli_fetch_array($rss);

$utype = $userdb['issuedfrom'];



if(mysqli_query($conn,$query))
{
    
	$notify="insert into notification (usend,description,whom_to_notify) values (5,'the item has been approved', '$whometo')";
	mysqli_query($conn,$notify);
	header("Location: approval.php");
	}
else{
	echo "failed";
	}

mysqli_close($conn);

// insert into notification values(id, description, usertype);

//Redirect approval

?>