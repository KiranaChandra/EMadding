<?php
$ambil = $koneksi->query("SELECT * FROM berita WHERE idberita='$_GET[id]'");
$pecah = $ambil->fetch_assoc();
?>

<div class="row">
	<div class="col-md-12 mb-4">
		<div class="card shadow mb-4">
			<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">Ubah Berita</h6>
			</div>
			<div class="card-body">
				<form method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label>Tanggal Berita</label>
						<input type="date" class="form-control" name="tanggal" value="<?php echo $pecah['tanggal']; ?>">
					</div>
					<div class="form-group">
						<label>Judul Berita</label>
						<input type="text" class="form-control" name="judul" value="<?php echo $pecah['judul']; ?>">
					</div>
					<div class="form-group">
						<img src="../foto/<?php echo $pecah['foto']; ?>" width="200">
					</div>
					<div class="form-group">
						<label> Ganti Foto</label>
						<input type="file" class="form-control" name="foto">
					</div>
					<div class="form-group">
						<label>Isi Berita</label>
						<textarea class="form-control" name="isi" id="deskripsi" rows="10"><?php echo $pecah['isi']; ?></textarea>
						<script>
							CKEDITOR.replace('deskripsi');
						</script>
					</div>
					<button class="btn btn-primary float-right" name="ubah">Ubah</button>
					<script>
						CKEDITOR.replace('deskripsi');
					</script>
				</form>
			</div>
		</div>
	</div>
</div>

<?php
if (isset($_POST['ubah'])) {

	$namafoto = $_FILES['foto']['name'];
	$lokasifoto = $_FILES['foto']['tmp_name'];

	if (!empty($lokasifoto)) {
		move_uploaded_file($lokasifoto, "../foto/$namafoto");

		$koneksi->query("UPDATE berita SET tanggal='$_POST[tanggal]',judul='$_POST[judul]',foto='$namafoto', isi='$_POST[isi]' WHERE idberita='$_GET[id]'");
	} else {
		$koneksi->query("UPDATE berita SET tanggal='$_POST[tanggal]', judul='$_POST[judul]',isi='$_POST[isi]' WHERE idberita='$_GET[id]'");
	}
	echo "<script>alert('Data Berhasil Diubah');</script>";
	echo "<script>location='index.php?halaman=berita';</script>";
}
?>