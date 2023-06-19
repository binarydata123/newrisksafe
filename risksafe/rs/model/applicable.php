<?php

include_once("db.php");

class Applicable {
  
  // Add applicable entry
  public function addApplicable($policyTitle, $policyNumber, $policyDescription, $policyEffectiveDate, $policyReviewDate, $applicability, $policyRequirements, $complianceResponsibility, $relatedDocuments, $policyApproval, $policyReviewRevisionHistory, $policyAcknowledgment) {
    $db = new db();
    $conn = $db->connect();
    
    $userId = $_SESSION["userid"];
    $query = "INSERT INTO policyfields (policy_user_id, PolicyTitle, PolicyNumber, PolicyDescription, PolicyEffectiveDate, PolicyReviewDate, Applicability, PolicyRequirements, ComplianceResponsibility, RelatedDocuments, PolicyApproval, PolicyReviewRevisionHistory, PolicyAcknowledgment) VALUES ('$userId', '$policyTitle', '$policyNumber', '$policyDescription', '$policyEffectiveDate', '$policyReviewDate', '$applicability', '$policyRequirements', '$complianceResponsibility', '$relatedDocuments', '$policyApproval', '$policyReviewRevisionHistory', '$policyAcknowledgment')";

    if ($conn->query($query)) {
        $response = $conn->insert_id;
    } else {
        $response = false;	
    }
    
    $db->disconnect($conn);
    return $response;
  }
  
  // List applicable entries
  public function listApplicable($start, $length) {
    $db = new db();
    $conn = $db->connect();
    $userId = $_SESSION["userid"];
    // Write your query to fetch the applicable entries from the database
    $query = "SELECT * FROM policyfields WHERE policy_user_id = '$userId' LIMIT $start, $length";
    $result = $conn->query($query);
    $data = [];
    while ($row = $result->fetch_assoc()) {
      $data[] = $row;
    }
    $db->disconnect($conn);
    return $data;
  }

  // EDIT APPLICABLE
public function editApplicable(
    $id,
    $policyTitle,
    $policyNumber,
    $policyDescription,
    $policyEffectiveDate,
    $policyReviewDate,
    $applicability,
    $policyRequirements,
    $complianceResponsibility,
    $relatedDocuments,
    $policyApproval,
    $policyReviewRevisionHistory,
    $policyAcknowledgment
  ) {
    $db = new db();
    $conn = $db->connect();
    
    // Write your query to update the applicable entry in the database
    $query = "UPDATE policyfields SET PolicyTitle = '$policyTitle', PolicyNumber = '$policyNumber', PolicyDescription = '$policyDescription', PolicyEffectiveDate = '$policyEffectiveDate', PolicyReviewDate = '$policyReviewDate', Applicability = '$applicability', PolicyRequirements = '$policyRequirements', ComplianceResponsibility = '$complianceResponsibility', RelatedDocuments = '$relatedDocuments', PolicyApproval = '$policyApproval', PolicyReviewRevisionHistory = '$policyReviewRevisionHistory', PolicyAcknowledgment = '$policyAcknowledgment' WHERE id = '$id'";
    
    if ($conn->query($query)) {
      $response = true;
    } else {
      $response = false;
    }
    
    $db->disconnect($conn);
    return $response;
  }
  
  
  //delete applicable
  public function deleteApplicable($id) {
	
    $db=new db();
    $conn=$db->connect();
    
    $query="DELETE FROM policyfields WHERE id=".$id.";";
    
    if ($conn->multi_query($query)) {
        $response=true;
    } else {
        $response=false;	
    }
    
    $db->disconnect($conn);
    return $response;
    
}

//get apply
public function getApplicable($id) {
    $db = new db();
    $conn = $db->connect();

    $query = "SELECT * FROM policyfields WHERE id = " . $id;

    if ($result = $conn->query($query)) {
        $row = $result->fetch_assoc();
        $response = $row;
    } else {
        $response = false;
    }

    $db->disconnect($conn);
    return $response;
}


}
?>
