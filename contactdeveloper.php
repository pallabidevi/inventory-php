<?php
include('header.php');
include('conn.php');

?>


<div class="card-body card-block">
        <form action="insertcontact.php" method="POST">
                <h6 class="heading-small text-muted mb-4"></h6>
                <p class="card-text">  
                  <center><h1> GET IN TOUCH with developers </h1></center></br>
                  <h5>  DEVELOPERS NAME: PALLABI DEVI and  SWASTIKA GARGA </h5></br>
                  <h5> CONTACT :pallabidevi1997@gmail.com and devangagarg520@gmail.com </h5></br>
                  <h4> You can contact by Entering following details in the form...</h4>
            </p>
            <br>
</div>
                <div class="pl-lg-10">
                  <div class="row">
                    <div class="col-lg-4">
                      <div class="form-group">
                      <label class="form-control-label" for="input-mname">Email</label>
                        <input type="email"id="input-mname" class="form-control form-control-alternative"  name="email" >
                       </div>
                     </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-subject">Subject</label>
                        <input type="text" id="input-subject" class="form-control form-control-alternative"  name="subject">
                      </div>
                    </div>
                    <div class="col-lg-4">
                      <div class="form-group">
                        <label class="form-control-label" for="input-message">Message</label>
                        <input type="text" id="input-message" class="form-control form-control-alternative"  name="message">
                      </div>
                    </div>
                    </div>
</div>
                  <div class="card-footer" >
                      <center>  <button type="submit" class="btn btn-success btn-sm">
                            <i class="fa fa-dot-circle-o"></i> Submit
                        </button></center>
                </div>
       <hr class="my-4" />
        </form>
      </div>
</div>
<div>