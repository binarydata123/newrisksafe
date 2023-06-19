<?php

include_once("../config.php");
include_once("db.php");
 
class users {
	
	
	public function __construct(){
		
		
	}

	
	public function addUser($email, $password, $name, $phone, $location, $company, $otp, $companyAddress, $city, $state, $postcode, $country)
{
    $password_md5 = md5($password);
    $datetime = date("Y-m-d H:i:s");
    $expire = date("Y-m-d H:i:s", strtotime("+14 days"));

    $db = new db();
    $conn = $db->connect();

    $query = "INSERT INTO users (`iduser`, `superuserid`, `u_mail`, `u_password`, `u_name`, `u_phone`, `u_location`, `c_company`, `c_address`, `c_city`, `c_state`, `c_postcode`, `c_country`, `u_complete`, `u_otp`, `u_datetime`, `u_expire`, `role`)
              VALUES (NULL, 0, '$email', '$password_md5', '$name', '$phone', '$location', '$company', '$companyAddress', '$city', '$state', '$postcode', '$country', '0', '$otp', '$datetime', '$expire', 'user')";

    $result = mysqli_query($conn, $query);

    if ($result) {
        echo "working";
        $userId = mysqli_insert_id($conn);

        $query = "INSERT INTO `as_context`(`idcontext`, `cx_user`, `cx_objectives`, `cx_processes`, `cx_products`, `cx_projects`, `cx_systems`, `cx_relation`, `cx_internallosses`, `cx_externallosses`, `cx_competitors`, `cx_environment`, `cx_regulatory`) VALUES (Null,'$userId','','','','','','','','','','','')";

        $result = mysqli_query($conn, $query);

        if ($result) {
            $db->disconnect($conn);
            return true;
        } else {
            echo "Error11: " . mysqli_error($conn);
			exit();
        }
    } else {
        echo "Error: " . mysqli_error($conn);
    }
}



	
	public function updateUser($id, $mail, $password, $name, $phone, $location, $company, $comaddress, $city, $state, $postcode, $country) {
		
		$db=new db;
		$conn=$db->connect();
			
		$password_md5=md5($password);
		
		//check password
		$query="SELECT * FROM users WHERE iduser=" . $id;
		$result=$conn->query($query);
		$usr=$result->fetch_assoc();
		
		if ($usr["u_password"]==$password_md5) {
			$query="UPDATE users SET
					u_mail='" . $mail . "', 
					u_name='" . $name . "', 
					u_phone='" . $phone . "', 
					u_location='" . $location . "', 
					c_company='" . $company . "', 
					c_address='" . $comaddress . "', 
					c_city='" . $city . "', 
					c_state='" . $state . "', 
					c_postcode='" . $postcode . "', 
					u_complete=1, 
					c_country='" . $country . "' WHERE iduser=" . $id;

		} else {
			$query="UPDATE users SET
					u_mail='" . $mail . "', 
					u_password='" . $password_md5 . "', 
					u_name='" . $name . "', 
					u_phone='" . $phone . "', 
					u_location='" . $location . "', 
					c_company='" . $company . "', 
					c_address='" . $comaddress . "', 
					c_city='" . $city . "', 
					c_state='" . $state . "', 
					c_postcode='" . $postcode . "', 
					u_complete=1, 
					c_country='" . $country . "' WHERE iduser=" . $id;
		}
	
				
		if ($conn->query($query)) {
			return true;
		} else {
			return false;	
		}
		
		$db->disconnect($conn);
	}
	
	public function checkUser($mail) {
		
		$db=new db;
		$conn=$db->connect();
		
		//check username/mail
		$query="SELECT * FROM users WHERE u_mail='" . $mail . "';";
		$result=$conn->query($query);
				
		if ($result->num_rows>0) {
			return true;
		} else {
			return false;	
		}
		
		$db->disconnect($conn);
		
	}
	
