<?php
session_start();
include 'koneksi.php';
?>

<?php include 'header.php'; ?>
<main id="main">

	<div class="breadcrumbs d-flex align-items-center" style="background-image: url('home/assets/img/bgutama.jpg');">
		<div class="container position-relative d-flex flex-column align-items-center" data-aos="fade">

			<h2>Informasi</h2>
			<ol>
				<li><a href="index.php">Home</a></li>
				<li>Informasi</li>
			</ol>

		</div>
	</div>

	<section id="recent-blog-posts" class="recent-blog-posts">
		<div class="container" data-aos="fade-up">
  <div class=" section-header">
			<h2>E-Madding</h2>
		</div>

		<div class="row gy-5">
			<?php $ambil = $koneksi->query("SELECT *FROM berita"); ?>
			<?php while ($perberita = $ambil->fetch_assoc()) { ?>
				<div class="col-xl-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
					<div class="post-item position-relative h-100">

						<div class="post-img position-relative overflow-hidden">
							<img src="foto/<?php echo $perberita['foto'] ?>" class="img-fluid" alt="">
							<span class="post-date"><?= $perberita['tanggal'] ?></span>
						</div>

						<div class="post-content d-flex flex-column">

							<h3 class="post-title"><?= $perberita['judul'] ?></h3>
							<hr>
							<a href="beritadetail.php?id=<?php echo $perberita['idberita']; ?>" class="readmore stretched-link"><span>Baca Selengkapnya</span><i class="bi bi-arrow-right"></i></a>
						</div>
					</div>
				</div>
			<?php } ?>
		</div>
		</div>
	</section>
</main>
<?php
include 'footer.php';
?>