
<?php
$koneksi->query("DELETE FROM berita WHERE idberita='$_GET[id]'");

echo "<script>alert('Data Berhasil Di Hapus');</script>";
echo "<script>location='index.php?halaman=berita';</script>";

?>