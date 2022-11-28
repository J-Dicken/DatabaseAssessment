<?php
	session_start();
	$sqlLog = ""; //Keeps track of all queries ran on page to inc in footer
?>

<!DOCTYPE html>
<html>
<head>
	<title>DB test</title>
	<link rel='stylesheet' href="styles/master.css">
	<link rel='stylesheet' href="styles/index.css">
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

	<div id="mainDiv">
		<p>This page is a representation of the product page for the company. Results can be filtered using the form on the left, which uses values sent by the post method to generate a dynamic query condition.</p>
		<div id="dbView">			
			<form id="dbFilter" action="index.php" target="_self" method="post">
				<fieldset id="catSel">
					<legend>Category</legend>
					<div class="innerCheck">
						<input type="checkbox" class="prodCat" name="prodCat[]" value="Furniture">
						<label for="Furniture">Furniture</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCat" name="prodCat[]" value="Lighting">
						<label for="Lighting">Lighting</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCat" name="prodCat[]" value="Beds">
						<label for="Beds">Beds</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCat" name="prodCat[]" value="Textiles">
						<label for="Textiles">Textiles</label>
					</div>
				</fieldset>


				<fieldset id="colSel">
					<legend>Colour</legend>
					<div class="innerCheck">
						<input type="checkbox" class="prodCol" name="prodCol[]" value="Black">
						<label for="Black">Black</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCol" name="prodCol[]" value="Blue">
						<label for="Blue">Blue</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCol" name="prodCol[]" value="Red">
						<label for="Red">Red</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCol" name="prodCol[]" value="Beige">
						<label for="Beige">Beige</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCol" name="prodCol[]" value="Gold">
						<label for="Gold">Gold</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCol" name="prodCol[]" value="Grey">
						<label for="Grey">Grey</label>
					</div>

					<div class="innerCheck">
						<input type="checkbox" class="prodCol" name="prodCol[]" value="Green">
						<label for="Green">Green</label>	
					</div>				
				</fieldset>

				<fieldset id="priceSel">
					<legend>Price Range</legend>
					<label for="minPrice">Minimum Price</label>
					<input type="range" class="priceRange" name="minPrice" min="0" max="250" value="0">					

					<label for="maxPrice">Maximum Price</label>
					<input type="range" class="priceRange" name="maxPrice" min="0" max="250" value="250">					
					<!--Add javascript to show value-->
				</fieldset>

				<fieldset id="DelSel">
					<legend>Collection/Delivery</legend>
					<div class="innerCheck">
						<input type="radio" class="colDev" name="colDev" value="Collection">
						<label for="Collection">Collection</label>
					</div>

					<div class="innerCheck">
						<input type="radio" class="colDev" name="colDev" value="Delivery">
						<label for="Delivery">Delivery</label>
					</div>
				</fieldset>
				<input type="submit"  id="subBtn" value="Apply Filters">
			</form>
			<?php
				if (empty($_POST)){
					$sql = "select * from Product";
				} else{
					//Generate SQL Query based on POST Variables
					$sqlCondition = ""; //Variable to store conditions generated from form
					
					//Check category constraints
					if (isset($_POST['prodCat'])){
						//$sqlCondition = $sqlCondition . "(";
						foreach ($_POST['prodCat'] as $constraint){
							$sqlCondition = $sqlCondition . "Category='" . $constraint . "'";
							if ((count($_POST['prodCat']) > 1) && (end($_POST['prodCat']) != $constraint)){
								$sqlCondition = $sqlCondition . " OR ";
							}
							//$sqlCondition = $sqlCondition . ")";
						}
					}

					//Check colour constraints
					if (isset($_POST['prodCol'])){
						if ($sqlCondition != ""){
							$sqlCondition = $sqlCondition . " AND ";
						}						
						foreach ($_POST['prodCol'] as $constraint){
							$sqlCondition = $sqlCondition . "Colour='" . $constraint . "'";
							if ((count($_POST['prodCol']) > 1) && (end($_POST['prodCol']) != $constraint)){
								$sqlCondition = $sqlCondition . " OR ";
							}
							$sqlCondition = $sqlCondition;
						}
					}

					//Get price constraints
					//Will always have value so no need to check if set
					if ($sqlCondition != ""){
							$sqlCondition = $sqlCondition . " AND ";
					}

					if ($_POST['minPrice'] > $_POST['maxPrice']){
						$minPrice = $_POST['maxPrice'];
						$maxPrice = $_POST['minPrice'];
					} else{
						$minPrice = $_POST['minPrice'];
						$maxPrice = $_POST['maxPrice'];
					}

					$sqlCondition = $sqlCondition . "Price>=" . $minPrice . " AND Price<=" . $maxPrice;

					//Get Col/Dev constraints, join appropriate table to Product
					if (isset($_POST['colDev'])){
						if ($_POST['colDev'] == "Collection"){
							$sqlJoin = " join ColProd on Product.Product#=ColProd.Product# where ";
						} else{
							$sqlJoin = " join DelProd on Product.Product#=DelProd.Product# where ";
						}
						//Ammend join to sql
						$sql = "select * from Product" . $sqlJoin;
					} else{
						$sql = "select * from Product where ";
					}

					$sql = $sql . $sqlCondition;
				}				

				//echo $sql;	//Debugging purposes only

				if ($Connection = oci_connect("OMITTED", "OMITTED")){
					
					$statement = oci_parse($Connection, $sql);

					oci_execute($statement);
					$sqlLog = $sqlLog . $sql . "<br>";
					$numcols = oci_num_fields($statement);
					echo "<div id='prodList'>";
						while (oci_fetch($statement)){
							$imgSrc = oci_result($statement, 7);
							$imgSrc = "imgs/" . $imgSrc . ".png";

							echo "<div class='prodWrapper'>";
							echo "<div class='imgWrapper'><img src=$imgSrc></div>";
							echo "<h1>" . oci_result($statement, 2) . "</h1>";
							echo "<h2>£" . oci_result($statement, 4) . "</h2>";
							echo "</div>";
						}
					echo "</div>";
					oci_close($Connection);
				} else{
					print "Connection Error...";
				}
			?>
		</div><!--End of dbView-->
	</div><!--End of mainDiv-->
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