<?php
	session_start();
	$sqlLog = ""; //Keeps track of all queries ran on page to inc in footer
?>

<!DOCTYPE html>
<html>
<head>
	<title>Database</title>
	<link rel='stylesheet' href="styles/master.css">
	<link rel='stylesheet' href="styles/database.css">
	<link rel='stylesheet' href="styles/table.css">
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

	<div id="innerPage">
		<form id="dbSelect" action="database.php" method="post">
			<select name="dbSel" id="dbSel">
				<option value="Supplier">Supplier</option>
				<option value="Delivery">Delivery</option>
				<option value="Product">Product</option>
				<option value="DelProd">Delivery Product</option>
				<option value="ColProd">Collection Product</option>
				<option value="custOrder">Order</option>
				<option value="ColOrder">Collection Order</option>
				<option value="Customer">Customer</option>
				<option value="Store">Store</option>
				<option value="Employee">Employee</option>
				<option value="ColStaff">Collection Staff</option>
				<option value="CustAccount">Customer Account</option>
				<option value="StaffAccount">Staff Account</option>
			</select>
			<input type="submit" id="subBtn">
		</form>

		<?php
			if (!isset($_POST['dbSel'])){
				$sql = "select * from Supplier";
			} else{
				$sql = "select * from " . $_POST['dbSel'];
			}

			if ($Connection = oci_connect("OMITTED", "OMITTED")){
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
		?>
	</div><!--End of innerPage-->
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