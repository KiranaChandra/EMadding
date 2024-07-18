-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 05:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`idberita`, `tanggal`, `judul`, `foto`, `isi`) VALUES
(10, '2024-07-17', 'Kegiatan Mentoring Rohis Tk. 1 bersama Mas Yusuf ', 'IMG_0251.JPG', '<p>Dalam dunia yang penuh dengan tantangan, Islam mengajarkan kita untuk selalu berusaha dan tidak pernah menyerah. Berita ini menyoroti kisah-kisah inspiratif dari individu-individu yang telah mencapai kesuksesan melalui kombinasi iman yang kuat dan kerja keras yang tak kenal lelah. Dari pengusaha sukses hingga akademisi berprestasi, setiap cerita membawa pesan bahwa dengan doa dan usaha, tidak ada yang mustahil.</p>\r\n\r\n<p>Salah satu kisah yang diangkat adalah tentang seorang pengusaha muda yang memulai usahanya dari nol dan berhasil membangun kerajaan bisnis yang berlandaskan prinsip-prinsip Islami. Selain itu, berita ini juga mencakup tips dan nasihat dari para tokoh agama tentang bagaimana kita bisa menjaga semangat dan motivasi dalam mencapai tujuan hidup kita sesuai dengan ajaran Islam.</p>\r\n\r\n<p>Dengan membaca berita ini, diharapkan pembaca dapat termotivasi untuk terus berusaha, mengingat bahwa setiap langkah yang kita ambil dalam kebaikan dan ketulusan akan selalu mendapatkan bimbingan dan berkah dari Allah SWT.</p>\r\n\r\n<p>Tagline:<br />\r\n<em><strong>&quot;Keberhasilan adalah milik mereka yang beriman&nbsp;dan&nbsp;berusaha.&quot;</strong></em></p>\r\n'),
(11, '2024-07-18', 'JADWAL TES TULIS PMB POLTEK GT', 'PMB_Testulis.jpg', '<p>Telah dilaksanakan kegiatan Tes Tulis bagi Calon Mahasiswa Baru pada tanggal 14 Juli 2024. Peserta tes tulis diharapkan mematuhi syarat dan ketentuan berpakaian. Ketentuan berpakaian yaitu sopan dan mengenakan baju berkerah, kemudian alas kaki menutupi kaki.</p>\r\n'),
(12, '2024-07-01', 'APEL PAGI DENGAN PAKAIAN ADAT', 'pakaian adat.jpg', '<p>Telah dilaksanakan apel pagi pada 1 Juli 2024. Peserta apel diperkenankan menggunakan kostum/pakaian adat daerah. Kegiatan ini bertujuan untuk melestarikan dan penyegaran kembali adat-adat yang ada di Indonesia.&nbsp;</p>\r\n'),
(13, '2024-07-14', 'YUK DONOR DARAH!', 'donordarah.jpg', '<p><strong>YUK DONOR DARAH!</strong></p>\r\n\r\n<p>Akan dilaksanakan kegiatan donor darah pada 14-16 Mei 2024. Di Griya Ganesha</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `email`, `password`, `telepon`, `alamat`, `fotoprofil`, `level`) VALUES
(1, 'Administrator', 'admin@gmail.com', 'admin', '0812345678', 'Palembang', 'Untitled.png', 'Admin'),
(14, 'KiranaChandra', 'kirchan01@gmail.com', '123', '00123', 'kotbum', 'kk.jpg', 'Pelanggan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
