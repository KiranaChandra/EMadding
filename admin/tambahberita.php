<div class="row">
	<div class="col-md-12 mb-4">
		<div class="card shadow mb-4">
			<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">Tambah Berita</h6>
			</div>
			<div class="card-body">
				<form method="post" enctype="multipart/form-data">
					<div class="form-group">
						<label>Tanggal Berita</label>
						<input type="date" class="form-control" name="tanggal">
					</div>
					<div class="form-group">
						<label>Judul Berita</label>
						<input type="text" class="form-control" name="judul">
					</div>
					<div class="form-group">
						<label>Foto Berita</label>
						<div class="letak-input" style="margin-bottom: 10px;">
							<input type="file" class="form-control" name="foto">
						</div>
					</div>
					<div class="form-group">
						<label>Isi Berita</label>
						<textarea class="form-control" name="isi" id="deskripsi" rows="10"></textarea>
						<script>
							CKEDITOR.replace('deskripsi');
						</script>
					</div>
					<button class="btn btn-primary float-right" name="save"><i class="glyphicon glyphicon-saved"></i>Simpan</a></button>

				</form>
			</div>
		</div>
	</div>
</div>
