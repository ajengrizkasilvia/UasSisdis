-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 02:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uassisdis`
--

-- --------------------------------------------------------

--
-- Table structure for table `hongkong`
--

CREATE TABLE `hongkong` (
  `id_hongkong` int(10) NOT NULL,
  `id_dft` int(10) DEFAULT NULL,
  `sektor_hk` varchar(255) NOT NULL,
  `ektp_hk` varchar(255) NOT NULL,
  `kk_hk` varchar(255) NOT NULL,
  `akte_hk` varchar(255) NOT NULL,
  `suratnikah_hk` varchar(255) NOT NULL,
  `suratijin_hk` varchar(255) NOT NULL,
  `expaspor_hk` varchar(255) NOT NULL,
  `skck_hk` varchar(255) NOT NULL,
  `status_proses_hk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hongkong`
--

INSERT INTO `hongkong` (`id_hongkong`, `id_dft`, `sektor_hk`, `ektp_hk`, `kk_hk`, `akte_hk`, `suratnikah_hk`, `suratijin_hk`, `expaspor_hk`, `skck_hk`, `status_proses_hk`) VALUES
(1, 1, 'Panti Jompo', '', '', '', '', '', '', '', 'Belum scan skck');

-- --------------------------------------------------------

--
-- Table structure for table `malaysia`
--

CREATE TABLE `malaysia` (
  `id_malaysia` int(10) NOT NULL,
  `id_dft` int(10) DEFAULT NULL,
  `sektor_malay` varchar(255) NOT NULL,
  `ektp_malay` varchar(255) NOT NULL,
  `kk_malay` varchar(255) NOT NULL,
  `akte_malay` varchar(255) NOT NULL,
  `suratnikah_malay` varchar(255) NOT NULL,
  `suratijin_malay` varchar(255) NOT NULL,
  `expaspor_malay` varchar(255) NOT NULL,
  `skck_malay` varchar(255) NOT NULL,
  `status_proses_malay` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `malaysia`
--

INSERT INTO `malaysia` (`id_malaysia`, `id_dft`, `sektor_malay`, `ektp_malay`, `kk_malay`, `akte_malay`, `suratnikah_malay`, `suratijin_malay`, `expaspor_malay`, `skck_malay`, `status_proses_malay`) VALUES
(1, 4, 'ART', '', '', '', '', '', '', '', 'Belum scan surat ijin');

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `id_negara` int(10) NOT NULL,
  `negara_tujuan` varchar(255) NOT NULL,
  `kriteria` varchar(255) NOT NULL,
  `persyaratan` varchar(255) NOT NULL,
  `jumlah_gaji` varchar(255) NOT NULL,
  `gambar_negara` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`id_negara`, `negara_tujuan`, `kriteria`, `persyaratan`, `jumlah_gaji`, `gambar_negara`) VALUES
(1, 'Hongkong', 'Ex. Luar Negeri (Finish Contract)\r\nHarus mampu berbahasa Inggris, Cantonese atau Mandarin (salah satu), Ex. Singapore lebih diutamakan\r\nTinggi badan minimal 147 cm\r\nSehat jasmani dan rohani\r\nPendidikan minimal tamat SLTP\r\nBagi yang Ex. Hongkong harus memb', 'E-KTP (asli)\r\nKartu Keluarga (asli)\r\nAkta Kelahiran (asli)\r\nIzin Orang Tua/ Suami (asli)\r\nIjazah (asli)\r\nSurat Keterangan Status/ Surat Nikah (asli)', 'HK$ 4.520 (± Rp. 8.136.000) Potongan HK$ 2.079 x 6 bulan', '818-hongkong.jpg'),
(2, 'Taiwan', 'Tinggi badan minimal 165Cm (laki-laki) 150Cm (perempuan)\r\nBerat badan proporsional\r\nUsia minimal 20 s.d 35 tahun\r\nSehat jasmani dan rohani\r\nPendidikan minimal SLTA / Sederajat\r\nBagi yang Ex. Taiwan harus membawa Paspor lama & ARC', 'E-KTP (asli)\r\nKartu Keluarga (asli)\r\nAkta Kelahiran (asli)\r\nIzin Orang Tua/ Suami (asli)\r\nIjazah (asli)\r\nSurat Keterangan Status/ Surat Nikah (asli)\r\nSKCK dari Polda', 'NT$ 23.100 (± Rp. 10.857.000) Potongan NT$ 6.325 x 6 bulan', '188-taiwan.jpg'),
(3, 'Singapore', 'Tinggi badan mininal 147cm\r\nUsia antara 23 s.d 30 tahun\r\nSehat jasmani dan rohani\r\nPendidikan minimal tamat SLTP\r\nBagi yang Ex. Singapore harus membawa paspor lama', 'E-KTP (asli)\r\nKartu Keluarga (asli)\r\nAkta Kelahiran (asli)\r\nIzin Orang Tua/Suami (asli)\r\nIjazah (asli)\r\nSurat Keterangan Status Nikah (asli)', 'SIN$ 550 ( ± Rp. 5.775.000,- ) Potongan SIN$ 425 x 8 bulan', '877-singapore.jpg'),
(4, 'Malaysia', 'KTP (asli)\r\nKartu Keluarga (asli)\r\nAkte Lahir (asli)\r\nIzin Orang Tua/ Suami (asli)\r\nSurat Nikah (asli)', 'Tinggi badan minimal 147 cm\r\nUsia antara 21 – 37 tahun\r\nSehat jasmani dan rohani\r\nPendidikan minimal tamat SD\r\nBisa baca tulis\r\nBagi yang Ex. Malaysia harus membawa Paspor lama', 'RM 1.100 x Rp. 3.500 = Rp. 3.850.000/bln', '785-malaysia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_dft` int(10) NOT NULL,
  `id_negara` int(10) DEFAULT NULL,
  `nik` int(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `umur` int(10) NOT NULL,
  `alamat_lengkap` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tb` int(10) NOT NULL,
  `bb` int(10) NOT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `pengalaman_kerja` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_dft`, `id_negara`, `nik`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `umur`, `alamat_lengkap`, `jenis_kelamin`, `tb`, `bb`, `pendidikan_terakhir`, `status`, `agama`, `pengalaman_kerja`) VALUES
