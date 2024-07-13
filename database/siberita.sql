-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2024 pada 10.50
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siberita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`idberita`, `tanggal`, `judul`, `foto`, `isi`) VALUES
(5, '2024-07-11', 'Infografis Jadwal Semifinal dan Final Euro 2024 dan Copa America 2024', '050561600_1720427361-Copa_America_2024_5.webp', '<p>Euro 2024 dan Copa America 2024 sama-sama memasuki babak semifinal. Masing-masing 4 tim melaju di babak 4 besar perhelatan akbar sepak bola benua Eropa dan Amerika.</p>\r\n\r\n<p>Tim yang lolos ke&nbsp;Semifinal Euro 2024&nbsp;adalah Spanyol, Prancis, Belanda, Inggris. Pertarungan berlangsung antara Spanyol dengan Prancis. Kemudian Belanda melawan Inggris.</p>\r\n\r\n<p>Babak Semifinal Euro 2024 digelar pada 10-11 Juli 2024. Puncaknya Final dihelat pada 15 Juli 2024.</p>\r\n\r\n<p>Sebelumnya Babak 8 Besar atau Perempat Final&nbsp;Euro 2024&nbsp;berlangsung pada 5-7 Juli 2024. Tim yang tidak lolos ke Semifinal adalah Jerman, Portugal, Turki, dan Swiss. Seluruh laga diselenggarakan di Jerman sebagai tuan rumah.</p>\r\n\r\n<p>Tim yang lolos ke&nbsp;Semifinal Copa America 2024&nbsp;adalah Argentina, Kanada, Uruguay, Kolombia. Pertarungan berlangsung antara Argentina dengan Kanada. Lalu Uruguay melawan Kolombia.</p>\r\n\r\n<p>Babak Semifinal Copa America 2024 digelar pada 10-11 Juli 2024. Selanjutnya perebutan Juara 3 pada 14 Juli 2024. Puncaknya Final dihelat pada 15 Juli 2024.</p>\r\n\r\n<p>Sebelumnya Babak 8 Besar atau Perempat Final&nbsp;Copa America 2024&nbsp;berlangsung pada 5-7 Juli 2024. Tim yang tidak lolos ke Semifinal adalah Ekuador, Venezuela, Brasil, dan Panama. Seluruh laga diselenggarakan di Amerika Serikat sebagai tuan rumah.</p>\r\n'),
(6, '2024-07-11', 'KPK Diminta Tindaklanjuti Temuan Timwas Haji soal Dugaan Korupsi', '082121400_1720348099-WhatsApp_Image_2024-07-06_at_02.23.00.webp', '<p>Anggota Pansus Angket Haji DPR RI, Luluk Nur Hamidah mengatakan, alasan dibentuknya panitia khusus (pansus) hak angket penyelenggaraan ibadah&nbsp;<a href=\"https://www.liputan6.com/tag/haji\">haji</a>&nbsp;2024.</p>\r\n\r\n<p>Sebab, bukan hanya karena ada indikasi pelanggaran terhadap payung hukum yang berlaku, tetapi juga adanya indikasi korupsi dalam pengalihan kuota haji reguler ke haji khusus.</p>\r\n\r\n<p>&quot;Praktek curang oknum petugas haji ini bermula dari jual-beli kuota pemberangkatan haji. Ada 8.400 kuota haji reguler yang dialihkan ke haji khusus yang biayanya jauh lebih mahal,&quot; duga Bendahara Umum PB Semmi, Achmad Donny melalui keterangan pers diterima, Kamis (11/7/2024).</p>\r\n\r\n<p>Tidak cukup hanya mengalihkan kuota haji reguler ke haji khusus, lanjut Donny, pada prakteknya diduga pula para oknum tersebut &lsquo;menakut‐nakuti&rsquo; jamaah menunda keberangkatannya jika tidak membayar biaya furoda Rp 300 juta.</p>\r\n\r\n<p>&quot;Jadi kalau tidak mau ditunda harus keluar uang lagi. Ini jelas praktek korupsi dengan cara jual-beli kuota haji,&rdquo; sebut Donny.</p>\r\n\r\n<p>Donny berhitung, dugaan itu benar maka saat dikali sesuai jumlah kuota haji reguler yang dialihkan ke haji khusus, jumlahnya fantastis. Karena itu tidak ada alasan KPK tidak memanggil pihak terkait atas temuan tersebut.</p>\r\n\r\n<p>&ldquo;Korupsi yang sangat telanjang dan memalukan,&quot; Donny menandasi.</p>\r\n\r\n<p>Sebagai informasi, PB Semmi akan mendatangi Kantor KPK untuk menyuarakan hal tersebut. Berdasarkan agenda diterima, aksi tersebut akan dilakukan besok pukul 08.30 WIB.</p>\r\n'),
(7, '2023-11-22', 'Inilah Kandungan Skincare yang Aman untuk Ibu Hamil', 'berita3.webp', '<p>Saat hamil, wanita ternyata lebih rentan mengalami berbagai masalah kulit, seperti jerawat, kulit kering, atau munculnya melasma. Sayangnya, masalah kulit ini kerap menurunkan rasa percaya diri ibu hamil.</p>\r\n\r\n<p>Nah, penggunaan skincare menjadi cara yang efektif untuk menjaga kesehatan kulit. Namun, ibu harus selektif dalam memilih skincare yang aman selama masa kehamilan.</p>\r\n\r\n<h3>Kandungan Skincare yang Aman untuk Ibu Hamil</h3>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>Salicylic acid</strong> Kandungan salicylic acid atau asam salisilat nyatanya cukup aman untuk ibu hamil. Banyak produk pembersih wajah dan toner yang mengandung bahan ini. Namun, sebaiknya gunakan produk dengan salicylic acid tidak lebih dari dua persen.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Grapeseed oil</strong> Grapeseed oil juga termasuk kandungan skincare yang aman untuk ibu hamil. Umumnya, kandungan grapeseed oil banyak terdapat pada serum wajah dan minyak pada tubuh yang berfungsi untuk melembapkan kulit.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Hyaluronic acid</strong> Jika bumil rentan mengalami kulit kering selama menjalani kehamilan, hyaluronic acid bisa menjadi solusinya. Kandungan ini cukup aman bagi ibu hamil dan tidak memengaruhi kesehatan ibu maupun bayi dalam kandungan.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Niacinamide</strong> Kandungan ini aman untuk ibu hamil karena berasal dari vitamin B3. Journal of Clinical and Aesthetic Dermatology mengungkapkan, niacinamide adalah kandungan skincare yang mengandung antioksidan.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Titanium dioxide</strong> Kandungan ini banyak terdapat pada produk tabir surya karena mampu menangkal sinar ultraviolet yang berpotensi merusak kulit. Titanium dioxide cukup aman untuk ibu hamil dan menyusui. Gunakan pada area wajah maupun tubuh yang sering terpapar sinar matahari secara langsung.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Zinc oxide</strong> Kandungan zinc oxide juga banyak terdapat pada beberapa produk physical sunscreen. Kandungan ini tidak menyerap pada kulit, namun tetap berada pada permukaan kulit sehingga aman untuk ibu hamil maupun ibu menyusui. Jadi, jangan pernah melewatkan sunscreen sebelum beraktivitas.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Vitamin C</strong> Kandungan vitamin C dalam produk skincare aman untuk ibu hamil maupun ibu menyusui. Vitamin C dapat berfungsi untuk meningkatkan kolagen pada kulit sehingga dapat membantu mengatasi bagian kulit yang menggelap.</p>\r\n	</li>\r\n</ol>\r\n'),
(8, '2024-07-11', 'Pj Gubernur Nana Sudjana Targetkan Partisipasi Pemilih Pilkada Jateng Capai 82 Persen', '022152000_1720552747-IMG-20240709-WA0031.webp', '<p>Pilkada serentak akan dilaksanakan pada 27 November 2024 di 35 kabupaten/kota di Jawa Tengah untuk memilih gubernur, wakil gubernur, 6 walikota dan wawali, 29 bupati dan wakil bupati. Pemutakhiran dan penyusunan daftar pemilih berlangsung pada 31 Mei 2024 sampai 23 September 2024.</p>\r\n\r\n<p>Pj Gubernur Jawa Tengah, Nana Sudjana menargetkan partisipasi pemilih pada perhelatan Pilkada serentak 2024 mencapai 82%.&nbsp;</p>\r\n\r\n<p>&ldquo;Target saya ketika Pemilu lalu sebanyak 80 persen, alhamdulillah bisa tercapai 82,5 persen. Pilkada ini kita tingkatkan, karena pilkada ini masyarakat akan memilih bupati/walikota dan gubernurnya, sehingga kita harapkan minimal 82 persen,&rdquo; kata Nana saat acara Rapat Desk Pilkada dan Kondusifitas Wilayah di Gedung Gradhika Semarang, Selasa, 9 Juli 2024.</p>\r\n\r\n<p>Ia mengaku, sengaja jauh-jauh hari menggelar rapat tersebut sebelum tahapan pendaftaran peserta pilkada, supaya pemerintah kabupaten/kota menyiapkan segala sesuatunya dalam menghadapi pilkada ini.&nbsp;&ldquo;Ini merupakan pilkada serentak pertama se-Indonesia, sehingga kesiapan perlu betul-betul dioptimalkan,&rdquo; kata Nana.</p>\r\n\r\n<p>Nana menyebut ada&nbsp;empat indikator kesuksesan pilkada, meliputi partisipasi masyarakat yang tinggi, kondusivitas wilayah, penyelenggaraan tahapan pilkada terlaksana dengan baik, dan pelaksanaan pemerintahan tetap berjalan baik.</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `telepon` varchar(12) NOT NULL,
  `alamat` text NOT NULL,
  `fotoprofil` varchar(255) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `password`, `telepon`, `alamat`, `fotoprofil`, `level`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'admin', '0812345678', 'Palembang', 'Untitled.png', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
