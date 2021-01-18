-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jan 2021 pada 06.46
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_barang1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(7) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan_id` int(11) NOT NULL,
  `jenis_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `satuan_id`, `jenis_id`) VALUES
('B000001', 'asus', 1, 8),
('B000002', 'lenovo', 1, 8),
('B000003', 'asassa', 1, 8),
('B000004', 'asus', 1, 8),
('B000005', 'laptop cvcv', 2, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_barang_keluar` char(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_barang` char(7) NOT NULL,
  `tanggal_keluar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_barang_keluar`, `user_id`, `id_barang`, `tanggal_keluar`) VALUES
('T-BK-21011700001', 7, 'B000001', '2021-01-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` char(16) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_barang` char(7) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `supplier_id`, `user_id`, `id_barang`, `tanggal_masuk`) VALUES
('T-BM-21011700001', 5, 1, 'B000001', '2021-01-17'),
('T-BM-21011700002', 5, 1, 'B000002', '2021-01-17'),
('T-BM-21011700003', 5, 7, 'B000003', '2021-01-17'),
('T-BM-21011700004', 5, 1, 'B000005', '2021-01-17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_barang`
--

CREATE TABLE `detail_barang` (
  `id_detail_barang` char(12) NOT NULL,
  `nama_barang` varchar(60) NOT NULL,
  `aksi` char(2) NOT NULL,
  `status` varchar(11) NOT NULL,
  `id_barang` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `detail_barang`
--

INSERT INTO `detail_barang` (`id_detail_barang`, `nama_barang`, `aksi`, `status`, `id_barang`) VALUES
('B000001-0001', 'asus1', 'BK', 'baik', 'B000001'),
('B000001-0002', 'asus2', 'BK', 'baik', 'B000001'),
('B000001-0003', 'asus3', 'BK', 'baik', 'B000001'),
('B000001-0004', 'asus4', 'BK', 'baik', 'B000001'),
('B000001-0005', 'asus5', 'BM', 'baik', 'B000001'),
('B000001-0006', 'asus6', 'BM', 'baik', 'B000001'),
('B000001-0007', 'asus7', 'BM', 'tidak baik', 'B000001'),
('B000001-0008', 'asus', 'BM', 'baik', 'B000001'),
('B000001-0009', 'asus rog', 'BM', 'baik', 'B000001'),
('B000001-0010', 'asus rog', 'BM', 'baik', 'B000001'),
('B000001-0011', 'asus rog', 'BM', 'tidak baik', 'B000001'),
('B000001-0012', 'asus212', 'BM', 'baik', 'B000001'),
('B000002-0001', 'lenovo1', 'BM', 'baik', 'B000002'),
('B000002-0002', 'lenovo2', 'BM', 'baik', 'B000002'),
('B000002-0003', 'lenovo3', 'BM', 'baik', 'B000002'),
('B000002-0004', 'lenovo4', 'BM', 'baik', 'B000002'),
('B000002-0005', 'lenovo5', 'BM', 'baik', 'B000002'),
('B000002-0006', 'lenovo6', 'BM', 'baik', 'B000002'),
('B000002-0007', 'lenovo7', 'BM', 'baik', 'B000002'),
('B000002-0008', 'lenovo8', 'BM', 'tidak baik', 'B000002'),
('B000002-0009', 'lenovo9', 'BM', 'baik', 'B000002'),
('B000002-0010', 'lenovo121', 'BM', 'tidak baik', 'B000002'),
('B000003-0001', 'asus', 'BM', 'baik', 'B000003'),
('B000005-0001', 'asus', 'BM', 'baik', 'B000005');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(8, 'elektronik'),
(9, 'sembako');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Unit'),
(2, 'Pack'),
(3, 'Botol');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `no_telp`, `alamat`) VALUES
(5, 'PT Elektro Indonesia', '022212121', 'jl.bayangkara no 101, bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `role` enum('gudang','admin') NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  `foto` text NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `email`, `no_telp`, `role`, `password`, `created_at`, `foto`, `is_active`) VALUES
(1, 'Adminisitrator', 'admin', 'admin@admin.com', '025123456789', 'admin', '$2y$10$wMgi9s3FEDEPEU6dEmbp8eAAEBUXIXUy3np3ND2Oih.MOY.q/Kpoy', 1568689561, 'user.png', 1),
(7, 'Arfan ID', 'gudang', 'arfandotid@gmail.com', '081221528805', 'gudang', '$2y$10$wMgi9s3FEDEPEU6dEmbp8eAAEBUXIXUy3np3ND2Oih.MOY.q/Kpoy', 1568691611, 'user.png', 1),
(8, 'Muhammad Ghifari Arfananda', 'mghifariarfan', 'mghifariarfan@gmail.com', '085697442673', 'gudang', '$2y$10$5SGUIbRyEXH7JslhtEegEOpp6cvxtK6X.qdiQ1eZR7nd0RZjjx3qe', 1568691629, 'user.png', 1),
(13, 'Arfan Kashilukato', 'arfankashilukato', 'arfankashilukato@gmail.com', '081623123181', 'gudang', '$2y$10$/QpTunAD9alBV5NSRJ7ytupS2ibUrbmS3ia3u5B26H6f3mCjOD92W', 1569192547, 'user.png', 1),
(14, 'Muhammad Dzihan', 'dzihan', 'muhammaddzihan55@gmail.com', '085864998312', 'gudang', '$2y$10$blJXQ4xegp8Dm6J/xJFwjeLvCshM6I9MDTCeU71d0RY6SvXmCWt4G', 1608801814, 'user.png', 1),
(15, 'dwidzi', 'dzihan98', 'muhammaddzihan@yahoo.com', '085864998312', 'gudang', '$2y$10$yZ4sHa4EkszNA5J7HdCKguCQUHnCdewMaGyKgbm0Ri1YXDqzACicK', 1608801970, 'user.png', 1),
(16, 'c', 'asdw', 'c@g.com', '09090909', 'gudang', '$2y$10$knxeV9maltHI2mhNw7pbi.y0I.Z7Kgir8W/CVHhTBsVShr9Bbb5U2', 1609486658, 'user.png', 1),
(17, 'hans', 'dz', 'muhammaddzihan66@yahoo.com', '085864998312', 'gudang', '$2y$10$tSK1zZ6XVy7eQJVqfEr23uCpQfwbvSRvGfgGus67YhT7qJniT5G7a', 1610067580, 'user.png', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `satuan_id` (`satuan_id`),
  ADD KEY `kategori_id` (`jenis_id`);

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `barang_id` (`id_barang`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `id_user` (`user_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `barang_id` (`id_barang`);

--
-- Indeks untuk tabel `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD PRIMARY KEY (`id_detail_barang`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`jenis_id`) REFERENCES `jenis` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_keluar_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD CONSTRAINT `detail_barang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