	public function getUser($userid) {
		
		$db=new db;
		$conn=$db->connect();
		$query="SELECT * FROM users WHERE iduser=" . $userid . " LIMIT 0,1";
		if ($result=$conn->query($query)) {
			if ($row=$result->fetch_assoc()) {
				$filtered = array_map('htmlspecialchars', array_map('stripslashes', $row)); 
				return $filtered;
			}
		} else {
			return false;	
		}
		
		$db->disconnect($conn);
		
	}
	
	
	public function loginUser($mail, $password) {
		
		$db=new db;
		$conn=$db->connect();
		$password=md5($password);
			
		$query="SELECT * FROM users WHERE u_mail='" . $mail . "' AND u_password='" . $password . "';";
		
		if (trim($mail)<>"" and trim($password)<>"" and $result=$conn->query($query) and $result->num_rows>0) {
			$row=$result->fetch_assoc();
			$_SESSION["logged"]=true;
			$_SESSION["email"]=$row["u_mail"];
			$_SESSION["name"]=$row["u_name"];
			$_SESSION["userid"]=$row["iduser"];
			return true;
		} else {
			$this->logoutUser();
			return false;	
		}

	$db->disconnect($conn);	
		
	}
	
	public function logoutUser() {
			
	  unset($_SESSION["logged"]);
	  unset($_SESSION["email"]);
	  unset($_SESSION["name"]);
	  unset($_SESSION["userid"]);
	  return true;	
	
	}
	
	public function isLogged() {
			
	  	if (isset($_SESSION["logged"]) and $_SESSION["logged"]==true) {
	  		return true;	
		} else {
			return false;	
		}
	
	}
	
	public function updateContext($id, $objectives, $processes, $products, $projects, $systems, $relationships, $internallosses, $externallosses, $competitors, $environment, $regulatory) {
		
		$db=new db;
		$conn=$db->connect();
			
		$query="UPDATE as_context SET
				cx_objectives='" . str_replace("'", "\'", $objectives) . "', 
				cx_processes='" . str_replace("'", "\'", $processes) . "', 
				cx_products='" .str_replace("'", "\'", $products) . "', 
				cx_projects='" . str_replace("'", "\'", $projects) . "', 
				cx_systems='" . str_replace("'", "\'", $systems) . "', 
				cx_relation='" . str_replace("'", "\'", $relationships) . "', 
				cx_internallosses='" . str_replace("'", "\'", $internallosses) . "', 
				cx_externallosses='" . str_replace("'", "\'", $externallosses) . "', 
				cx_competitors='" . str_replace("'", "\'", $competitors) . "', 
				cx_environment='" . str_replace("'", "\'", $environment) . "',
				cx_regulatory='" . str_replace("'", "\'", $regulatory) . "' WHERE idcontext=" . $id;


		if ($conn->query($query)) {
			return true;
		} else {
			return false;	
		}
		
		$db->disconnect($conn);

		
	}
		
	public function getContext($userid) {
		
		$db=new db;
		$conn=$db->connect();
		$query="SELECT * FROM as_context WHERE cx_user=" . $userid . " LIMIT 0,1";
		if ($result=$conn->query($query)) {
			if ($row=$result->fetch_assoc()) {
				$filtered = array_map('htmlspecialchars', array_map('stripslashes', $row)); 
				return $filtered;
			}
		} else {
			return false;	
		}
		
		$db->disconnect($conn);
		
	}

	// update otp
	public function updateOtp($mail,$otp) {
   
		$db=new db;
		$conn=$db->connect();
	
			$query="UPDATE users SET 
					u_otp='" . $otp . "' WHERE u_mail='" . $mail . "';";

		if ($conn->query($query)) {
			return true;
		} else {
			return false;	
		}
		
		$db->disconnect($conn);
	}
	

//update password
	public function updateEmailUser($mail,$password) {
   
		$db=new db;
		$conn=$db->connect();
		//check password
		// $query="SELECT * FROM users WHERE u_mail=" . $mail;
		
		// $result=$conn->query($query);
		// $usr=$result->fetch_assoc()
			

		$query="UPDATE users SET 
		u_password='" .md5($password). "' WHERE u_mail='" . $mail . "';";


	// echo $query;
				
		if ($conn->query($query)) {
			return true;
		} else {
			return false;	
		}
		
		$db->disconnect($conn);
	}

