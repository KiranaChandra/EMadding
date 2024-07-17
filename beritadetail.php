<?php
session_start();
include 'koneksi.php';
?>
<?php
$idberita = $_GET["id"];
$ambil = $koneksi->query("SELECT*FROM berita WHERE idberita='$idberita'");
$detail = $ambil->fetch_assoc();

?>
<?php include 'header.php'; ?>
<main id="main">

	<div class="breadcrumbs d-flex align-items-center" style="background-image: url('home/assets/img/kc.png');">
		<div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

			<h2>Informasi Selengkapnya</h2>
			<ol>
				<li><a href="index.php">Home</a></li>
				<li>Info Detail</li>
			</ol>

		</div>
	</div>
	<section id="blog" class="blog">
		<div class="container" data-aos="fade-up" data-aos-delay="100">

			<div class="row g-5">

				<div class="col-lg-12">

					<article class="blog-details">

						<div class="post-img">
							<img width="100%" src="foto/<?php echo $detail["foto"]; ?>" alt="" class="img-fluid">
						</div>

						<h2 class="title"><?php echo $detail['judul'] ?></h2>

						<div class="meta-top">
							<ul>
								<li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-details.html"><time datetime="2020-01-01"><?= $detail['tanggal'] ?></time></a></li>
							</ul>
						</div>

						<div class="content">
							<p>
								<?php echo $detail["isi"]; ?>
							</p>
						</div>
					</article>
				</div>
			</div>
		</div>
	</section>

</main>
<?php
include 'footer.php';
?>