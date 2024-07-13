<?php
session_start();
include 'koneksi.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Login</title>
	<link href="sbadmin/assets_admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	<link href="sbadmin/assets_admin/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-10 col-lg-12 col-md-9">
				<br><br><br>
				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<div class="row">
							<div class="col-lg-12">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Silahkan Login</h1>
									</div>
									<form class="user" method="post">
										<div class="form-group">
											<label>E-mail</label>
											<input type="email" class="form-control form-control-user" id="exampleInputEmail" name="email" aria-describedby="emailHelp" placeholder="Email / Username">
										</div>
										<div class="form-group">
											<label>Password</label>
											<input type="password" class="form-control form-control-user" name="password" id="exampleInputPassword" placeholder="Password">
										</div>
										<button type="submit" name="login" value="login" class="btn btn-primary btn-user btn-block">
											Login
										</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<?php
	if (isset($_POST["login"])) {
		$email = $_POST["email"];
		$password = $_POST["password"];
		$ambil = $koneksi->query("SELECT * FROM pengguna
		WHERE email='$email' AND password='$password' limit 1");
		$akunyangcocok = $ambil->num_rows;
		if ($akunyangcocok == 1) {
			$akun = $ambil->fetch_assoc();
			if ($akun['level'] == "Pelanggan") {
				$_SESSION["pengguna"] = $akun;
				echo "<script> alert('Anda sukses login');</script>";
				echo "<script> location ='index.php';</script>";
			} elseif ($akun['level'] == "Admin") {
				$_SESSION['admin'] = $akun;
				echo "<script> alert('Anda sukses login');</script>";
				echo "<script> location ='admin/index.php';</script>";
			}
		} else {
			echo "<script> alert('Anda gagal login, Cek akun anda');</script>";
			echo "<script> location ='login.php';</script>";
		}
	}
	?>
	<script src="sbadmin/assets_admin/vendor/jquery/jquery.min.js"></script>
	<script src="sbadmin/assets_admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="sbadmin/assets_admin/vendor/jquery-easing/jquery.easing.min.js"></script>

	<script src="sbadmin/assets_admin/js/sb-admin-2.min.js"></script>

</body>

</html>