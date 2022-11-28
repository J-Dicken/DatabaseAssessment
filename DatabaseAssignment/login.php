<?php
	session_start();
	$sqlLog = ""; //Keeps track of all queries ran on page to inc in footer
?>

<!DOCTYPE html>
<html>
<head>
	<title>Log In</title>
	<link rel='stylesheet' href="styles/master.css">
	<link rel='stylesheet' href="styles/login.css">
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

	<div id="formWrapper">
		<form id="login" action="validate.php" method="post">
			<div class="inputWrapper">
				<label for="uName">Username</label>
				<input type="text" name="uName" class="input">
			</div>

			<div class="inputWrapper">
				<label for="pWord">Password</label>
				<input type="password" name="pWord" class="input">
			</div>
			
			<input type="submit" value="Log In" id="subBtn">

		</form>
		<?php
			if ((isset($_GET['err']) && $_GET['err'] == 1)){
				echo "<div id='err'>Incorrect Username/Password</div>";
			}
		?>
	</div><!--End of form wrapper-->
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