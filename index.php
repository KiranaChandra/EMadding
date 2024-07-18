<?php
session_start();
include 'koneksi.php';
?>

<?php include 'header.php'; ?>
<section id="hero" class="hero">

	<div class="info d-flex align-items-center">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<h2 data-aos="fade-down">Selamat Datang Di 
						<br>Website<span>
						E-Madding</span></h2>

				</div>
			</div>
		</div>
	</div>
	<div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

		<div class="carousel-item active" style="background-image: url(home/assets/img/kc.png)">
		</div>
		<div class="carousel-item" style="background-image: url(home/assets/img/kc.png)"></div>
		<a class="carousel-control-prev" href="#hero-carousel" role="button" data-bs-slide="prev">
			<span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
		</a>
		<a class="carousel-control-next" href="#hero-carousel" role="button" data-bs-slide="next">
			<span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
		</a>
	</div>

</section>
<section id="recent-blog-posts" class="recent-blog-posts">
	<div class="container" data-aos="fade-up">
		<div class="section-header">
			<h2>Informasi Terkini</h2>
		</div>

		<div class="row gy-5">
			<?php $ambil = $koneksi->query("SELECT * FROM berita ORDER BY tanggal DESC LIMIT 3"); ?>
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
