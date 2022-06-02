<?php
require_once("include/initialize.php");
 if (!isset($_SESSION['EMPID'])){
      redirect(web_root."/index.php");
     }
     ?>
<div class="row">
         <div class="col-lg-12">
            <h1 class="page-header"><?php echo $_SESSION['EMPPOSITION'];?> Panel</h1>
          </div>
          <!-- /.col-lg-12 -->
      
       </div>
  <div class="row">
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-primary o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-comments"></i>
              </div>
              <div class="mr-5">
              	<?php 
              	/*	$Project = New Project();
              	$cur =  $Project->noOfprojects();
              	echo $cur->noOfprojects. ' No of Projects';*/
              	?>

             </div>
            </div>
			<?php if ($_SESSION['EMPPOSITION'] == 'Administrator') 
          { 
          	echo '
            <a class="card-footer text-white clearfix small z-1" href="module/employee/">
            <span class="float-left">View Employee </span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>';
            }
      	  ?>
          
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-warning o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-list"></i>
              </div>
              <div class="mr-5"><?php 
              /*		$Project = New Project();
              	$cur =  $Project->noOfprojectsOngoing();
              	echo $cur->noOfprojects. ' of ongoing Projects';*/
              	?></div>
            </div>
            <?php if ($_SESSION['EMPPOSITION'] == 'Administrator') 
          { 
          	echo '
      	  
            <a class="card-footer text-white clearfix small z-1" href="module/leave/">
			
              <span class="float-left">Manage Leave</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a> ' ;
            }
      	  ?>
          </div>
              
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-success o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-shopping-cart"></i>
              </div>
              <div class="mr-5"><?php 
              	/*	$Project = New Project();
              	$cur =  $Project->noOfprojectsFinished();
              	echo $cur->noOfprojects. ' of finished Projects';*/
              	?></div>
            </div>
              <?php if ($_SESSION['EMPPOSITION'] == 'Administrator') 
          { 
          	echo '
            <a class="card-footer text-white clearfix small z-1" href="module/department/">
              <span class="float-left">View Departments</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a> ' ;
            }
      	  ?>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-3">
          <div class="card text-white bg-danger o-hidden h-100">
            <div class="card-body">
              <div class="card-body-icon">
                <i class="fa fa-fw fa-support"></i>
              </div>
              <div class="mr-5"><?php 
              		/*$Defaults = New Defaults();
              	$cur =  $Defaults->noOfExpnses();
              	echo $cur->noOfExpnses. ' No of Expenses';*/
              	?></div>
            </div><?php if ($_SESSION['EMPPOSITION'] == 'Administrator') 
          { 
          	echo '
            <a class="card-footer text-white clearfix small z-1" href="module/employee/index.php?view=edit&id=1">
              <span class="float-left">View Profile</span>
              <span class="float-right">
                <i class="fa fa-angle-right"></i>
              </span>
            </a>' ;
            }
      	  ?>
          </div>
        </div>
      </div>
  <!-- /.panel -->

  