<?php
$berita = $koneksi->query("SELECT * FROM berita");
$jumlahberita = $berita->num_rows;

?>
<br>
<div class="row mb-3">
    <div class="col-md-12">
        <center>
            <img src="../foto/welcome.jpg" width="80%" style="border-radius: 10px">
        </center>
    </div>
</div>
<br>
<div class="row">
    <?php
    if ($_SESSION['admin']['level'] == "Admin") { ?>
        <div class="col-xl-12 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                Jumlah Berita</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumlahberita ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-list fa-2x text-gray-300"></i>
                        </div>
                    </div>
                    <a href="index.php?halaman=berita" class="btn btn-primary mt-3 btn-sm">Lihat Selengkapnya</a>
                </div>
            </div>
        </div>
    <?php } ?>
</div>