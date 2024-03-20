-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 15 Agu 2023 pada 12.28
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skizofrenia_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `id_pengetahuan` varchar(10) NOT NULL,
  `id_penyakit` varchar(20) NOT NULL,
  `id_gejala` varchar(20) NOT NULL,
  `nilai_cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`id_pengetahuan`, `id_penyakit`, `id_gejala`, `nilai_cf`) VALUES
('1', 'P2', 'G1', 0.3),
('10', 'P2', 'G10', 0.3),
('11', 'P2', 'G11', 0.4),
('12', 'P2', 'G12', 0.1),
('13', 'P2', 'G13', 0.2),
('14', 'P2', 'G14', 0.2),
('15', 'P2', 'G15', 0.1),
('16', 'P2', 'G16', 0.3),
('17', 'P2', 'G17', 0.1),
('2', 'P2', 'G2', 0.1),
('3', 'P2', 'G3', 0.1),
('4', 'P2', 'G4', 0.2),
('5', 'P2', 'G5', 0.1),
('6', 'P2', 'G6', 0.3),
('7', 'P2', 'G7', 0.2),
('8', 'P2', 'G8', 0.5),
('9', 'P2', 'G9', 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataadmin`
--

CREATE TABLE `dataadmin` (
  `id_admin` int NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `dataadmin`
--

INSERT INTO `dataadmin` (`id_admin`, `username`, `password`, `nama`) VALUES
(2, 'admin', 'admin', 'Dyas Octa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datagejala`
--

CREATE TABLE `datagejala` (
  `id_gejala` varchar(25) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `datagejala`
--

INSERT INTO `datagejala` (`id_gejala`, `nama_gejala`) VALUES
('G1', 'Saat ini saya merasa mudah menangis dan berputus asa'),
('G10', 'Saya mulai tidak perduli dengan situasi dan kondisi disekitar saya'),
('G11', 'Orang lain mengatakan saya sering tersenyum dan bicara sendiri'),
('G12', 'Saya mudah curiga pada orang lain'),
('G13', 'Saya mulai kurang bisa menguasai emosi saya'),
('G14', 'Saya mulai merasa tidak memerlukan orang lain disekitar saya'),
('G15', 'Saya mulai lebih sering memikirkan hal-hal yang belum tentu terjadi'),
('G2', 'Nafsu makan saya mulai menurun tanpa sebab yang jelas'),
('G3', 'Pola tidur saya mulai tidak teratur'),
('G4', 'Saya sering bermimpi buruk'),
('G5', 'Saya mulai jarang mandi'),
('G6', 'Saya lebih suka ditempat gelap'),
('G7', 'Saya lebih suka menyendiri dikamar seharian tanpa tujuan yang jelas'),
('G8', 'Saya sering mendengar suara-suara yang orang lain tidak dapat mendengarnya'),
('G9', 'Saya sering melihat sesuatu yang orang lain tidak melihatnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapasien`
--

CREATE TABLE `datapasien` (
  `id_pasien` int NOT NULL,
  `nama_pasien` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `usia` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `datapasien`
--

INSERT INTO `datapasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `usia`, `email`, `alamat`) VALUES
(58, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(59, 'Dyas Octa', 'Perempuan', 22, 'dyas1@gmail.com', 'PB sudirman'),
(60, 'Dyas Octa', 'Perempuan', 22, 'dyas1@gmail.com', 'PB sudirman'),
(61, 'Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(62, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(63, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(64, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(65, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(66, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(67, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(68, 'octa', 'Perempuan', 22, 'octa@gmail.com', 'Jember'),
(69, 'octa', 'Perempuan', 22, 'octa@gmail.com', 'Jember'),
(70, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(71, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(72, 'Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(73, 'Octa', 'Perempuan', 21, 'dyas1@gmail.com', 'PB sudirman'),
(74, 'Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(75, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(76, 'Octa', 'Perempuan', 21, 'dyas1@gmail.com', 'PB sudirman'),
(77, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(78, 'Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(79, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(80, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(81, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(82, 'Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(83, 'Dyas Octa', 'Perempuan', 25, 'testvsatu@gmail.com', 'PB sudirman'),
(84, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(85, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(86, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'dyasocta08@gmail.com'),
(87, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(88, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(89, 'Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(90, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(91, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(92, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(93, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(94, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(95, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(96, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(97, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(98, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(99, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(100, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(101, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(102, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(103, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(104, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(105, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(106, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(107, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(108, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(109, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(110, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(111, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(112, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(113, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(114, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(115, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(116, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(117, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(118, 'Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(119, 'Octa', 'Perempuan', 26, 'dyasocta08@gmail.com', 'PB sudirman'),
(120, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(121, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(122, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(123, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(124, 'Dyas Octa', 'Perempuan', 21, 'dyasocta08@gmail.com', 'PB sudirman'),
(125, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(126, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(127, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(128, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(129, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(130, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(131, 'Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(132, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(133, 'Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(134, 'Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(135, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(136, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(137, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(138, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(139, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(140, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(141, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(142, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(143, 'Dyas Octa', 'Perempuan', 22, 'dyasocta08@gmail.com', 'PB sudirman'),
(144, 'Dyas Octa', 'Perempuan', 22, 'dyas1@gmail.com', 'PB sudirman'),
(145, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(146, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(147, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(148, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(149, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(150, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(151, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(152, 'Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(153, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(154, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(155, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(156, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(157, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(158, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(159, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(160, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(161, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB Sudirman'),
(162, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(163, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(164, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(165, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(166, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(167, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(168, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(169, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(170, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(171, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(172, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(173, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(174, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(175, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(176, 'Dyas Octa', 'Perempuan', 22, 'dyas1@gmail.com', 'PB sudirman'),
(177, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(178, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(179, 'w', 'Pilih Jenis Kelamin', 22, 'octa@gmail.com', 'PB sudirman'),
(180, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(181, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(182, 'Dyas Octa', 'Perempuan', 21, 'octa@gmail.com', 'PB sudirman'),
(183, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(184, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(185, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(186, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(187, 'Dyas Octa', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(188, '33', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(189, '44', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(190, '44', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(191, '44', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(192, '4', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(193, '3333', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(194, '22', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman'),
(195, '22', 'Perempuan', 22, 'octa@gmail.com', 'PB sudirman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapenyakit`
--

CREATE TABLE `datapenyakit` (
  `id_penyakit` varchar(20) NOT NULL,
  `nama_penyakit` varchar(255) NOT NULL,
  `keterangan` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `saran` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `datapenyakit`
--

INSERT INTO `datapenyakit` (`id_penyakit`, `nama_penyakit`, `keterangan`, `saran`) VALUES
('P1', 'Tidak memiliki kecenderungan mengalami gejala ke arah Skizofrenia', 'Berdasarkan gejala yang anda alami dan pilih pada halaman sebelumnya, maka dapat disimpulkan bahwa anda tidak memiliki kecenderungan mengalami gejala ke arah skizofrenia.  ', 'Meskipun tes menunjukkan bahwa Anda tidak memiliki kecenderungan mengalami gejala ke arah skizofrenia, penting untuk tetap memperhatikan kesehatan mental Anda secara keseluruhan. Teruslah berbicara dengan psikolog/psikiater jika Anda mengalami gejala yang tidak biasa atau merasa khawatir tentang kesehatan mental Anda.'),
('P2', 'Skizofrenia', 'Jika hasilnya : <br> \r\n1% - 30% artinya terdapat gejala, tetapi masih belum bisa dikategorikan sebagai skizofrenia <br>\r\n31% - 50% artinya terdapat gejala lebih mengarah pada skizofrenia <br>\r\n&gt;51% artinya kemungkinan mengalami kecenderungan skizofrenia   ', 'Tidak perlu panik, hindari stres dan kecemasan yang berlebihan. Stres dan kecemasan dapat mempengaruhi kesehatan mental dan fisik Anda secara negatif. Cobalah untuk mengelola stres dengan cara yang sehat, seperti dengan meditasi, olahraga, atau konseling. Perhatikan juga tanda-tanda peringatan untuk gejala yang mungkin memburuk dan segera hubungi psikolog/psikiater jika diperlukan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_konsultasi`
--

CREATE TABLE `hasil_konsultasi` (
  `id_hasil` int NOT NULL,
  `id_konsultasi` int NOT NULL,
  `id_pasien` int NOT NULL,
  `id_penyakit` varchar(50) NOT NULL,
  `nilai_akurasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `hasil_konsultasi`
--

INSERT INTO `hasil_konsultasi` (`id_hasil`, `id_konsultasi`, `id_pasien`, `id_penyakit`, `nilai_akurasi`) VALUES
(38, 46, 58, 'P1', '0'),
(39, 47, 59, 'P2', '0.16000'),
(40, 49, 60, 'P2', '0.29440'),
(41, 52, 61, 'P3', '0.22131'),
(42, 53, 62, 'P2', '0.92000'),
(43, 54, 63, 'P3', '0.22131'),
(44, 55, 64, 'P2', '0.42240'),
(45, 56, 65, 'P3', '0.08000'),
(46, 57, 66, 'P3', '0.08000'),
(47, 58, 67, 'P1', '0'),
(48, 59, 68, 'P3', '0.36000'),
(49, 60, 69, 'P1', '0'),
(50, 61, 71, 'P2', '0.83223'),
(51, 62, 72, 'P1', '0'),
(52, 63, 73, 'P3', '0.15360'),
(53, 64, 74, 'P2', '0.74645'),
(54, 65, 75, 'P3', '0.40278'),
(55, 66, 76, 'P1', '0'),
(56, 67, 77, 'P3', '0.36000'),
(57, 68, 78, 'P3', '0.29440'),
(58, 69, 79, 'P3', '0.40278'),
(59, 71, 80, 'P3', '0.40278'),
(60, 72, 81, 'P3', '0.26080'),
(61, 73, 82, 'P2', '0.60000'),
(62, 74, 83, 'P2', '0.74309'),
(63, 75, 84, 'P2', '0.74309'),
(64, 76, 85, 'P1', '0'),
(65, 77, 86, 'P2', '0.54611'),
(66, 78, 87, 'P2', '0.36000'),
(67, 79, 88, 'P2', '0.87200'),
(68, 80, 89, 'P3', '0.34092'),
(69, 81, 90, 'P3', '0.48800'),
(70, 82, 91, 'P3', '0.22131'),
(71, 83, 92, 'P2', '0.26080'),
(72, 84, 93, 'P3', '0.22720'),
(73, 85, 94, 'P2', '0.59040'),
(74, 87, 95, 'P3', '0.32800'),
(75, 88, 96, 'P3', '0.32800'),
(76, 89, 97, 'P2', '0.72265'),
(77, 90, 98, 'P1', '0'),
(78, 92, 99, 'P1', '0'),
(79, 93, 100, 'P3', '0.15360'),
(80, 95, 101, 'P3', '0.15360'),
(81, 97, 102, 'P3', '0.32288'),
(82, 98, 103, 'P3', '0.32288'),
(83, 99, 104, 'P2', '0.36000'),
(84, 100, 105, 'P2', '0.61619'),
(85, 102, 106, 'P1', '0'),
(86, 103, 107, 'P2', '0.6162'),
(87, 104, 108, 'P2', '0.59040'),
(88, 106, 109, 'P3', '0.15360'),
(89, 108, 110, 'P2', '0.36000'),
(90, 110, 111, 'P3', '0.69853'),
(91, 112, 113, 'P1', '0'),
(92, 113, 114, 'P3', '0.31994'),
(93, 114, 114, 'P3', '0.31994'),
(94, 115, 114, 'P3', '0.31994'),
(95, 116, 114, 'P3', '0.31994'),
(96, 118, 115, 'P3', '0.31994'),
(97, 119, 115, 'P3', '0.31994'),
(98, 120, 115, 'P3', '0.31994'),
(99, 121, 115, 'P3', '0.31994'),
(100, 122, 115, 'P3', '0.31994'),
(101, 123, 115, 'P3', '0.31994'),
(102, 124, 116, 'P1', '0'),
(103, 125, 117, 'P3', '0.35085'),
(104, 126, 118, 'P2', '0.78619'),
(105, 127, 119, 'P2', '0.55858'),
(106, 128, 120, 'P2', '0.45595'),
(107, 129, 121, 'P2', '0.45595'),
(108, 130, 122, 'P2', '0.08000'),
(109, 132, 123, 'P2', '0.08000'),
(110, 134, 124, 'P2', '0.08000'),
(111, 136, 125, 'P2', '0.08000'),
(112, 137, 126, 'P2', '0.08000'),
(113, 139, 127, 'P2', '0.22720'),
(114, 141, 128, 'P2', '0.19040'),
(115, 143, 129, 'P2', '0.19040'),
(116, 144, 130, 'P2', '0.12000'),
(117, 145, 131, 'P2', '0.48970'),
(118, 146, 132, 'P2', '0.10000'),
(119, 147, 133, 'P2', '0.48970'),
(120, 148, 134, 'P2', '0.23050'),
(121, 149, 135, 'P2', '0.20000'),
(122, 150, 136, 'P2', '0.58000'),
(123, 151, 138, 'P2', '0.55200'),
(124, 152, 139, 'P1', '0'),
(125, 153, 141, 'P2', '0.10000'),
(126, 154, 142, 'P2', '0.19000'),
(127, 155, 143, 'P2', '0.80000'),
(128, 156, 144, 'P2', '0.10000'),
(129, 157, 145, 'P2', '0.40150'),
(130, 158, 146, 'P2', '0.10000'),
(131, 160, 147, 'P2', '0.10000'),
(132, 162, 150, 'P2', '0.10000'),
(133, 163, 150, 'P2', '0.10000'),
(134, 165, 151, 'P2', '0.10000'),
(135, 166, 151, 'P2', '0.10000'),
(136, 167, 152, 'P2', '0.10000'),
(137, 168, 152, 'P2', '0.10000'),
(138, 169, 153, 'P2', '0.20000'),
(139, 170, 153, 'P2', '0.20000'),
(140, 172, 155, 'P2', '0.28624'),
(141, 173, 155, 'P2', '0.28624'),
(142, 175, 156, 'P2', '0.26875'),
(143, 176, 156, 'P2', '0.26875'),
(144, 177, 157, 'P2', '0.24919'),
(145, 178, 157, 'P2', '0.24919'),
(146, 179, 158, 'P2', '0.18606'),
(147, 180, 159, 'P2', '0.12125'),
(148, 181, 159, 'P2', '0.12125'),
(149, 182, 160, 'P2', '0.05000'),
(150, 183, 161, 'P2', '0.07500'),
(151, 184, 162, 'P2', '0.07500'),
(152, 185, 162, 'P2', '0.07500'),
(153, 186, 163, 'P2', '0.09813'),
(154, 187, 163, 'P2', '0.09813'),
(155, 188, 164, 'P2', '0.07500'),
(156, 189, 165, 'P2', '0.15000'),
(157, 190, 165, 'P2', '0.15000'),
(158, 191, 166, 'P2', '0.21375'),
(159, 192, 166, 'P2', '0.21375'),
(160, 193, 168, 'P2', '0.14438'),
(161, 194, 168, 'P2', '0.14438'),
(162, 195, 169, 'P1', '0'),
(163, 196, 170, 'P1', '0'),
(164, 197, 171, 'P1', '0'),
(165, 198, 172, 'P2', '0.23341'),
(166, 199, 173, 'P2', '0.21375'),
(167, 200, 174, 'P2', '0.14438'),
(168, 201, 177, 'P2', '0.07500'),
(169, 202, 177, 'P2', '0.07500'),
(170, 203, 177, 'P2', '0.07500'),
(171, 205, 178, 'P2', '0.02500'),
(172, 206, 178, 'P2', '0.02500'),
(173, 207, 180, 'P2', '0.18716'),
(174, 208, 180, 'P2', '0.18716'),
(175, 209, 181, 'P2', '0.34751'),
(176, 210, 181, 'P2', '0.34751'),
(177, 211, 181, 'P2', '0.34751'),
(178, 212, 181, 'P2', '0.34751'),
(179, 213, 182, 'P2', '0.16750'),
(180, 214, 183, 'P2', '0.12125'),
(181, 215, 184, 'P1', '0'),
(182, 216, 185, 'P2', '0.29041'),
(183, 217, 185, 'P2', '0.29041'),
(184, 218, 186, 'P2', '0.27325');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id_kondisi` int NOT NULL,
  `kondisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id_kondisi`, `kondisi`) VALUES
(1, 'Tidak Pernah '),
(2, 'Jarang'),
(3, 'Cukup Sering'),
(4, 'Sering'),
(5, 'Sangat Sering');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `tanggal`, `penyakit`, `gejala`) VALUES
(46, '03-12-2023 20:51:03', 'a:2:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(47, '03-12-2023 21:03:03', 'a:2:{s:2:\"P2\";s:7:\"0.16000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(48, '03-12-2023 21:18:08', 'a:2:{s:2:\"P2\";s:7:\"0.16000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(49, '03-12-2023 21:21:55', 'a:3:{s:2:\"P2\";s:7:\"0.29440\";s:2:\"P3\";s:7:\"0.22131\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(50, '03-12-2023 21:22:42', 'a:3:{s:2:\"P2\";s:7:\"0.29440\";s:2:\"P3\";s:7:\"0.22131\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(51, '03-12-2023 21:22:45', 'a:3:{s:2:\"P2\";s:7:\"0.29440\";s:2:\"P3\";s:7:\"0.22131\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(52, '03-12-2023 21:24:00', 'a:3:{s:2:\"P3\";s:7:\"0.22131\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(53, '03-12-2023 21:26:30', 'a:3:{s:2:\"P2\";s:7:\"0.92000\";s:2:\"P3\";s:7:\"0.43004\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(54, '03-13-2023 18:42:15', 'a:3:{s:2:\"P3\";s:7:\"0.22131\";s:2:\"P2\";s:7:\"0.16000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"2\";}'),
(55, '03-13-2023 19:18:54', 'a:3:{s:2:\"P2\";s:7:\"0.42240\";s:2:\"P3\";s:7:\"0.28361\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"2\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";}'),
(56, '03-13-2023 19:47:13', 'a:3:{s:2:\"P3\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(57, '03-13-2023 19:49:53', 'a:3:{s:2:\"P3\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(58, '03-13-2023 19:51:02', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(59, '03-20-2023 07:47:20', 'a:3:{s:2:\"P3\";s:7:\"0.36000\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"5\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(60, '03-20-2023 07:49:00', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(61, '04-03-2023 05:03:04', 'a:3:{s:2:\"P2\";s:7:\"0.83223\";s:2:\"P3\";s:7:\"0.31853\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"3\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"3\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(62, '04-03-2023 05:06:41', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(63, '04-03-2023 05:07:13', 'a:3:{s:2:\"P3\";s:7:\"0.15360\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(64, '04-03-2023 05:11:01', 'a:3:{s:2:\"P2\";s:7:\"0.74645\";s:2:\"P3\";s:7:\"0.34455\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"3\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"2\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(65, '04-03-2023 05:30:01', 'a:3:{s:2:\"P3\";s:7:\"0.40278\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(66, '04-03-2023 05:34:03', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(67, '04-03-2023 05:34:30', 'a:3:{s:2:\"P3\";s:7:\"0.36000\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"5\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(68, '04-03-2023 05:35:35', 'a:3:{s:2:\"P3\";s:7:\"0.29440\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(69, '04-03-2023 05:36:31', 'a:3:{s:2:\"P3\";s:7:\"0.40278\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(70, '04-03-2023 05:39:00', 'a:3:{s:2:\"P3\";s:7:\"0.40278\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(71, '04-03-2023 05:39:13', 'a:3:{s:2:\"P3\";s:7:\"0.40278\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(72, '04-03-2023 05:44:17', 'a:3:{s:2:\"P3\";s:7:\"0.26080\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(73, '04-03-2023 05:45:21', 'a:3:{s:2:\"P2\";s:7:\"0.60000\";s:2:\"P3\";s:7:\"0.40864\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(74, '04-03-2023 05:49:14', 'a:3:{s:2:\"P2\";s:7:\"0.74309\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"2\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"2\";}'),
(75, '04-03-2023 05:57:10', 'a:3:{s:2:\"P2\";s:7:\"0.74309\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"2\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"2\";}'),
(76, '04-03-2023 05:57:33', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(77, '04-03-2023 05:59:39', 'a:3:{s:2:\"P2\";s:7:\"0.54611\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"2\";}'),
(78, '04-03-2023 06:02:39', 'a:3:{s:2:\"P2\";s:7:\"0.36000\";s:2:\"P3\";s:7:\"0.36000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"5\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(79, '04-03-2023 06:03:29', 'a:3:{s:2:\"P2\";s:7:\"0.87200\";s:2:\"P3\";s:7:\"0.36000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"5\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(80, '04-03-2023 06:04:15', 'a:3:{s:2:\"P3\";s:7:\"0.34092\";s:2:\"P2\";s:7:\"0.28902\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(81, '04-03-2023 06:07:24', 'a:3:{s:2:\"P3\";s:7:\"0.48800\";s:2:\"P2\";s:7:\"0.40000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"5\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(82, '04-03-2023 08:07:37', 'a:3:{s:2:\"P3\";s:7:\"0.22131\";s:2:\"P2\";s:7:\"0.16000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(83, '04-03-2023 08:12:45', 'a:3:{s:2:\"P2\";s:7:\"0.26080\";s:2:\"P3\";s:7:\"0.26080\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"3\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(84, '04-03-2023 08:22:27', 'a:3:{s:2:\"P3\";s:7:\"0.22720\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(85, '04-03-2023 08:23:05', 'a:3:{s:2:\"P2\";s:7:\"0.59040\";s:2:\"P3\";s:7:\"0.22720\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"3\";s:2:\"G7\";s:1:\"1\";}'),
(86, '04-03-2023 08:26:02', 'a:3:{s:2:\"P2\";s:7:\"0.59040\";s:2:\"P3\";s:7:\"0.22720\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"3\";s:2:\"G7\";s:1:\"1\";}'),
(87, '04-03-2023 08:35:16', 'a:3:{s:2:\"P3\";s:7:\"0.32800\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(88, '04-03-2023 08:35:49', 'a:3:{s:2:\"P3\";s:7:\"0.32800\";s:2:\"P2\";s:7:\"0.20000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(89, '04-03-2023 08:37:16', 'a:3:{s:2:\"P2\";s:7:\"0.72265\";s:2:\"P3\";s:7:\"0.43552\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"5\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"2\";}'),
(90, '04-04-2023 05:59:53', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(91, '04-04-2023 06:05:24', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(92, '04-04-2023 06:05:32', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(93, '04-04-2023 06:05:59', 'a:3:{s:2:\"P3\";s:7:\"0.15360\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(94, '04-04-2023 06:06:33', 'a:3:{s:2:\"P3\";s:7:\"0.15360\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(95, '04-04-2023 06:06:47', 'a:3:{s:2:\"P3\";s:7:\"0.15360\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(96, '04-04-2023 06:08:35', 'a:3:{s:2:\"P3\";s:7:\"0.15360\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(97, '04-04-2023 06:08:55', 'a:3:{s:2:\"P3\";s:7:\"0.32288\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"5\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(98, '04-04-2023 06:09:25', 'a:3:{s:2:\"P3\";s:7:\"0.32288\";s:2:\"P2\";s:7:\"0.28361\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"5\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(99, '04-04-2023 06:10:28', 'a:3:{s:2:\"P2\";s:7:\"0.36000\";s:2:\"P3\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(100, '04-04-2023 06:11:25', 'a:3:{s:2:\"P2\";s:7:\"0.61619\";s:2:\"P3\";s:7:\"0.25517\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"3\";s:2:\"G4\";s:1:\"3\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(101, '04-04-2023 06:18:58', 'a:3:{s:2:\"P2\";s:6:\"0.6162\";s:2:\"P3\";s:6:\"0.2552\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"3\";s:2:\"G4\";s:1:\"3\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(102, '04-04-2023 06:19:10', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(103, '04-04-2023 06:19:43', 'a:3:{s:2:\"P2\";s:6:\"0.6162\";s:2:\"P3\";s:6:\"0.2552\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"3\";s:2:\"G4\";s:1:\"3\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(104, '04-04-2023 06:21:40', 'a:3:{s:2:\"P2\";s:7:\"0.59040\";s:2:\"P3\";s:7:\"0.28902\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"5\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(105, '04-04-2023 06:25:42', 'a:3:{s:2:\"P2\";s:7:\"0.59040\";s:2:\"P3\";s:7:\"0.28902\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"5\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(106, '04-04-2023 06:25:59', 'a:3:{s:2:\"P3\";s:7:\"0.15360\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(107, '04-04-2023 06:26:55', 'a:3:{s:2:\"P3\";s:7:\"0.15360\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(108, '04-04-2023 06:27:11', 'a:3:{s:2:\"P2\";s:7:\"0.36000\";s:2:\"P3\";s:7:\"0.36000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"5\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(109, '04-04-2023 06:27:27', 'a:3:{s:2:\"P2\";s:7:\"0.36000\";s:2:\"P3\";s:7:\"0.36000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"5\";s:2:\"G2\";s:1:\"5\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(110, '04-04-2023 06:27:58', 'a:3:{s:2:\"P3\";s:7:\"0.69853\";s:2:\"P2\";s:7:\"0.67232\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(111, '04-04-2023 06:28:17', 'a:3:{s:2:\"P2\";s:7:\"0.36000\";s:2:\"P3\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"5\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";}'),
(112, '04-05-2023 04:16:27', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(113, '04-05-2023 04:17:16', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(114, '04-05-2023 04:17:44', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(115, '04-05-2023 04:17:48', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(116, '04-05-2023 04:17:57', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(117, '04-05-2023 04:18:43', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(118, '04-05-2023 04:18:57', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(119, '04-05-2023 04:19:11', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(120, '04-05-2023 04:23:17', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(121, '04-05-2023 04:25:45', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(122, '04-05-2023 04:26:36', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(123, '04-05-2023 04:27:16', 'a:3:{s:2:\"P3\";s:7:\"0.31994\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:7:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";}'),
(124, '04-11-2023 08:10:44', 'a:3:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"5\";s:2:\"G9\";s:1:\"5\";}'),
(125, '04-11-2023 09:19:46', 'a:3:{s:2:\"P3\";s:7:\"0.35085\";s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(126, '04-11-2023 09:20:47', 'a:3:{s:2:\"P2\";s:7:\"0.78619\";s:2:\"P3\";s:7:\"0.35085\";s:2:\"P1\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"4\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(127, '04-11-2023 09:24:50', 'a:3:{s:2:\"P2\";s:7:\"0.55858\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"4\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"2\";s:2:\"G4\";s:1:\"4\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(128, '04-11-2023 11:22:25', 'a:3:{s:2:\"P2\";s:7:\"0.45595\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"5\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(129, '04-11-2023 11:28:04', 'a:3:{s:2:\"P2\";s:7:\"0.45595\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"5\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(130, '04-11-2023 11:35:14', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(131, '04-11-2023 11:46:52', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(132, '04-11-2023 11:47:07', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(133, '04-11-2023 11:49:42', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(134, '04-11-2023 11:49:55', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(135, '04-11-2023 11:50:46', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(136, '04-11-2023 11:51:00', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(137, '04-11-2023 13:34:47', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(138, '04-11-2023 13:35:13', 'a:3:{s:2:\"P2\";s:7:\"0.08000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(139, '04-11-2023 13:35:31', 'a:3:{s:2:\"P2\";s:7:\"0.22720\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(140, '04-11-2023 13:36:08', 'a:3:{s:2:\"P2\";s:7:\"0.22720\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"4\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(141, '04-11-2023 13:36:25', 'a:3:{s:2:\"P2\";s:7:\"0.19040\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"3\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(142, '04-11-2023 13:37:17', 'a:3:{s:2:\"P2\";s:7:\"0.19040\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"3\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(143, '04-11-2023 13:37:37', 'a:3:{s:2:\"P2\";s:7:\"0.19040\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"2\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(144, '04-12-2023 06:02:34', 'a:3:{s:2:\"P2\";s:7:\"0.12000\";s:2:\"P1\";s:1:\"0\";s:2:\"P3\";s:1:\"0\";}', 'a:9:{s:2:\"G1\";s:1:\"3\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(145, '05-09-2023 03:58:58', 'a:2:{s:2:\"P2\";s:7:\"0.48970\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(146, '05-09-2023 04:04:02', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(147, '05-09-2023 04:04:51', 'a:2:{s:2:\"P2\";s:7:\"0.48970\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"3\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(148, '05-09-2023 04:09:00', 'a:2:{s:2:\"P2\";s:7:\"0.23050\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"2\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(149, '05-09-2023 04:10:19', 'a:2:{s:2:\"P2\";s:7:\"0.20000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(150, '05-09-2023 04:12:12', 'a:2:{s:2:\"P2\";s:7:\"0.58000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"5\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(151, '05-09-2023 05:35:49', 'a:2:{s:2:\"P2\";s:7:\"0.55200\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"3\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(152, '05-09-2023 05:38:22', 'a:2:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(153, '05-09-2023 12:58:13', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(154, '05-09-2023 14:24:35', 'a:2:{s:2:\"P2\";s:7:\"0.19000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"2\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(155, '05-09-2023 14:39:30', 'a:2:{s:2:\"P2\";s:7:\"0.80000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"5\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(156, '05-16-2023 13:28:16', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(157, '05-16-2023 13:32:07', 'a:2:{s:2:\"P2\";s:7:\"0.40150\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(158, '05-17-2023 07:13:40', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(159, '05-17-2023 07:13:41', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(160, '05-17-2023 07:19:33', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(161, '05-17-2023 07:19:34', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(162, '05-17-2023 07:37:13', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(163, '05-17-2023 07:37:15', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(164, '05-17-2023 07:37:57', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(165, '05-17-2023 07:38:11', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(166, '05-17-2023 07:38:12', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(167, '05-17-2023 07:40:02', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(168, '05-17-2023 07:40:04', 'a:2:{s:2:\"P2\";s:7:\"0.10000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(169, '05-17-2023 07:40:42', 'a:2:{s:2:\"P2\";s:7:\"0.20000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(170, '05-17-2023 07:40:44', 'a:2:{s:2:\"P2\";s:7:\"0.20000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(171, '05-17-2023 07:51:14', 'a:2:{s:2:\"P2\";s:7:\"0.20000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(172, '05-18-2023 20:09:31', 'a:2:{s:2:\"P2\";s:7:\"0.28624\";s:2:\"P1\";s:1:\"0\";}', 'a:18:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"3\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"3\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(173, '05-18-2023 20:10:38', 'a:2:{s:2:\"P2\";s:7:\"0.28624\";s:2:\"P1\";s:1:\"0\";}', 'a:18:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"3\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"3\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(174, '05-18-2023 20:12:59', 'a:2:{s:2:\"P2\";s:7:\"0.28624\";s:2:\"P1\";s:1:\"0\";}', 'a:18:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"3\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"3\";s:3:\"G16\";s:1:\"1\";s:3:\"G17\";s:1:\"1\";s:3:\"G18\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"4\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"3\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(175, '05-18-2023 21:25:37', 'a:2:{s:2:\"P2\";s:7:\"0.26875\";s:2:\"P1\";s:1:\"0\";}', 'a:16:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"2\";s:3:\"G16\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"3\";}'),
(176, '05-18-2023 21:25:45', 'a:2:{s:2:\"P2\";s:7:\"0.26875\";s:2:\"P1\";s:1:\"0\";}', 'a:16:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"2\";s:3:\"G16\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"3\";}'),
(177, '05-18-2023 21:31:32', 'a:2:{s:2:\"P2\";s:7:\"0.24919\";s:2:\"P1\";s:1:\"0\";}', 'a:16:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"3\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(178, '05-18-2023 21:31:43', 'a:2:{s:2:\"P2\";s:7:\"0.24919\";s:2:\"P1\";s:1:\"0\";}', 'a:16:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"3\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:3:\"G16\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(179, '05-18-2023 22:15:55', 'a:2:{s:2:\"P2\";s:7:\"0.18606\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"3\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"3\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(180, '05-18-2023 22:18:12', 'a:2:{s:2:\"P2\";s:7:\"0.12125\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"3\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(181, '05-18-2023 22:18:18', 'a:2:{s:2:\"P2\";s:7:\"0.12125\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"3\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(182, '05-21-2023 20:31:21', 'a:2:{s:2:\"P2\";s:7:\"0.05000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"3\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(183, '05-22-2023 09:18:20', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(184, '05-22-2023 10:52:17', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(185, '05-22-2023 10:52:49', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(186, '05-22-2023 18:44:19', 'a:2:{s:2:\"P2\";s:7:\"0.09813\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(187, '05-22-2023 18:44:42', 'a:2:{s:2:\"P2\";s:7:\"0.09813\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(188, '05-26-2023 07:34:47', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(189, '05-28-2023 09:22:23', 'a:2:{s:2:\"P2\";s:7:\"0.15000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"3\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(190, '05-28-2023 10:25:57', 'a:2:{s:2:\"P2\";s:7:\"0.15000\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"3\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(191, '05-28-2023 12:45:38', 'a:2:{s:2:\"P2\";s:7:\"0.21375\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(192, '05-28-2023 12:51:11', 'a:2:{s:2:\"P2\";s:7:\"0.21375\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(193, '05-29-2023 20:10:38', 'a:2:{s:2:\"P2\";s:7:\"0.14438\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(194, '05-29-2023 20:10:40', 'a:2:{s:2:\"P2\";s:7:\"0.14438\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(195, '05-30-2023 11:25:09', 'a:2:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(196, '05-30-2023 11:30:14', 'a:2:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(197, '05-30-2023 11:31:54', 'a:2:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(198, '05-30-2023 12:20:05', 'a:2:{s:2:\"P2\";s:7:\"0.23341\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"2\";s:2:\"G6\";s:1:\"3\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}');
INSERT INTO `konsultasi` (`id_konsultasi`, `tanggal`, `penyakit`, `gejala`) VALUES
(199, '05-30-2023 17:03:16', 'a:2:{s:2:\"P2\";s:7:\"0.21375\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"3\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(200, '05-30-2023 17:45:23', 'a:2:{s:2:\"P2\";s:7:\"0.14438\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"2\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(201, '05-31-2023 20:34:01', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(202, '05-31-2023 20:34:32', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(203, '05-31-2023 20:45:21', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(204, '05-31-2023 20:47:29', 'a:2:{s:2:\"P2\";s:7:\"0.07500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(205, '05-31-2023 20:47:43', 'a:2:{s:2:\"P2\";s:7:\"0.02500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(206, '05-31-2023 20:47:46', 'a:2:{s:2:\"P2\";s:7:\"0.02500\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(207, '06-01-2023 13:34:28', 'a:2:{s:2:\"P2\";s:7:\"0.18716\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(208, '06-01-2023 13:56:39', 'a:2:{s:2:\"P2\";s:7:\"0.18716\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(209, '06-02-2023 13:32:08', 'a:2:{s:2:\"P2\";s:7:\"0.34751\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"2\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"3\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(210, '06-03-2023 08:49:36', 'a:2:{s:2:\"P2\";s:7:\"0.34751\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"2\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"3\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(211, '06-03-2023 10:36:41', 'a:2:{s:2:\"P2\";s:7:\"0.34751\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"2\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"3\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(212, '06-03-2023 11:01:42', 'a:2:{s:2:\"P2\";s:7:\"0.34751\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"2\";s:3:\"G13\";s:1:\"2\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"2\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"3\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(213, '06-05-2023 11:48:40', 'a:2:{s:2:\"P2\";s:7:\"0.16750\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"2\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(214, '06-07-2023 20:15:32', 'a:2:{s:2:\"P2\";s:7:\"0.12125\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"2\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"2\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(215, '06-12-2023 08:52:21', 'a:2:{s:2:\"P1\";s:1:\"0\";s:2:\"P2\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"1\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"1\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(216, '06-12-2023 11:38:06', 'a:2:{s:2:\"P2\";s:7:\"0.29041\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"3\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"3\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(217, '06-12-2023 11:39:06', 'a:2:{s:2:\"P2\";s:7:\"0.29041\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"3\";s:3:\"G13\";s:1:\"1\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"3\";s:2:\"G6\";s:1:\"2\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}'),
(218, '06-12-2023 15:07:38', 'a:2:{s:2:\"P2\";s:7:\"0.27325\";s:2:\"P1\";s:1:\"0\";}', 'a:15:{s:2:\"G1\";s:1:\"3\";s:3:\"G10\";s:1:\"1\";s:3:\"G11\";s:1:\"1\";s:3:\"G12\";s:1:\"5\";s:3:\"G13\";s:1:\"2\";s:3:\"G14\";s:1:\"1\";s:3:\"G15\";s:1:\"1\";s:2:\"G2\";s:1:\"1\";s:2:\"G3\";s:1:\"1\";s:2:\"G4\";s:1:\"1\";s:2:\"G5\";s:1:\"1\";s:2:\"G6\";s:1:\"1\";s:2:\"G7\";s:1:\"1\";s:2:\"G8\";s:1:\"1\";s:2:\"G9\";s:1:\"1\";}');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`id_pengetahuan`);

--
-- Indeks untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `datagejala`
--
ALTER TABLE `datagejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `datapasien`
--
ALTER TABLE `datapasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `datapenyakit`
--
ALTER TABLE `datapenyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id_kondisi`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `datapasien`
--
ALTER TABLE `datapasien`
  MODIFY `id_pasien` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT untuk tabel `hasil_konsultasi`
--
ALTER TABLE `hasil_konsultasi`
  MODIFY `id_hasil` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id_kondisi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
