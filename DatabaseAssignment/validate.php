<?php
	session_start();
	
	if ((isset($_POST['uName'])) && (isset($_POST['pWord']))){
		$username = $_POST['uName'];
		$password = $_POST['pWord'];			
		function validateLogIn($table, $username, $password){
			if ($Connection = oci_connect("OMITTED", "OMITTED")){
				//Check for username in customer accounts
				$sql = "select * from " . $table . " where Username='" . $username . "'";

				// Parse Oracle query
				$Statement = oci_parse($Connection, $sql);

				// Execute Oracle query
				oci_execute($Statement);
				oci_fetch($Statement);

				//Check if tuple exists
				if (oci_num_rows($Statement) == 1){
					//Record exists
					//Add salt(literally) and hash password as they are stored that way
					$password = $password . "salt";
					$password = hash('sha256', $password);

					//Check hashed password against database record
					if ($password == oci_result($Statement, 3)){
						//Assign session variables
						$_SESSION['logIn'] = true;
						$_SESSION['accNum'] = oci_result($Statement, 1);
						if ($table == "StaffAccount"){
							$_SESSION['type'] = "Employee";
						} else{
							$_SESSION['type'] = "Customer";
						}
						return true;
					} else{
						//Incorrect password
						return false;
					}
				}else {
					//Incorrect username
					return false;
				}
				oci_close($Connection);
			} else{
				var_dump(oci_error($Connection));
	 		}// end of if expression
		}
		
		//Check if entered username exists in either CustAccount or StaffAccount
		if ((validateLogIn("CustAccount", $username, $password)) || (validateLogIn("StaffAccount", $username, $password))){
			//Redirect to homepage with log in success message
			header("Location: index.php");
			echo "<br><br>Log In successful";
		} else{
			//Redirect to login page with error message
			header("Location: login.php?err=1");
			echo "<br><br>Log In failed";
		}	
 	} else {
 	//Redirect to login page
 	}	
?>

