<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Datatable - srtdash</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amcharts css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>

<?php
    include('header.php');
    include('conn.php'); 
    if(isset($_GET['from'])){
        $from= $_GET['from'];
        $upto = $_GET['upto'];
        $join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom where date between '$from' and '$upto'");
    }
    else{
        $join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom ");

    }
    
?><!-- Dark table start -->

                        <div class="card">
                            <div class="card-body">
                                    <h4 class="header-title">Issued Table</Table></h4>
                                <div class="table-responsive table-responsive-data2">
                                    <div class="data-tables datatable-dark">
                                    <div class="table-data__tool">
                                    <div class="table-data__tool-left">
                                    <div class="rs-select2--light rs-select2--md-10">
                                                <form action='issuetable.php'>
                                                    <label class="form-control-label">From :</label>
                                                    <input type="date"  name="from" >
                                                    <label class="form-control-label">Upto :</label>
                                                    <input type="date"  name="upto" >
                                                    <button class="au-btn-filter">
                                                    <i class="zmdi zmdi-filter-list"></i>filters</button>
                                                </form>
                                                    <div class="dropDownSelect2"></div>
                                        </div>    
                                        </div>
                                        <div class="rs-select2--light rs-select2--md-10">
                                            <div class="dropDownSelect2"></div>
                                            <div class="table-data__tool-right">
                                                <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                                                <select class="js-select2" onchange="javascript:location.href = this.value;" name="type">
                                                    <option selected="selected">Export</option>
                                                    <option value="issuepdf.php">PDF</option>
                                                   
                                                </select>
                                                <div class="dropDownSelect2"></div>
                                                </div>
                                                <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                                    <a href="issue_table_print.php">Print</a>
                                            </div>
                                        </button></div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    <div class="col-12 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Issued Table</Table></h4>
                                <div class="table-responsive table-responsive-data2">
                                <div class="data-tables datatable-dark">
                                    <table id="dataTable3" class="text-center">
                                        <thead class="text-capitalize">
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
                                            <?php while($row = mysqli_fetch_array($join)): ?>
                                                <tr>
                                                    <td>  <?php echo $row['status'] ?></td>
                                                    <td>  <?php echo $row['mname'] ?></td>
                                                    <td> <?php echo $row['date'] ?></td>
                                                    <td> <?php echo $row['sdivname'] ?></td>
                                                    <td>  <?php echo $row['issuedfrom'] ?></td>
                                                    <td> <?php echo $row['issuequan'] ?></td>
                                                    <td> <?php echo $row['amount'] ?></td>
                                                </tr>

                                            <?php endwhile; ?>
                                        
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div></div>
                    <!-- Dark table end -->
                
            </div>
        </div>
        <!-- main content area end -->
        
    
    <!-- page container area end -->
    
    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>

</html>
