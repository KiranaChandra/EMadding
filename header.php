<?php
include 'koneksi.php';
function tanggal($tgl)
{
    $tanggal = substr($tgl, 8, 2);
    $bulan = getBulan(substr($tgl, 5, 2));
    $tahun = substr($tgl, 0, 4);
    return $tanggal . ' ' . $bulan . ' ' . $tahun;
}
function getBulan($bln)
{
  switch ($bln) {
    case 1:
      return "Januari";
      break;
    case 2:
      return "Februari";
      break;
    case 3:
      return "Maret";
      break;
    case 4:
      return "April";
      break;
    case 5:
      return "Mei";
      break;
    case 6:
      return "Juni";
      break;
    case 7:
      return "Juli";
      break;
    case 8:
      return "Agustus";
      break;
    case 9:
      return "September";
      break;
    case 10:
      return "Oktober";
      break;
    case 11:
      return "November";
      break;
    case 12:
      return "Desember";
      break;
  }
}
?>
  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>E-Madding</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <link href="home/assets/img/favicon.png" rel="icon">
    <link href="home/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Roboto:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Work+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

    <link href="home/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="home/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="home/assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="home/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="home/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="home/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <link href="home/assets/css/main.css" rel="stylesheet">
  </head>

  <body>

    <header id="header" class="header d-flex align-items-center">
      <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

        <a href="index.php" class="logo d-flex align-items-center">
          <h1>E-Madding<span>.</span></h1>
        </a>

        <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
        <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
        <nav id="navbar" class="navbar">
          <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="berita.php">Informasi</a></li>
            <li><a href="login.php">Login</a></li>
          </ul>
        </nav>
      </div>
    </header>