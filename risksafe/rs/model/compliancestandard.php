<?php

include_once("../config.php");
include_once("db.php");

class compliancestandard {
	public function __construct(){
		
		
	}


	public function listcompliances($start, $length) {
		$db = new db();
		$conn = $db->connect();
	
		$query = "SELECT * FROM as_compliancestandard LIMIT $start, $length";
		$result = $conn->query($query);
	
		if ($result !== false && $result->num_rows > 0) {
			$data = array();
			while ($row = $result->fetch_assoc()) {
				$data[] = $row;
			}
	
			$db->disconnect($conn);
			return $data;
		} else {
			$db->disconnect($conn);
			return false;
		}
	}
	
    
    public function addCompliance($organization, $scope, $objective, $control, $risk, $status, $documentation, $monitoring, $training, $officer) {
        $db = new db();
        $conn = $db->connect();
    
        $userId = $_SESSION["userid"];
        $query = "INSERT INTO as_compliancestandard (com_user_id, com_organiseinfo, com_scope, com_objective, com_controls, com_risk, com_status, com_documentation, com_monitoring, com_training, com_officer) VALUES ('$userId', '$organization', '$scope', '$objective', '$control', '$risk', '$status', '$documentation', '$monitoring', '$training', '$officer')";
        $sql = mysqli_query($conn, $query);
    
        if ($sql) {
            return true;
        } else {
            return false;
        }
    }

	//EDIT AUDIT
	

	public function deleteCompliance($id) {
	
    $db=new db();
    $conn=$db->connect();
    
    $query="DELETE FROM as_compliancestandard WHERE idcompliance=".$id.";";
    
    if ($conn->multi_query($query)) {
        $response=true;
    } else {
        $response=false;	
    }
    
    $db->disconnect($conn);
    return $response;
    
}
	
	// In compliancestandard.php (model)

 public function updateCompliance(
    
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
    ) 
    
    {

        $db=new db();
    $conn=$db->connect();
        // Assume you have a database conn established and stored in the $conn variable

        // Escape the input values to prevent SQL injection
        $id = mysqli_real_escape_string($conn, $id);
        $organization = mysqli_real_escape_string($conn, $organization);
        $scope = mysqli_real_escape_string($conn, $scope);
        $objective = mysqli_real_escape_string($conn, $objective);
        $control = mysqli_real_escape_string($conn, $control);
        $risk = mysqli_real_escape_string($conn, $risk);
        $status = mysqli_real_escape_string($conn, $status);
        $documentation = mysqli_real_escape_string($conn, $documentation);
        $monitoring = mysqli_real_escape_string($conn, $monitoring);
        $training = mysqli_real_escape_string($conn, $training);
        $officer = mysqli_real_escape_string($conn, $officer);

        // Build the update query
        $query = "UPDATE as_compliancestandard SET ";
        $query .= "com_organiseinfo = '$organization', ";
        $query .= "com_scope = '$scope', ";
        $query .= "com_objective = '$objective', ";
        $query .= "com_controls = '$control', ";
        $query .= "com_risk = '$risk', ";
        $query .= "com_status = '$status', ";
        $query .= "com_documentation = '$documentation', ";
        $query .= "com_monitoring = '$monitoring', ";
        $query .= "com_training = '$training', ";
        $query .= "com_officer = '$officer' ";
        $query .= "WHERE idcompliance = '$id'";

        // Execute the update query
        $result = mysqli_query($conn, $query);

        return $result;
    }
    public function editApplicable(
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
      ) {
        $db = new db();
        $conn = $db->connect();
        
        // Sanitize the input values to prevent SQL injection
        $id = mysqli_real_escape_string($conn, $id);
        $organization = mysqli_real_escape_string($conn, $organization);
        $scope = mysqli_real_escape_string($conn, $scope);
        $objective = mysqli_real_escape_string($conn, $objective);
        $control = mysqli_real_escape_string($conn, $control);
        $risk = mysqli_real_escape_string($conn, $risk);
        $status = mysqli_real_escape_string($conn, $status);
        $documentation = mysqli_real_escape_string($conn, $documentation);
        $monitoring = mysqli_real_escape_string($conn, $monitoring);
        $training = mysqli_real_escape_string($conn, $training);
        $officer = mysqli_real_escape_string($conn, $officer);
      
        // Construct the update query
        $query = "UPDATE as_compliancestandard SET com_organiseinfo = '$organization', com_scope = '$scope', com_objective = '$objective', com_controls = '$control', com_risk = '$risk', com_status = '$status', com_documentation = '$documentation', com_monitoring = '$monitoring', com_training = '$training', com_officer = '$officer' WHERE idcompliance = '$id'";
      
        // Execute the update query
        $result = mysqli_query($conn, $query);
        if ($result) {
          $response = true;
        } else {
          $response = false;
        }
      
        $db->disconnect($conn);
        return $response;
      }
      

	public function getCompliance($id) {
		$db = new db();
		$conn = $db->connect();
	
		$query = "SELECT * FROM as_compliancestandard WHERE idcompliance = " . $id;
	
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