(1, 1, 128391, 'Anita Lidya', 'Malang', '2001-07-26', 20, 'Jl.Raya Agung Bululawang', 'Wanita', 165, 64, 'SMA', 'Belum Menikah', 'Islam', 'Non'),
(2, 4, 12819201, 'Rizka Putri', 'Malang', '2000-02-26', 21, 'Jl. Mawar Malang Selatan ', 'Wanita', 165, 65, 'SMA', 'Belum Menikah', 'Islam', 'Non'),
(3, 1, 12345, 'Melinda Sinthiya', 'Bogor', '1995-02-26', 26, 'Jl. Anggrek Malang Selatan ', 'Wanita', 160, 65, 'SMA', 'Cerai Hidup', 'Islam', 'ex'),
(4, 4, 67890, 'Ratna Indah', 'Surabaya', '2000-02-26', 21, 'Jl. Mawar Malang Selatan ', 'Wanita', 160, 64, 'SMA', 'Belum Menikah', 'Islam', 'Non'),
(5, 1, 145611, 'Salsa Sabiela', 'Malang', '2000-02-02', 21, 'Jl. Anggrek Malang Selatan ', 'Wanita', 160, 64, 'SMA', 'Belum Menikah', 'Islam', 'Non');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `role`) VALUES
(1, 'ajeng', 'ajeng321', 'ajeng123', 1),
(2, 'ratna', 'ratna890', '12345', 1),
(3, 'bunga', 'bungavanda', '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hongkong`
--
ALTER TABLE `hongkong`
  ADD PRIMARY KEY (`id_hongkong`),
  ADD KEY `FK_pendaftaran_hongkong` (`id_dft`);

--
-- Indexes for table `malaysia`
--
ALTER TABLE `malaysia`
  ADD PRIMARY KEY (`id_malaysia`),
  ADD KEY `FK_pendaftaran_malaysia` (`id_dft`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`id_negara`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_dft`),
  ADD KEY `FK_negara_pendaftaran` (`id_negara`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hongkong`
--
ALTER TABLE `hongkong`
  MODIFY `id_hongkong` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `malaysia`
--
ALTER TABLE `malaysia`
  MODIFY `id_malaysia` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `negara`
--
ALTER TABLE `negara`
  MODIFY `id_negara` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_dft` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hongkong`
--
ALTER TABLE `hongkong`
  ADD CONSTRAINT `FK_pendaftaran_hongkong` FOREIGN KEY (`id_dft`) REFERENCES `pendaftaran` (`id_dft`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `malaysia`
--
ALTER TABLE `malaysia`
  ADD CONSTRAINT `FK_pendaftaran_malaysia` FOREIGN KEY (`id_dft`) REFERENCES `pendaftaran` (`id_dft`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `FK_negara_pendaftaran` FOREIGN KEY (`id_negara`) REFERENCES `negara` (`id_negara`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
