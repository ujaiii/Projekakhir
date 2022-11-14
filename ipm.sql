-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Nov 2021 pada 04.09
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adminn`
--

CREATE TABLE `adminn` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `adminn`
--

INSERT INTO `adminn` (`id`, `username`, `password`) VALUES
(3, 'admin', '$2y$10$i1FSkRWyI.7J6FIADJOvdej18IxxJ1biV.1W1XEU360TiOkDOV7oW');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluhann`
--

CREATE TABLE `keluhann` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` int(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `keluhan` varchar(255) DEFAULT NULL,
  `komentar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `keluhann`
--

INSERT INTO `keluhann` (`id`, `nama`, `nik`, `gender`, `tanggal`, `kecamatan`, `keluhan`, `komentar`) VALUES
(22, 'dim', 98765, 'Laki-Laki', '2021-11-17', 'palaran', 'jalana bermayat', 'mohon maaf atas mayat nya kita akan segera membersih kan masalah ini'),
(23, 'Hada ', 923823, 'Laki-Laki', '2021-11-24', 'Samarinda', 'Jalanan rusak di Jl.Segriri atas', 'maaf'),
(28, 'Faisal', 12332, 'Laki-Laki', '2021-11-05', 'Kec Sungai Pinang', 'Pencuri Helem motor, melebihi 100 korban.', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `no` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`no`, `nama`, `kontak`) VALUES
(1, 'Muhammad Faisal Setiawan', '+62 082-1227-2722'),
(2, 'Dimas yudhaputra hemi sasongko', '+62 822-7171-9145'),
(3, 'Muhammad Mardhotillah Al Syuhada', '+62 812-3938-4201');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`id`, `username`, `password`) VALUES
(2, '1111', '$2y$10$Jdi5SO1to11XKYSQLxwCReLDjZNjpsCuwerA5H3mS1ungRKWYfU0q'),
(6, '2222', '$2y$10$ky0z/2Zf/G1eyC9uMR.lu.qhIMmHuLZXgcsOfHMWWw03JMtKv4mNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentangkami`
--

CREATE TABLE `tentangkami` (
  `no` int(11) NOT NULL,
  `visi` varchar(255) NOT NULL,
  `misi` varchar(255) NOT NULL,
  `motto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tentangkami`
--

INSERT INTO `tentangkami` (`no`, `visi`, `misi`, `motto`) VALUES
(1, 'Menjadi unit yang profesional dalam memberikan dukungan terhadap pengelolaan pengaduan masyarakat dalam mewujudkan Pemerintahan Indonesia yang aspiratif.', '1. Meningkatkan kualitas pengelolaan dan penanganan surat pengaduan masyarakat.\r\n2. Membangun kepercayaan masyarakat terhadap Pemerintahan Indonesia', 'Melayani dengan Empati dan Sepenuh Hati.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adminn`
--
ALTER TABLE `adminn`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `keluhann`
--
ALTER TABLE `keluhann`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tentangkami`
--
ALTER TABLE `tentangkami`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adminn`
--
ALTER TABLE `adminn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `keluhann`
--
ALTER TABLE `keluhann`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tentangkami`
--
ALTER TABLE `tentangkami`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
