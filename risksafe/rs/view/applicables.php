<?php

include_once("../controller/auth.php");
include_once("../config.php");
include_once('../model/applicable.php');


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
    <h1 class="page-header">Applicable Policy</h1>
  <div class="col-lg-12 col-md-12">
    <div class="panel panel-default">
      <div class="panel-body">
       	<div class="clearfix mb20">
          <button type="button" class="btn btn-md btn-info pull-right" id="btn_add">+ New Applicable Policy</button>
          </div>
         <table class="table table-striped table-bordered table-hover" id="table" style="width:100%;">
          <thead>
            <tr>
              <th>#</th>
              <th>Policy Title</th>
              <th>Policy Number</th>
              <th>Policy Description</th>
              <th>Policy Effective Date</th>
              <th>Policy Review Date</th>
              <th>&nbsp;</th>
            </tr>
          </thead>
          <tbody>
          	<tr><td colspan="7">Loading...</td></tr>
          </tbody>
         </table> 

      </div>
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
 
   var table = $('#table').dataTable( {
        "processing": true,
        "serverSide": true,
		"stateSave": true,
		"bFilter": false,
		"ordering": false,
		"columns": [
		{ "width": "25" },
		{ },
   		{ "width": "65" },
		{ "width": "65" },
		{ "width": "60" },
		{ "width": "65" },
		{ "width": "70" }
		],
        "ajax": "../controller/applicable.php?action=list"
    } );

  $("#btn_add").click(function(e) {
	  $(location).attr("href","../view/applicable.php?action=add");
  });

	
}); 

function del(id) {
	BootstrapDialog.show({
						message: 'Are you sure you want to delete this entry?',
						buttons: [{
							label: 'No, go back',
							action: function(dialogItself){
								dialogItself.close();
							},
							
						},{
							label: 'Yes, delete',
							action: function(dialogItself){
								//kod za booking
								res = $.ajax({type: "GET", url: "../controller/applicable.php?action=delete&id="+id, async: false})	
							    $('#table').DataTable().ajax.reload();
								dialogItself.close();
							}
						}]
					});//end dialog	
}

</script>
</body>
</html>