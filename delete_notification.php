<?php   

$id=$_GET['id'];

include('conn.php');
 $select_delete="delete from notification where id=$id";
$query_delete=mysqli_query($conn,$select_delete);
header('location:show.php');

?>