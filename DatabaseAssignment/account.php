<?php
	session_start();
	$sqlLog = ""; //Keeps track of all queries ran on page to inc in footer
	//Prevents navigating to this page without logging in
	if (!isset($_SESSION['logIn'])){
		header("Location: index.php");
	} else{
		//Access DB
		$accNum = $_SESSION['accNum'];
		$type = $_SESSION['type'];

		if ($type == "Employee"){
			$sql = "select * from Employee where Employee#='" . $accNum . "'";			
		} else {
			$sql = "select * from Customer where Customer#='" . $accNum . "'";
		}
		if ($Connection = oci_connect("OMITTED", "OMITTED")){
			// Parse Oracle query
			$Statement = oci_parse($Connection, $sql);
			// Execute Oracle query
			oci_execute($Statement);
			$sqlLog = $sqlLog . $sql . "<br>";
			oci_fetch($Statement);
			
			//Assign variables to load
			if ($type == "Employee"){
				$name = oci_result($Statement, 3);
				$hsNum = oci_result($Statement, 4);
				$street = oci_result($Statement, 5);
				$postcode = oci_result($Statement, 6);
				$tel = oci_result($Statement, 7);
				$email = oci_result($Statement, 8);
			} else{
				$name = oci_result($Statement, 2);
				$dob = oci_result($Statement, 3);
				$hsNum = oci_result($Statement, 4);
				$street = oci_result($Statement, 5);
				$postcode = oci_result($Statement, 6);
				$tel = oci_result($Statement, 7);
				$email = oci_result($Statement, 8);
			}

			oci_close($Connection);
		} else{
			var_dump(oci_error($Connection));
 		}// end of if expression
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Account Home</title>
	<link rel='stylesheet' href="styles/master.css">
	<link rel='stylesheet' href="styles/table.css">
	<link rel='stylesheet' href="styles/account.css">
</head>
<body>
	<header>
		<div id='innerHeader'>
			<div id='logo'>
				<h1>IDEA</h1>
				<h2>HOME FURNISHINGS</h2>
			</div>
			<nav>
				<ul>
					<li><a href='index.php'>Products</a></li>
					<li><a href='database.php'>Database</a></li>
					<?php
						if (isset($_SESSION['logIn'])){
							echo "<li><a href='account.php'>Account</a></li>";
							echo "<li><a href='logOut.php'>Log Out</a></li>";
						} else{
							echo "<li><a href='login.php'>Log In</a></li>";
						}
					?>
				</ul>
			</nav>
		</div><!--End of innerHeader-->
	</header>

	<h1>Welcome, <?php echo $name; ?></h1>

	<div id="accInfo">
		<div id="accImgWrapper">
			<img src="imgs/profilePic.jpg">
		</div>

		<div id="accTxt">
			<h2>Name: <?php echo $name; ?></h2>
			<?php
				if ($type == "Customer"){
					echo "<h2>Date of Birth: " . $dob;
				}
			?>
			<fieldset>
				<legend>Address:</legend>
				<?php
					echo $hsNum . "<br>" . $street . "<br>" . $postcode;
				?>
			</fieldset>
			<h2>Telephone: <?php echo $tel; ?></h2>
			<h2>Email: <?php echo $email; ?></h2>
		</div>
	</div><!--End of accInfo-->

	<?php
		//Display Customer orders if account is customer
		if ($type == "Customer"){
			echo "<div id='orders'";
			echo "<h2>Orders</h2>";
			echo "</div>";

			if ($Connection = oci_connect("OMITTED", "OMITTED")){
				$sql = "select pb.Order#, pb.DatePlaced, pb.Product#, p.Supplier#, p.DeliveryDate from custOrder pb join Delivery p on pb.Order#=p.Order# where Customer#='" . $accNum . "'";
				// Parse Oracle query
				$Statement = oci_parse($Connection, $sql);
				// Execute Oracle query
				oci_execute($Statement);
				$sqlLog = $sqlLog . $sql . "<br>";
				
				$numcols = oci_num_fields($Statement);
				print "<table><tr>";
				for ($i=1; $i<=$numcols; $i++){
					// Print column headings
					 $colname = oci_field_name($Statement, $i);
					 print "<th>$colname</th>";
				}
	 			print "</tr>";
				// Get a row and print it column by column
				while (oci_fetch($Statement)){
					print "<tr>";
					for ($i=1; $i<=$numcols; $i++){
						$col = oci_result($Statement, $i);
						print "<td>$col</td>";
					}
					print "</tr>";
				}
				print "</table>";
				oci_close($Connection);
 			} else{
				var_dump(oci_error($Connection));
 			}// end of if expression
		} else {
			//Display order history with store and date select
	?>
		<form id="orderSel" action="account.php" method="post">
			<label for="storeSel">Select Store</label>
			<select name="storeSel" id="storeSel">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="All">All</option>
			</select>

			<label for="fromDate">From</label>
			<input type="date" name="fromDate" class="dateSel">

			<label for="toDate">To</label>
			<input type="date" name="toDate" class="dateSel">
			<input type="submit" value="Apply Filters" id="subBtn">
		</form>
	<?php
			//Continuation of else condition
			//Create SQL statement
			$sql = "select pb.Store#, p.Order#, p.DatePlaced, pb.CollectionDate, p.Product#, p.Customer# from custOrder p join ColOrder pb on p.Order#=pb.Order#";
			//Append store condition if it exists
			if(isset($_POST['storeSel'])){
				if ($_POST['storeSel'] != "All"){
					$sql = $sql . " where Store#='" . $_POST['storeSel'] . "'";
				}
				if($_POST['fromDate'] != ""){
					//Append from date condition if it exists
					$sql = $sql . " and DatePlaced>='" . $_POST['fromDate'] . "'";
				}

				if($_POST['toDate'] != ""){
					//Append to date condition if it exists
					$sql = $sql . " and DatePlaced<='" . $_POST['toDate'] . "'";
				}
			}

			if ($Connection = oci_connect("OMITTED", "OMITTED")){
				//Add SQL Ordering
				$sql = $sql . " order by pb.Store#";
				// Parse Oracle query
				$Statement = oci_parse($Connection, $sql);
				// Execute Oracle query
				oci_execute($Statement);
				$sqlLog = $sqlLog . $sql . "<br>";
				$numcols = oci_num_fields($Statement);
				print "<table><tr>";
				for ($i=1; $i<=$numcols; $i++){
					// Print column headings
					 $colname = oci_field_name($Statement, $i);
					 print "<th>$colname</th>";
				}
	 			print "</tr>";
				// Get a row and print it column by column
				while (oci_fetch($Statement)){
					print "<tr>";
					for ($i=1; $i<=$numcols; $i++){
						$col = oci_result($Statement, $i);
						print "<td>$col</td>";
					}
					print "</tr>";
				}
				print "</table>";
				oci_close($Connection);
 			} else{
				var_dump(oci_error($Connection));
 			}// end of if expression
		}
	?>	
</body>
<footer>
	<div id="sqlLog">
		<h2>SQL Query History</h2>
		<?php
			echo $sqlLog;
		?>
	</div>
</footer>
</html>