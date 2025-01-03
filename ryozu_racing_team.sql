-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 05 Des 2024 pada 14.56
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ryozu racing team`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `username_adm` varchar(15) NOT NULL,
  `password_adm` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`username_adm`, `password_adm`) VALUES
('admin', 'ryo123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `kode_jadwal` varchar(7) NOT NULL,
  `waktu` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`kode_jadwal`, `waktu`) VALUES
('kdjw001', '09:00 WIB'),
('kdjw002', '11:00 WIB'),
('kdjw003', '13:00 WIB'),
('kdjw004', '15:00 WIB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `motor`
--

CREATE TABLE `motor` (
  `no_polisi` varchar(10) NOT NULL,
  `jenis_motor` enum('Cub','Matic','Sport') NOT NULL,
  `merk_motor` enum('Honda','Yamaha','Suzuki','Kawasaki','Lainnya') NOT NULL,
  `nama_motor` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `motor`
--

INSERT INTO `motor` (`no_polisi`, `jenis_motor`, `merk_motor`, `nama_motor`, `username`) VALUES
('B1Ri', 'Sport', 'Kawasaki', 'Motor mainan', 'Miazory'),
('B5678CE', 'Sport', 'Yamaha', 'Motor Gue', 'Vava'),
('B5678CF', 'Sport', 'Honda', 'Motorku', 'rika'),
('F1202BC', 'Sport', 'Honda', 'CB150 Verza', 'tegardoa'),
('Jdjdjsbxh', 'Matic', 'Yamaha', 'Hduzbxhjzbxb', 'user50'),
('T4443LA', 'Matic', 'Yamaha', 'Mio', 'Reksi Firmansya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_jadwal` varchar(7) NOT NULL,
  `username` varchar(15) NOT NULL,
  `no_polisi` varchar(10) NOT NULL,
  `status` enum('Belum','Proses','Selesai','Batal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `tanggal`, `kode_jadwal`, `username`, `no_polisi`, `status`) VALUES
('5b14c5185c6fe', '2018-06-05', 'kdjw002', 'Miazory', 'B1Ri', 'Selesai'),
('5b14cc4e35889', '2018-06-07', 'kdjw004', 'Reksi Firmansya', 'T4443LA', 'Selesai'),
('5b14d80944944', '2018-06-05', 'kdjw002', 'Vava', 'B5678CE', 'Proses'),
('5b14db37a7798', '2018-06-11', 'kdjw001', 'user50', 'Jdjdjsbxh', 'Belum'),
('5b14db5371412', '2018-06-05', 'kdjw004', 'user50', 'Jdjdjsbxh', 'Belum'),
('5b14f4852f327', '2018-06-06', 'kdjw003', 'rika', 'B5678CF', 'Selesai'),
('5b150e3ee22af', '2018-06-09', 'kdjw003', 'rika', 'B5678CF', 'Belum'),
('5b33aa7e3e4a4', '2018-06-29', 'kdjw002', 'tegardoa', 'F1202BC', 'Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('Pria','Wanita') NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `block` enum('Blocked','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `tgl_lahir`, `jk`, `no_telp`, `alamat`, `block`) VALUES
('Miazory', '7a5bde8adaf60027e794a3af535dcaff', 'Miz', '2018-04-26', 'Pria', '081234456789', 'Jalan jalan', 'Tidak'),
('Reksi Firmansya', '202cb962ac59075b964b07152d234b70', 'Reksi Firmansyah', '1998-05-14', 'Pria', '08161415485', 'Perum Pemda', 'Tidak'),
('rika', '827ccb0eea8a706c4c34a16891f84e7b', 'Rika Fauziah', '1999-02-25', 'Wanita', '089656931847', 'Bekasi', 'Tidak'),
('simin', 'e10adc3949ba59abbe56e057f20f883e', 'simin', '2014-09-04', 'Pria', '089682612956', 'cikarang', 'Tidak'),
('tegardoa', 'd5b2e0291a5157c61c6867d31b235a71', 'Andy Yudithio', '0000-00-00', 'Pria', '085881742785', 'asdasd', 'Tidak'),
('user50', '5d68f62085335588b67cf713ed6b3cfb', 'User50', '2018-06-04', 'Pria', '0899999999', 'Telaga Murni', 'Tidak'),
('Vava', '674f3c2c1a8a6f90461e8a66fb5550ba', 'Vava Maharani', '2018-06-04', 'Wanita', '089654264514', 'Cipanas Cianjur', 'Tidak');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username_adm`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indeks untuk tabel `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`no_polisi`),
  ADD KEY `username` (`username`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `kode_jadwal` (`kode_jadwal`),
  ADD KEY `username` (`username`),
  ADD KEY `no_polisi` (`no_polisi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `motor`
--
ALTER TABLE `motor`
  ADD CONSTRAINT `motor_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motor_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motor_ibfk_3` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `motor_ibfk_4` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_jadwal`) REFERENCES `jadwal` (`kode_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`no_polisi`) REFERENCES `motor` (`no_polisi`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`no_polisi`) REFERENCES `motor` (`no_polisi`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`no_polisi`) REFERENCES `motor` (`no_polisi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_6` FOREIGN KEY (`kode_jadwal`) REFERENCES `jadwal` (`kode_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
