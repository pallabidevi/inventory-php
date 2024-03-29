 <?php

include('header.php');
include('conn.php'); 

if(isset($_GET['from'])){
    $from= $_GET['from'];
    $upto = $_GET['upto'];
    $join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom where date between '$from' and '$upto'");
}
else{
    $join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom  ");
}

?>

<div class="row">
        <div class="col-md-12">
            <!-- DATA TABLE -->
            <h3 class="title-5 m-b-35">Data table</h3>
            <div class="table-data__tool">
                <div class="table-data__tool-left">
                    <div class="rs-select2--light rs-select2--md-10">
                    <form action='issuetable.php'>
                        <label >From</label>
                        <input type="date" name="from">
                    
                        </div>
                        <div class="rs-select2--light rs-select2--mD-10">
                        <label >Upto</label>
                        <input type="date" name="upto">
                            
                        </div>
                        <button class="au-btn-filter">
                            <i class="zmdi zmdi-filter-list"></i>filters</button>
                    </form>
                </div>
                <div class="table-data__tool-right">
                    <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                        <select class="js-select2" onchange="javascript:location.href=this.value;" name="type">
                            <option selected="selected">Export</option>
                            <option value="issuepdf.php">PDF</option>
                            <option value="">EXCEL</option>
                        </select>
                        <div class="dropDownSelect2"></div>
                    </div>
                    <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                            <a href="viewissuetable.php">Print</a>
                    </button>
                </div>
            </div>
    
       <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                            <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                            <th>status</th>
                                            <th>material name</th>
                                            <th>date</th>
                                            <th>issue to</th>
                                            <th>issue from</th>
                                            <th>issue quantity</th>
                                            <th>amount</th>
                                            
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                            while($row=mysqli_fetch_array($join))
                            {
                                
                    ?>
                      <tr class="tr-shadow"> 
                      <td>
                    <?php echo $row['status'] ?>
                    </td>  
                      <td >
                    <?php echo $row['mname'] ?>
                    </td>          
                    <td >
                    <?php echo $row['date'] ?>
                    </td>
                    <td >
                    <?php echo $row['sdivname'] ?>
                    </td>
                    <td>
                    <?php echo $row['issuedfrom'] ?></a>
                    </td>
                    <td>
                    <?php echo $row['issuequan'] ?>
                    </td>
                    <td>
                    <?php echo $row['amount'] ?>
                    </td>
                    <td> <tr class="spacer"></tr>
                    </td>
                            <?php } ?>
                    <tr class="spacer"></tr>
                </tr>
            </tbody>
              </table>
            </div>
          </div>