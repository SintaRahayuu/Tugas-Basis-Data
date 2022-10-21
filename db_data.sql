-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2022 pada 01.51
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_cus`
--

CREATE TABLE `tbl_cus` (
  `costumer_id` varchar(5) NOT NULL,
  `costumer_name` varchar(30) DEFAULT NULL,
  `costumer_adress` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_cus`
--

INSERT INTO `tbl_cus` (`costumer_id`, `costumer_name`, `costumer_adress`) VALUES
('CS001', 'Aan', 'Pasuruan'),
('CS002', 'Hanif', 'Banyuwangi'),
('CS003', 'Mirza', 'Malang'),
('CS004', 'Tanti', 'Tegal'),
('CS005', 'Budie', 'Kediri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ord`
--

CREATE TABLE `tbl_ord` (
  `order_id` varchar(15) NOT NULL,
  `order_date` date NOT NULL,
  `costumer_id` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_ord`
--

INSERT INTO `tbl_ord` (`order_id`, `order_date`, `costumer_id`, `qty`, `amount`) VALUES
('CS001', '2016-12-10', 'CSS001', 1, 40000),
('CS002', '2017-01-11', 'CSS002', 2, 50000),
('CS003', '2017-01-12', 'CSS005', 5, 35000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_cus`
--
ALTER TABLE `tbl_cus`
  ADD PRIMARY KEY (`costumer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
