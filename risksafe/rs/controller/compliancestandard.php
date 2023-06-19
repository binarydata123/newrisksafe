<?php
include_once("../controller/auth.php");
include_once("../config.php");
include_once("../model/db.php");
include_once("../model/compliancestandard.php");


$compliance = new compliancestandard();


// LIST OF TREATMENTS
if (isset($_REQUEST["action"]) && $_REQUEST["action"] == "list") {
    $start = isset($_REQUEST["start"]) ? $_REQUEST["start"] : 0;
    $length = isset($_REQUEST["length"]) ? $_REQUEST["length"] : 10;

    $db = new db;
    $conn = $db->connect();
    $num = $db->rowCount($conn, "as_compliancestandard", "com_user_id", $_SESSION["userid"]);

    $list = $compliance->listcompliances($start, $length);

    $fulldata = array();
    $data = array();

    $fulldata["draw"] = isset($_REQUEST["draw"]) ? $_REQUEST["draw"] : 1;
    $fulldata["recordsTotal"] = $num;
    $fulldata["recordsFiltered"] = $num;
    if (empty($list)) {
      $response["Organization Information"] = "No data available in table";
    } else {
    foreach ($list as $item) {
        $response = array();
        $response["nr"] = $item["idcompliance"];
        $response["Organization Information"] = $item["com_organiseinfo"];
        $response["Scope"] = $item["com_scope"];
        $response["Objective"] = $item["com_objective"];
        $response["Control Requirements"] = $item["com_controls"];
        $response["Risk Assessment"] = $item["com_risk"];
        $response["link"] = '<div style="text-align: center;">
		<a title="Edit" class="btn btn-xs btn-primary" href="compliancestandard.php?action=edit&id=' . $item["idcompliance"] . '"><i class="glyphicon glyphicon-pencil"></i></a>&nbsp;
		<a title="Delete" class="btn btn-xs btn-danger" href="javascript:del(\'' . $item["idcompliance"] . '\');"><i class="glyphicon glyphicon-trash"></i></a></div>';
        $data[] = $response;
    }
  }

    $fulldata["data"] = $data;

    header('Content-Type: application/json');
    echo json_encode($fulldata);
}





// //Add COMPLIANCE STANDARD
if (isset($_REQUEST["action"]) && $_REQUEST["action"] == "add") {
	$organization = $_REQUEST["organization"];
	$scope = $_REQUEST["scope"];
	$objective = $_REQUEST["objective"];
	$control = $_REQUEST["control"];
	$risk = $_REQUEST["risk"];
	$status = $_REQUEST["status"];
	$documentation = $_REQUEST["documentation"];
	$monitoring = $_REQUEST["monitoring"];
	$training = $_REQUEST["training"];
	$officer = $_REQUEST["officer"];
  
	$result = $compliance->addCompliance(
	  $organization,
	  $scope,
	  $objective,
	  $control,
	  $risk,
	  $status,
	  $documentation,
	  $monitoring,
	  $training,
	  $officer
	);
  
    if ($result) {
        header("Location: ../view/compliances.php?id=".$result);
      } else {
        header("Location: ../view/compliancestandard.php?response=err&action=add");
      }
  }

  // //edit COMPLIANCE STANDARD
  if (isset($_REQUEST["action"]) && $_REQUEST["action"] == "edit") {
    $id = isset($_REQUEST["id"]) ? $_REQUEST["id"] : "";
    $organization = isset($_REQUEST["organization"]) ? $_REQUEST["organization"] : "";
    $scope = isset($_REQUEST["scope"]) ? $_REQUEST["scope"] : "";
    $objective = isset($_REQUEST["objective"]) ? $_REQUEST["objective"] : "";
    $control = isset($_REQUEST["control"]) ? $_REQUEST["control"] : "";
    $risk = isset($_REQUEST["risk"]) ? $_REQUEST["risk"] : "";
    $status = isset($_REQUEST["status"]) ? $_REQUEST["status"] : "";
    $documentation = isset($_REQUEST["documentation"]) ? $_REQUEST["documentation"] : "";
    $monitoring = isset($_REQUEST["monitoring"]) ? $_REQUEST["monitoring"] : "";
    $training = isset($_REQUEST["training"]) ? $_REQUEST["training"] : "";
    $officer = isset($_REQUEST["officer"]) ? $_REQUEST["officer"] : "";

    $result = $compliance->editApplicable(
        $id,
        $organization,
        $scope,
        $objective,
        $control,
        $risk,
        $status,
        $documentation,
        $monitoring,
        $training,
        $officer
    );

    if ($result) {
        header("Location: ../view/compliances.php");
    }else{
		header("Location: ../view/compliancestandard.php?response=err&action=edit");
	}
}


// DELETE COMPLIANCE STANDARD
if (isset($_REQUEST["action"]) && $_REQUEST["action"]=="delete") {
		
	echo $compliance->deleteCompliance($_REQUEST["id"]);
	
}
?>