	//list user

	
  // List applicable entries
  public function listUser($start, $length)
{
    $db = new db();
    $conn = $db->connect();
    $currentUser = $_SESSION["userid"];

    $sql = "SELECT role FROM users WHERE iduser = '$currentUser'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $currentUserRole = $row['role'];
        if ($currentUserRole == "superadmin") {
            $query = "SELECT * FROM users WHERE superuserid = '$currentUser'  LIMIT $start, $length";
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
                return array(); 
            }
        } else {

            header("Location: main.php");
            exit;
        }
    } else {
        echo "User not found.";
    }
}

public function addusers($email, $password, $name, $phone, $location, $company, $companyaddress, $city, $state, $postcode, $country)
{
    $db = new db();
    $conn = $db->connect();
	$password_md5 = md5($password);
    $userId = $_SESSION["userid"];
    $role = ""; // Initialize the role variable

    // Check if the current user is a superadmin
    $query = "SELECT role FROM users WHERE iduser = '$userId'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        $role = $row['role'];

        // Check if the role is superadmin and the total number of users added by the superadmin is less than or equal to 20
        if ($role == "superadmin") {
            $query = "SELECT COUNT(*) as userCount FROM users WHERE superuserid = '$userId'";
            $result = mysqli_query($conn, $query);

            if ($result && mysqli_num_rows($result) > 0) {
                $row = mysqli_fetch_assoc($result);
                $userCount = $row['userCount'];

                if ($userCount >= 20) {
                    // Return false if the superadmin has already added 20 users
                    return false;
                }
            }

            // Check if the email already exists in the database
            $query = "SELECT * FROM users WHERE u_mail = '$email'";
            $result = mysqli_query($conn, $query);

            if (mysqli_num_rows($result) > 0) {
                // Return an error message if the email already exists
                return "Email already exists. Please choose a different email.";
            }

            // Insert the user into the database
            $query = "INSERT INTO `users`(`superuserid`, `u_mail`, `u_password`, `u_name`, `u_phone`, `u_location`, `c_company`, `c_address`, `c_city`, `c_state`, `c_postcode`, `c_country`, `u_complete`, `u_otp`, `u_datetime`, `u_expire`, `role`)
                VALUES ('$userId', '$email', '$password_md5', '$name', '$phone', '$location', '$company', '$companyaddress', '$city', '$state', '$postcode', '$country', '0', '', NOW(), NOW(), 'user')";

            $sql = mysqli_query($conn, $query);

            if ($sql) {
                return true;
            } else {
                return false;
            }
        } else {
            // Return false if the current user is not a superadmin
            return false;
        }
    } else {
        // Return false if the user is not found
        return false;
    }
}


//delete user

public function deleteUser($id) {
	
    $db=new db();
    $conn=$db->connect();
    
    $query="DELETE FROM users WHERE iduser=".$id.";";
    
    if ($conn->multi_query($query)) {
        $response=true;
    } else {
        $response=false;	
    }
    
    $db->disconnect($conn);
    return $response;
    
}

//get user
public function getUsers($id) {
	$db = new db();
	$conn = $db->connect();

	$query = "SELECT * FROM users WHERE iduser = " . $id;

	if ($result = $conn->query($query)) {
		$row = $result->fetch_assoc();
		$response = $row;
	} else {
		$response = false;
	}

	$db->disconnect($conn);
	return $response;
}


//updated
public function editusers($id, $email, $password, $name, $phone, $location, $company, $companyaddress, $city, $state, $postcode, $country)
{
    $db = new db();
    $conn = $db->connect();
    $userId = $_SESSION["userid"];
	$password_md5 = md5($password);
    $query = "UPDATE users SET
                superuserid = '$userId',
                u_password = '$password_md5',
                u_name = '$name',
                u_phone = '$phone',
                u_location = '$location',
                c_company = '$company',
                c_address = '$companyaddress',
                c_city = '$city',
                c_state = '$state',
                c_postcode = '$postcode',
                c_country = '$country'
              WHERE iduser = '$id'";

    $sql = mysqli_query($conn, $query);

    if ($sql) {
        return true;
    } else {
        return false;
    }
}


}



?>