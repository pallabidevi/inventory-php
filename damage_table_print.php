<?php
include('conn.php');
$join=mysqli_query($conn,"select * from damage, materials where damage.mcode= materials.mid");

?>

<!DOCTYPE html>

<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2>Stocks Table</h2>
<form>
<table>
  <tr>
<th scope="col">Damaged Id</th>
<th scope="col">Material Name</th>
<th scope="col">Quantity</th>
</tr>
  <?php
      while($row=mysqli_fetch_array($join))
        {           
      ?>
  <tr>
  <td><?php echo $row['damid'] ?></td>
<td><?php echo $row['mname'] ?></td>
<td><?php echo $row['quantity'] ?></td>
<td>  </tr>
<?php } ?>
</table>
<button onclick="window.print()">Print</button>
</form>
</body>
</html>
