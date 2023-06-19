<?php

include_once("../controller/auth.php");
include_once("../config.php");
include_once('../model/compliancestandard.php');

if (isset($_REQUEST["response"]) and $_REQUEST["response"]=="true") {
	$msg="Compliance Standard created successfully.";
}

if (isset($_REQUEST["response"]) and $_REQUEST["response"]=="err") {
	$msg="Error creating compliance standard, please try again.";
}
$compliance=new compliancestandard();
if ($_REQUEST["action"]=="edit") {
	$edit=true;
	$info=$compliance->getCompliance($_REQUEST["id"]);
  //print_r($info);
 
} else {
	$edit=false;	
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<?php include_once("header.php");?>
</head>
<body>
<!-- header -->
<div id="top-nav" class="navbar navbar-inverse navbar-static-top" style="background-color:#09F;border:0;">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand" href="main.php" style="font-weight:900;color:#fff;"><?php echo APP_TITLE;?></a> </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown"> <a class="dropdown-toggle" role="button" data-toggle="dropdown" href="#" style="font-weight:900;color:#fff;"><i class="glyphicon glyphicon-user"></i> Account <span class="caret"></span></a>
          <ul id="g-account-menu" class="dropdown-menu" role="menu">
			<?php include_once("menu_top.php");?>
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <!-- /container --> 
</div>
<!-- /Header --> 

<!-- Main -->
<div class="container-fluid">
<div class="row">
  <div class="col-lg-3 col-sm-12"> 
    <!-- Left column --> 
	<?php include_once("menu.php");?>
  <!-- /col-3 -->
  </div>
  <div class="col-lg-9 col-md-12">
    <h1 class="page-header">Compliance Standard</h1>
    
		  
	    <div class="panel panel-default">
	      <div class="panel-body">
	  		<div class="col-lg-8 col-md-12 col-sm-12"><!--col-lg-9 col-md-12-->    	
		      	
		        <form role="form" id="form" action="../controller/compliancestandard.php" method="post">
		      <div class="alert alert-info" id="notify" <?php if (!isset($msg)) { ?>style="display: none;"<?php } ?>>
		            <?php if (isset($msg)) echo $msg;?>
		          </div>
		          <div class="form-group">
		            <label>Organization Information</label>		            
                    <input name="organization" type="text" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_organiseinfo'];?>" placeholder="Enter your organization information..." required>          
		          </div>
		         <div class="form-group">
		            <label>Scope</label>
		            <input name="scope" type="text" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_scope'];?>" placeholder="" required>
		          </div>
		                  <div class="form-group">
		            <label>Objective</label>
		            <input name="objective" type="text" maxlength="255" class="form-control" value="<?php if ($edit) echo $info['com_objective'];?>" placeholder="" required>
		            
		          </div>
		             <div class="form-group">
		            <label>Control Requirements</label>
		            <input name="control" type="text" maxlength="255" class="form-control" value="<?php if ($edit) echo $info['com_controls'];?>" placeholder="Enter control requirements" required>
		           
		          </div>
		          <div class="form-group">
		            <label>Risk Assessment</label>
		            <input name="risk" type="text" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_risk'];?>" placeholder="Enter risk assessment..." required>
		       
		          </div>
				  <div class="form-group">
		            <label>Status</label>
		            <input name="status" type="text" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_status'];?>" placeholder="Enter risk assessment..." required>
		       
		          </div>
		            <div class="form-group">
		            <label>Documentation & Evidence</label>
		            <input name="documentation" type="longtext" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_documentation'];?>" placeholder="" required>
		          </div>
		            <div class="form-group">
		            <label>Monitoring & Audit </label>
		            <input name="monitoring" type="text" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_monitoring'];?>" placeholder="Enter Monitoring and Audit..." required>
		           
		          </div>
                  <div class="form-group">
		            <label>Training & Awareness </label>
		            <input name="training" type="text" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_training'];?>" placeholder="" required>
		          </div>
				  <div class="form-group">
		            <label>Compliance Officer </label>
		            <input name="officer" type="text" maxlength="100" class="form-control" value="<?php if ($edit) echo $info['com_officer'];?>" placeholder="" required>
		          </div>
		          <div class="form-group">
		          		<button type="submit" class="btn btn-md btn-info" id="btn_save">Create</button>
		          		<button type="button" class="btn btn-md btn-warning" id="btn_cancel">Cancel</button>		          
		          		<input name="action" type="hidden" value="<?php echo $_REQUEST["action"];?>" />
						  <input name="id" type="hidden" value="<?php if ($edit) echo $info["idcompliance"];?>"  />
		          </div>
		          
		        </form>
		        
		        
		      </div>
		    </div>
		  </div>
  </div>
  <!--/col-span-9--> 
</div>  
</div>

<!-- /Main -->


<?php include_once("footer.php");?>
<script>
$(document).ready(function(e) {
 
 $(function() {
    $( "#date" ).datepicker();
  });
  
 $("#btn_cancel").click(function(e) {
 	$(location).attr("href","compliances.php");   
 });
    
}); 
  </script>
</script>
</body>
</html>