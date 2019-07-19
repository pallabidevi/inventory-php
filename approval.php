<?php

include('header.php');
include('conn.php'); 
if(isset($_GET['from'])){
    $from= $_GET['from'];
    $upto = $_GET['upto'];
    $join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom where date between '$from' and '$upto'");
}elseif(isset($_GET['divna'])){
   $divid=$_GET['divna'];
    $join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom where d.divid='$divid'");
}
else{
    $join=mysqli_query($conn,"select * from issue i join materials m on i.mid = m.mid join subdivision s on s.sdivid=i.issuedto join division d on d.divid=i.issuedfrom ");
}?>
                        

<div class="row">
        <div class="col-md-12">
            <!-- DATA TABLE -->
                        <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                            <th>material name</th>
                                            <th>quantity of requisation</th>
                                            <th>quantity</th>
                                            <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                            while($row=mysqli_fetch_array($join))
                            {
                                
                    ?>
                      <tr class="tr-shadow">   
                      <td >
                    <?php echo $row['mname'] ?>
                    </td>          
                    <td >
                    <?php echo $row['quantityofreq'] ?>
                    </td>
                    
                    <td>
                    <?php echo $row['issuequan'] ?>
                    </td>
                    <td>
                    <select class="js-select2" onchange="javascript:location.href=this.value;" name="type">
                            <option value="<?php echo $row['status'] ?>" selected="selected"><?php echo $row['status'] ?></option>
                            <option value="updateapprove.php?user=<?php echo $row['issuedfrom'] ?>&id=<?php echo $row['iid'] ?>">Approved</option>
                        </select>
                    
                    </td>
                    <td>
                    <tr class="spacer"></tr>
                    </td>
                            <?php } ?>
                   
                </tr>
                       
            </tbody>
            </form>
        </table>
    </div>
    

                                <!-- END DATA TABLE -->