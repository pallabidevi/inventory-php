<?php
include('conn.php');

$join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom  ");

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
<th>status</th>
<th>material name</th>
<th>date</th>
<th>issue to</th>
<th>issue from</th>
<th>issue quantity</th>
<th>amount</th>
  </tr>
  <?php
                            while($row=mysqli_fetch_array($join))
                            {
                                
                    ?>
  <tr>
<td>  <?php echo $row['status'] ?></td>
<td>  <?php echo $row['mname'] ?></td>
<td> <?php echo $row['date'] ?></td>
<td> <?php echo $row['sdivname'] ?></td>
<td>  <?php echo $row['issuedfrom'] ?></td>
<td> <?php echo $row['issuequan'] ?></td>
<td> <?php echo $row['amount'] ?></td>
  </tr>
<?php } ?>
</table>
<button onclick="window.print()">Print</button>
</form>
</body>
</html>
