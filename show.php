 <?php

//$sesid=$_SESSION['userid'];


include('header.php');
include('conn.php');

$rs=mysqli_query($conn,"select count(*) as m from materials");
$row=mysqli_fetch_array($rs);
$res=mysqli_query($conn,"select count(*) as d from damage");
$row1=mysqli_fetch_array($res);
$resu=mysqli_query($conn,"select count(*) as u from users");
$row2=mysqli_fetch_array($resu);
$rsu=mysqli_query($conn,"select count(*) as i from issue");
$row3=mysqli_fetch_array($rsu);

$select_activity = "select * from activity a join users u on a.userid=u.userid order by id desc limit  10";
$all_activity = mysqli_query($conn, $select_activity);
?>

            
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                </div>
                            </div>
                        </div>
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-collection-case-play"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $row['m']; ?></h2>
                                                <span>Total Stocks</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-delete"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $row1['d']; ?></h2>
                                                <span>Damaged</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $row2['u']; ?></h2>
                                                <span>Total Users</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c4">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2><?php echo $row3['i']; ?></h2>
                                                <span>Total Issue</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           

                        <div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<strong class="card-title">Activities</strong>
									</div>
                                                                                                        
                                    <?php
                                    while($row_act = mysqli_fetch_array($all_activity)){
                                        ?>
									<div class="card-body">
										<div class="sufee-alert alert with-close alert-primary alert-dismissible fade show">
                                            <span class="badge badge-pill badge-primary">											
                                                <div class="image img-cir img-40">
                                                <img src="<?php echo $row_act['userpic']; ?>"  />
                                                </div>
                                            </span>
                                            <span>
                                            <h6><?php echo $row_act['username']; ?></h6>
                                            <p><?php echo $row_act['description']; ?></p></span>
                                            <span class="time"><?php echo $row_act['time']; ?></span>
											<button type="button" class="close" data-dismiss="alert" aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
									</div>
                                    <?php } ?>
								</div>

           