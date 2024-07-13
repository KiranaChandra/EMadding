<div class="d-sm-flex align-items-center justify-content-between mb-4">
	<a href="index.php?halaman=tambahberita" class="btn btn-sm btn-primary shadow-sm float-right pull-right"><i class="fas fa-plus fa-sm text-white-50"></i> Tambah Berita</a>
</div>
<div class="row">
	<div class="col-md-12 mb-4">
		<div class="card shadow mb-4">
			<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">Data Berita</h6>
			</div>
			<div class="card-body">
				<table class="table table-bordered table-striped" id="table">
					<thead class="bg-primary text-white">
						<tr>
							<th>No</th>
							<th>Judul Berita</th>
							<th>Tanggal</th>
							<th>Foto</th>
							<th>Aksi</th>
						</tr>
					</thead>
					<tbody>
						<?php $nomor = 1; ?>
						<?php $ambil = $koneksi->query("SELECT*FROM berita"); ?>
						<?php while ($pecah = $ambil->fetch_assoc()) { ?>
							<tr>
								<td><?php echo $nomor; ?></td>
								<td><?php echo $pecah['judul'] ?></td>
								<td><?php echo $pecah['tanggal'] ?></td>
								<td>
									<img src="../foto/<?php echo $pecah['foto'] ?>" width="100px">
								</td>
								<td>
									<a href="index.php?halaman=ubahberita&id=<?php echo $pecah['idberita']; ?>" class="btn btn-warning m-1">Ubah</a>
									<a href="index.php?halaman=hapusberita&id=<?php echo $pecah['idberita']; ?>" class="btn btn-danger" onclick="return confirm('Apakah Anda Yakin Ingin Menghapus Data ?')">Hapus</a>
								</td>
							</tr>
							<?php $nomor++; ?>
						<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>