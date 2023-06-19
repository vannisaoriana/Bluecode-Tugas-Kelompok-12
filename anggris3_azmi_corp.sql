-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2023 at 05:34 PM
-- Server version: 10.2.44-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anggris3_azmi_corp`
--

-- --------------------------------------------------------

--
-- Table structure for table `akuns`
--

CREATE TABLE `akuns` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'kas,persediaan,pembelian,penjualan,biaya,piutang,hutang,modal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `akuns`
--

INSERT INTO `akuns` (`id`, `kode`, `nama`, `jenis`, `created_at`, `updated_at`) VALUES
(1, '1', 'KAS UTAMA', 'kas', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(2, '2', 'KAS GUDANG 1', 'kas', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(3, '3', 'KAS GUDANG 2', 'kas', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(4, '4', 'KAS BUTIK', 'kas', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(5, '5', 'KAS BMT', 'kas', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(6, '6', 'PENJUALAN', 'penjualan', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(7, '7', 'PEMBELIAN', 'pembelian', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(8, '8', 'PIUTANG', 'piutang', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(9, '10', 'modal', 'modal', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(10, '11', 'biaya', 'biaya', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(11, '12', 'persediaan', 'persediaan', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(12, '13', 'Kartu Kredit', 'hutang', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(13, '14', 'Harga Pokok Penjualan', 'hpp', '2023-06-18 02:03:04', '2023-06-18 02:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_gas_keluars`
--

CREATE TABLE `detail_transaksi_gas_keluars` (
  `id` int(10) UNSIGNED NOT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kosong_p` int(11) DEFAULT NULL,
  `harga_kosong_p` int(11) DEFAULT NULL,
  `kosong_r` int(11) DEFAULT NULL,
  `harga_kosong_r` int(11) DEFAULT NULL,
  `kosong_k` int(11) DEFAULT NULL,
  `isi` int(11) DEFAULT NULL,
  `harga_isi` int(11) DEFAULT NULL,
  `no_rute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_gas_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_transaksi_gas_keluars`
--

INSERT INTO `detail_transaksi_gas_keluars` (`id`, `produk_id`, `nama`, `kode_produk`, `kosong_p`, `harga_kosong_p`, `kosong_r`, `harga_kosong_r`, `kosong_k`, `isi`, `harga_isi`, `no_rute`, `transaksi_gas_id`, `created_at`, `updated_at`) VALUES
(5, 1, 'Gas Elpiji 3 KG', 'A1', NULL, 0, NULL, 0, 0, NULL, 0, '3/RT/06/23', 3, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(6, 2, 'Gas Elpiji 12 kg', 'A2', NULL, 0, NULL, 0, 0, NULL, 0, '3/RT/06/23', 3, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(7, 3, 'Gas Elpiji 20 KG', 'A3', NULL, 0, NULL, 0, 0, NULL, 0, '3/RT/06/23', 3, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(8, 4, 'Refill gas portable', 'A4', NULL, 0, NULL, 0, 0, NULL, 0, '3/RT/06/23', 3, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(9, 1, 'Gas Elpiji 3 KG', 'A1', NULL, 0, NULL, 0, 0, NULL, 0, '4/RT/06/23', 4, '2023-06-19 03:15:04', '2023-06-19 03:15:04'),
(10, 2, 'Gas Elpiji 12 kg', 'A2', NULL, 0, NULL, 0, 0, NULL, 0, '4/RT/06/23', 4, '2023-06-19 03:15:04', '2023-06-19 03:15:04'),
(11, 3, 'Gas Elpiji 20 KG', 'A3', NULL, 0, NULL, 0, 0, NULL, 0, '4/RT/06/23', 4, '2023-06-19 03:15:05', '2023-06-19 03:15:05'),
(12, 4, 'Refill gas portable', 'A4', NULL, 0, NULL, 0, 0, NULL, 0, '4/RT/06/23', 4, '2023-06-19 03:15:05', '2023-06-19 03:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_gas_masuks`
--

CREATE TABLE `detail_transaksi_gas_masuks` (
  `id` int(10) UNSIGNED NOT NULL,
  `produk_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kosong_p` int(11) DEFAULT NULL,
  `harga_kosong_p` int(11) DEFAULT NULL,
  `kosong_r` int(11) DEFAULT NULL,
  `harga_kosong_r` int(11) DEFAULT NULL,
  `kosong_k` int(11) DEFAULT NULL,
  `isi` int(11) DEFAULT NULL,
  `harga_isi` int(11) DEFAULT NULL,
  `no_rute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaksi_gas_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_jurnals`
--

CREATE TABLE `detail_transaksi_jurnals` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_jurnal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` int(11) NOT NULL,
  `no_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akun_id` int(11) NOT NULL,
  `jenis_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` double(8,2) NOT NULL DEFAULT 0.00,
  `kredit` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_transaksi_jurnals`
--

INSERT INTO `detail_transaksi_jurnals` (`id`, `no_jurnal`, `trans_id`, `no_trans`, `akun_id`, `jenis_trans`, `deskripsi`, `debit`, `kredit`, `created_at`, `updated_at`) VALUES
(1, '1/JR/06/23', 1, '1/KS/06/23', 1, 'kas_masuk', 'modal pak budi', 10000.00, 0.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(2, '1/JR/06/23', 1, '1/KS/06/23', 10, 'kas_masuk', 'modal pak budi', 0.00, 10000.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(3, '2/JR/06/23', 2, '2/KS/06/23', 11, 'kas_keluar', 'biaya jajan', 10000.00, 0.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(4, '2/JR/06/23', 2, '2/KS/06/23', 1, 'kas_keluar', 'biaya jajan', 0.00, 10000.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(5, '3/JR/06/23', 3, '3/KS/06/23', 1, 'kas_masuk', NULL, 3.00, 0.00, '2023-06-16 06:06:16', '2023-06-16 06:06:16'),
(6, '3/JR/06/23', 3, '3/KS/06/23', 1, 'kas_masuk', NULL, 0.00, 3.00, '2023-06-16 06:06:16', '2023-06-16 06:06:16'),
(7, '4/JR/06/23', 4, '4/KS/06/23', 1, 'kas_keluar', NULL, 2.00, 0.00, '2023-06-16 06:06:56', '2023-06-16 06:06:56'),
(8, '4/JR/06/23', 4, '4/KS/06/23', 1, 'kas_keluar', NULL, 0.00, 2.00, '2023-06-16 06:06:56', '2023-06-16 06:06:56'),
(9, '5/JR/06/23', 1, '1/JRM/06/23', 1, 'jurnal_manual', 'Penjualan Gas', 150.00, 0.00, '2023-06-16 06:07:48', '2023-06-16 06:07:48'),
(10, '5/JR/06/23', 1, '1/JRM/06/23', 1, 'jurnal_manual', 'Penjualan Gas', 0.00, 150.00, '2023-06-16 06:07:48', '2023-06-16 06:07:48'),
(11, '6/JR/06/23', 2, '2/JRM/06/23', 1, 'jurnal_manual', 'Penjualan Gas 15kg', 200.00, 0.00, '2023-06-16 06:08:14', '2023-06-16 06:08:14'),
(12, '6/JR/06/23', 2, '2/JRM/06/23', 1, 'jurnal_manual', 'Penjualan Gas 15kg', 0.00, 200.00, '2023-06-16 06:08:14', '2023-06-16 06:08:14'),
(13, '7/JR/06/23', 5, '5/KS/06/23', 6, 'kas_keluar', NULL, 20.00, 0.00, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(14, '7/JR/06/23', 5, '5/KS/06/23', 3, 'kas_keluar', NULL, 0.00, 20.00, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(15, '8/JR/06/23', 6, '6/KS/06/23', 7, 'kas_keluar', NULL, 20.00, 0.00, '2023-06-19 03:15:04', '2023-06-19 03:15:04'),
(16, '8/JR/06/23', 6, '6/KS/06/23', 3, 'kas_keluar', NULL, 0.00, 20.00, '2023-06-19 03:15:04', '2023-06-19 03:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, '1', 'budi', '2023-06-15 22:45:48', '2023-06-15 22:45:48'),
(2, '2', 'Santo', '2023-06-15 22:45:49', '2023-06-19 02:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `gudangs`
--

CREATE TABLE `gudangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gudangs`
--

INSERT INTO `gudangs` (`id`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(1, '1', 'gudang 1', '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(2, '2', 'gudang 2', '2023-06-15 22:45:49', '2023-06-15 22:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal_manuals`
--

CREATE TABLE `jurnal_manuals` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akun_debit` int(10) UNSIGNED NOT NULL,
  `akun_kredit` int(10) UNSIGNED NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnal_manuals`
--

INSERT INTO `jurnal_manuals` (`id`, `no_trans`, `akun_debit`, `akun_kredit`, `deskripsi`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, '1/JRM/06/23', 1, 1, 'Penjualan Gas', 150.00, '2023-06-16 06:07:48', '2023-06-16 06:07:48'),
(2, '2/JRM/06/23', 1, 1, 'Penjualan Gas 15kg', 200.00, '2023-06-16 06:08:14', '2023-06-16 06:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `kartu_kredits`
--

CREATE TABLE `kartu_kredits` (
  `id` int(10) UNSIGNED NOT NULL,
  `akun` int(10) UNSIGNED NOT NULL,
  `limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_bayar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kartu_kredits`
--

INSERT INTO `kartu_kredits` (`id`, `akun`, `limit`, `created_at`, `updated_at`, `tanggal_bayar`) VALUES
(2, 12, '20000000', '2023-06-19 03:06:05', '2023-06-19 03:06:05', '30');

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_12_011900_create_mobils_table', 1),
(4, '2018_01_12_031222_create_suppliers_table', 1),
(5, '2018_01_12_040815_create_drivers_table', 1),
(6, '2018_01_12_044020_create_gudangs_table', 1),
(7, '2018_01_12_064726_create_pelanggans_table', 1),
(8, '2018_01_12_082140_create_kas_table', 1),
(9, '2018_01_13_031627_create_akuns_table', 1),
(10, '2018_01_13_050234_create_transaksi_kas_table', 1),
(11, '2018_01_17_042309_create_transaksi_jurnals_table', 1),
(12, '2018_01_17_042406_create_produks_table', 1),
(13, '2018_01_17_045119_create_detail_transaksi_jurnals_table', 1),
(14, '2018_01_20_025030_create_transaksi_gas_table', 1),
(15, '2018_01_20_025111_create_detail_transaksi_gas_masuks_table', 1),
(16, '2018_01_20_025118_create_detail_transaksi_gas_keluars_table', 1),
(17, '2018_01_29_020358_create_jurnal_manuals_table', 1),
(18, '2018_04_28_045824_create_kartu_kredits_table', 1),
(19, '2018_04_28_081810_create_transaksi_kartu_kredits_table', 1),
(20, '2018_05_23_075540_create_transaksi_lains_table', 1),
(21, '2018_05_24_020145_create_perusahaans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobils`
--

CREATE TABLE `mobils` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobils`
--

INSERT INTO `mobils` (`id`, `kode`, `plat`, `created_at`, `updated_at`) VALUES
(1, '1', 'H 1234 KF', '2023-06-15 22:45:48', '2023-06-19 02:54:08'),
(3, '2', 'H 3356 HI', '2023-06-19 02:54:31', '2023-06-19 02:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_kantor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `perusahaan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kontak` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `koordinat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id`, `kode`, `nama`, `alamat`, `email`, `alamat_kantor`, `perusahaan`, `kontak`, `koordinat`, `created_at`, `updated_at`) VALUES
(1, '1', 'Mala', 'Jl Merdeka', 'mala06@gmail.com', 'Jl Jenderal', 'PT Sejahtera', '08121145678', NULL, '2023-06-15 22:45:49', '2023-06-19 03:00:44'),
(2, '2', 'Vannisa', 'Jl. Badak', 'Vannisa10@gmail.com', 'Jl. Melati', 'PT. Maju Bersama', '0813569909', NULL, '2023-06-15 22:45:49', '2023-06-19 03:00:59'),
(3, '3', 'Elvina', 'Jln. Mawar', 'elvina08@gmail.com', 'Jln. Gajah mada', 'PT. Karya Indah', '0819890678', NULL, '2023-06-19 03:01:48', '2023-06-19 03:01:48'),
(4, '4', 'Khansa', 'Jln. Melati', 'khansa77@gmail.com', 'Jln. Soekarno hatta', 'PT. Abadi selamanya', '08167787999', NULL, '2023-06-19 03:02:39', '2023-06-19 03:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaans`
--

CREATE TABLE `perusahaans` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_telp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perusahaans`
--

INSERT INTO `perusahaans` (`id`, `nama`, `alamat`, `no_telp`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Blue Code', 'Semarang', '0812345678', 'bluecode.com', '2023-06-15 22:45:49', '2023-06-16 06:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `produks`
--

CREATE TABLE `produks` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kosong_p` int(11) DEFAULT NULL,
  `harga_kosong_p` int(11) NOT NULL DEFAULT 0,
  `kosong_r` int(11) DEFAULT NULL,
  `harga_kosong_r` int(11) NOT NULL DEFAULT 0,
  `kosong_k` int(11) DEFAULT NULL,
  `isi` int(11) DEFAULT NULL,
  `harga_isi` int(11) NOT NULL DEFAULT 0,
  `warna` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produks`
--

INSERT INTO `produks` (`id`, `kode`, `nama`, `kosong_p`, `harga_kosong_p`, `kosong_r`, `harga_kosong_r`, `kosong_k`, `isi`, `harga_isi`, `warna`, `created_at`, `updated_at`) VALUES
(1, 'A1', 'Gas Elpiji 3 KG', NULL, 0, NULL, 0, NULL, NULL, 0, '#22e235', '2023-06-15 22:45:49', '2023-06-19 02:56:28'),
(2, 'A2', 'Gas Elpiji 12 kg', NULL, 0, NULL, 0, NULL, NULL, 0, '#7ce2d8', '2023-06-15 22:45:49', '2023-06-19 02:56:45'),
(3, 'A3', 'Gas Elpiji 20 KG', NULL, 0, NULL, 0, NULL, NULL, 0, '#4c70e2', '2023-06-15 22:45:49', '2023-06-19 02:56:57'),
(4, 'A4', 'Refill gas portable', NULL, 0, NULL, 0, NULL, NULL, 0, '#19598a', '2023-06-16 05:57:00', '2023-06-19 02:57:51');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `kode`, `nama`, `kontak`, `created_at`, `updated_at`) VALUES
(1, '1', 'Hartono', '0812568909', '2023-06-15 22:45:48', '2023-06-19 02:55:32'),
(2, '2', 'yadi', '08146877989', '2023-06-15 22:45:48', '2023-06-19 02:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_gas`
--

CREATE TABLE `transaksi_gas` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_rute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobil` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asal_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uang_jalan` decimal(15,2) DEFAULT NULL,
  `akun_masuk` int(10) UNSIGNED NOT NULL,
  `akun_keluar` int(10) UNSIGNED NOT NULL,
  `no_kas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_gas`
--

INSERT INTO `transaksi_gas` (`id`, `no_rute`, `mobil`, `status_barang`, `jenis_order`, `asal_barang`, `tujuan_barang`, `driver`, `uang_jalan`, `akun_masuk`, `akun_keluar`, `no_kas`, `created_at`, `updated_at`) VALUES
(1, '1/RT/06/23', 'H 1234 KF', 'keluar', 'retail', 'gudang 1', 'Mala', 'budi', 20.00, 1, 1, '3/KS/06/23', '2023-06-16 06:06:16', '2023-06-19 03:14:20'),
(2, '2/RT/06/23', 'H 3356 HI', 'keluar', 'online', 'gudang 1', 'Vannisa', 'budi', 20.00, 1, 1, '4/KS/06/23', '2023-06-16 06:06:56', '2023-06-19 03:14:13'),
(3, '3/RT/06/23', 'H 3356 HI', 'keluar', 'retail', 'gudang 2', 'Elvina', 'Santo', 20.00, 6, 3, '5/KS/06/23', '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(4, '4/RT/06/23', 'H 1234 KF', 'keluar', 'retail', 'gudang 2', 'Khansa', 'Santo', 20.00, 7, 3, '6/KS/06/23', '2023-06-19 03:15:04', '2023-06-19 03:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_jurnals`
--

CREATE TABLE `transaksi_jurnals` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_jurnal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_akun` int(11) NOT NULL,
  `jenis_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_nilai` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_jurnals`
--

INSERT INTO `transaksi_jurnals` (`id`, `no_jurnal`, `no_trans`, `jumlah_akun`, `jenis_trans`, `deskripsi`, `total_nilai`, `created_at`, `updated_at`) VALUES
(1, '1/JR/06/23', '1/KS/06/23', 2, 'kas_masuk', 'modal pak budi', 10000.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(2, '2/JR/06/23', '2/KS/06/23', 2, 'kas_keluar', 'biaya jajan', 10000.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(3, '3/JR/06/23', '3/KS/06/23', 2, 'kas_masuk', NULL, 3.00, '2023-06-16 06:06:16', '2023-06-16 06:06:16'),
(4, '4/JR/06/23', '4/KS/06/23', 2, 'kas_keluar', NULL, 2.00, '2023-06-16 06:06:56', '2023-06-16 06:06:56'),
(5, '5/JR/06/23', '1/JRM/06/23', 2, 'jurnal_manual', 'Penjualan Gas', 150.00, '2023-06-16 06:07:48', '2023-06-16 06:07:48'),
(6, '6/JR/06/23', '2/JRM/06/23', 2, 'jurnal_manual', 'Penjualan Gas 15kg', 200.00, '2023-06-16 06:08:14', '2023-06-16 06:08:14'),
(7, '7/JR/06/23', '5/KS/06/23', 2, 'kas_keluar', NULL, 20.00, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(8, '8/JR/06/23', '6/KS/06/23', 2, 'kas_keluar', NULL, 20.00, '2023-06-19 03:15:04', '2023-06-19 03:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kartu_kredits`
--

CREATE TABLE `transaksi_kartu_kredits` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kartu_kredit` int(10) UNSIGNED NOT NULL,
  `akun` int(10) UNSIGNED NOT NULL,
  `masuk` int(11) NOT NULL DEFAULT 0,
  `keluar` int(11) NOT NULL DEFAULT 0,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kas`
--

CREATE TABLE `transaksi_kas` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akun_masuk` int(10) UNSIGNED NOT NULL,
  `akun_keluar` int(10) UNSIGNED NOT NULL,
  `deskripsi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masuk` double(8,2) NOT NULL DEFAULT 0.00,
  `keluar` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi_kas`
--

INSERT INTO `transaksi_kas` (`id`, `no_trans`, `akun_masuk`, `akun_keluar`, `deskripsi`, `masuk`, `keluar`, `created_at`, `updated_at`) VALUES
(1, '1/KS/06/23', 1, 10, 'modal pak budi', 10000.00, 0.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(2, '2/KS/06/23', 11, 1, 'biaya jajan', 0.00, 10000.00, '2023-06-15 22:45:49', '2023-06-15 22:45:49'),
(3, '3/KS/06/23', 1, 1, NULL, 3.00, 0.00, '2023-06-16 06:06:16', '2023-06-16 06:06:16'),
(4, '4/KS/06/23', 1, 1, NULL, 0.00, 2.00, '2023-06-16 06:06:56', '2023-06-16 06:06:56'),
(5, '5/KS/06/23', 6, 3, NULL, 0.00, 20.00, '2023-06-19 03:13:46', '2023-06-19 03:13:46'),
(6, '6/KS/06/23', 7, 3, NULL, 0.00, 20.00, '2023-06-19 03:15:04', '2023-06-19 03:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_lains`
--

CREATE TABLE `transaksi_lains` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_trans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rute` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akun_debit` int(10) UNSIGNED NOT NULL,
  `akun_kredit` int(10) UNSIGNED NOT NULL,
  `jumlah` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `konfirmasi_admin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `konfirmasi_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$EfOZ5d2Jufgm/ImJgWPQCeW7h6.Lpg8Kf7zzd3NXN9qcnexgcfZgy', '1', 'Dc0VL5C7TRwmVjECWaiw8VYm2crAj6AVboQGlWXiEtf7DwF5xyrSFKtNAHiv', '2023-06-15 22:45:48', '2023-06-15 22:45:48'),
(2, 'member', 'member@gmail.com', '$2y$10$RKg4ljJtSQfigIFyNCmX3O3i/zv7ibhxI3/sJJx5Jb7BmVnI5TexW', '1', NULL, '2023-06-15 22:45:48', '2023-06-15 22:45:48'),
(3, 'member baru', 'memberbaru@gmail.com', '$2y$10$r.b8P9IDQmIRMl/MLMu.BefoZUP6FdxVT4eWNtAB6cNVQM0dXCBAO', '1', NULL, '2023-06-15 22:45:48', '2023-06-19 02:48:13'),
(4, 'coba', 'coba@gmail.com', '$2y$10$njPn3tgI2O9qWYopqi6NcOsSOj6DIm/7GRXo.nPpTO9PehZF5Q/Su', '1', NULL, '2023-06-16 02:57:02', '2023-06-16 02:57:02'),
(5, 'kakakaakaka', 'rahasia@gmail.com', '$2y$10$86ztu5Kcb1VJ7Ok0tqdLj./RhSyUlyp2eObd4C5.zhJ3icFyHQhuS', '0', 'oJ0V6GmjSYCvFpj1rGFeZLTBrfo7KwWy6qxdASqBApk0SYoQiulAtr1loWim', '2023-06-19 03:18:16', '2023-06-19 03:18:16'),
(6, 'cipunk', 'cipunkkuy@gmail.com', '$2y$10$.8tm00DXOSkcmAAw6Q1Pc.5x92MqiZaOubcIXPj2nb4R30jkXAA8W', '0', NULL, '2023-06-19 03:20:21', '2023-06-19 03:20:21'),
(7, 'elvina', 'elvina@gmail.com', '$2y$10$fiddnYH5eGk1TFNToc4cxOJwDpB8w2uTpINPB8oaQgOu86VhRC7fW', '0', NULL, '2023-06-19 03:20:22', '2023-06-19 03:20:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akuns`
--
ALTER TABLE `akuns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `akuns_kode_unique` (`kode`),
  ADD UNIQUE KEY `akuns_nama_unique` (`nama`);

--
-- Indexes for table `detail_transaksi_gas_keluars`
--
ALTER TABLE `detail_transaksi_gas_keluars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_transaksi_gas_keluars_produk_id_foreign` (`produk_id`),
  ADD KEY `detail_transaksi_gas_keluars_transaksi_gas_id_foreign` (`transaksi_gas_id`);

--
-- Indexes for table `detail_transaksi_gas_masuks`
--
ALTER TABLE `detail_transaksi_gas_masuks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_transaksi_gas_masuks_produk_id_foreign` (`produk_id`),
  ADD KEY `detail_transaksi_gas_masuks_transaksi_gas_id_foreign` (`transaksi_gas_id`);

--
-- Indexes for table `detail_transaksi_jurnals`
--
ALTER TABLE `detail_transaksi_jurnals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drivers_kode_unique` (`kode`),
  ADD UNIQUE KEY `drivers_nama_unique` (`nama`);

--
-- Indexes for table `gudangs`
--
ALTER TABLE `gudangs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gudangs_kode_unique` (`kode`),
  ADD UNIQUE KEY `gudangs_nama_unique` (`nama`);

--
-- Indexes for table `jurnal_manuals`
--
ALTER TABLE `jurnal_manuals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurnal_manuals_no_trans_unique` (`no_trans`),
  ADD KEY `jurnal_manuals_akun_debit_foreign` (`akun_debit`),
  ADD KEY `jurnal_manuals_akun_kredit_foreign` (`akun_kredit`);

--
-- Indexes for table `kartu_kredits`
--
ALTER TABLE `kartu_kredits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kartu_kredits_akun_foreign` (`akun`);

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kas_kode_unique` (`kode`),
  ADD UNIQUE KEY `kas_nama_unique` (`nama`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobils`
--
ALTER TABLE `mobils`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobils_kode_unique` (`kode`),
  ADD UNIQUE KEY `mobils_plat_unique` (`plat`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pelanggans_kode_unique` (`kode`),
  ADD UNIQUE KEY `pelanggans_nama_unique` (`nama`),
  ADD UNIQUE KEY `pelanggans_kontak_unique` (`kontak`);

--
-- Indexes for table `perusahaans`
--
ALTER TABLE `perusahaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produks`
--
ALTER TABLE `produks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produks_kode_unique` (`kode`),
  ADD UNIQUE KEY `produks_nama_unique` (`nama`),
  ADD UNIQUE KEY `produks_warna_unique` (`warna`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_kode_unique` (`kode`),
  ADD UNIQUE KEY `suppliers_kontak_unique` (`kontak`);

--
-- Indexes for table `transaksi_gas`
--
ALTER TABLE `transaksi_gas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksi_gas_no_rute_unique` (`no_rute`),
  ADD KEY `transaksi_gas_akun_masuk_foreign` (`akun_masuk`),
  ADD KEY `transaksi_gas_akun_keluar_foreign` (`akun_keluar`),
  ADD KEY `transaksi_gas_no_kas_foreign` (`no_kas`);

--
-- Indexes for table `transaksi_jurnals`
--
ALTER TABLE `transaksi_jurnals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksi_jurnals_no_jurnal_unique` (`no_jurnal`);

--
-- Indexes for table `transaksi_kartu_kredits`
--
ALTER TABLE `transaksi_kartu_kredits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_kartu_kredits_kartu_kredit_foreign` (`kartu_kredit`),
  ADD KEY `transaksi_kartu_kredits_akun_foreign` (`akun`);

--
-- Indexes for table `transaksi_kas`
--
ALTER TABLE `transaksi_kas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksi_kas_no_trans_unique` (`no_trans`);

--
-- Indexes for table `transaksi_lains`
--
ALTER TABLE `transaksi_lains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaksi_lains_no_trans_unique` (`no_trans`),
  ADD UNIQUE KEY `transaksi_lains_no_rute_unique` (`no_rute`),
  ADD KEY `transaksi_lains_akun_debit_foreign` (`akun_debit`),
  ADD KEY `transaksi_lains_akun_kredit_foreign` (`akun_kredit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akuns`
--
ALTER TABLE `akuns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `detail_transaksi_gas_keluars`
--
ALTER TABLE `detail_transaksi_gas_keluars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `detail_transaksi_gas_masuks`
--
ALTER TABLE `detail_transaksi_gas_masuks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_transaksi_jurnals`
--
ALTER TABLE `detail_transaksi_jurnals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gudangs`
--
ALTER TABLE `gudangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jurnal_manuals`
--
ALTER TABLE `jurnal_manuals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kartu_kredits`
--
ALTER TABLE `kartu_kredits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `mobils`
--
ALTER TABLE `mobils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perusahaans`
--
ALTER TABLE `perusahaans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produks`
--
ALTER TABLE `produks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi_gas`
--
ALTER TABLE `transaksi_gas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi_jurnals`
--
ALTER TABLE `transaksi_jurnals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi_kartu_kredits`
--
ALTER TABLE `transaksi_kartu_kredits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi_kas`
--
ALTER TABLE `transaksi_kas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi_lains`
--
ALTER TABLE `transaksi_lains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_transaksi_gas_keluars`
--
ALTER TABLE `detail_transaksi_gas_keluars`
  ADD CONSTRAINT `detail_transaksi_gas_keluars_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`),
  ADD CONSTRAINT `detail_transaksi_gas_keluars_transaksi_gas_id_foreign` FOREIGN KEY (`transaksi_gas_id`) REFERENCES `transaksi_gas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_transaksi_gas_masuks`
--
ALTER TABLE `detail_transaksi_gas_masuks`
  ADD CONSTRAINT `detail_transaksi_gas_masuks_produk_id_foreign` FOREIGN KEY (`produk_id`) REFERENCES `produks` (`id`),
  ADD CONSTRAINT `detail_transaksi_gas_masuks_transaksi_gas_id_foreign` FOREIGN KEY (`transaksi_gas_id`) REFERENCES `transaksi_gas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jurnal_manuals`
--
ALTER TABLE `jurnal_manuals`
  ADD CONSTRAINT `jurnal_manuals_akun_debit_foreign` FOREIGN KEY (`akun_debit`) REFERENCES `akuns` (`id`),
  ADD CONSTRAINT `jurnal_manuals_akun_kredit_foreign` FOREIGN KEY (`akun_kredit`) REFERENCES `akuns` (`id`);

--
-- Constraints for table `kartu_kredits`
--
ALTER TABLE `kartu_kredits`
  ADD CONSTRAINT `kartu_kredits_akun_foreign` FOREIGN KEY (`akun`) REFERENCES `akuns` (`id`);

--
-- Constraints for table `transaksi_gas`
--
ALTER TABLE `transaksi_gas`
  ADD CONSTRAINT `transaksi_gas_akun_keluar_foreign` FOREIGN KEY (`akun_keluar`) REFERENCES `akuns` (`id`),
  ADD CONSTRAINT `transaksi_gas_akun_masuk_foreign` FOREIGN KEY (`akun_masuk`) REFERENCES `akuns` (`id`),
  ADD CONSTRAINT `transaksi_gas_no_kas_foreign` FOREIGN KEY (`no_kas`) REFERENCES `transaksi_kas` (`no_trans`);

--
-- Constraints for table `transaksi_kartu_kredits`
--
ALTER TABLE `transaksi_kartu_kredits`
  ADD CONSTRAINT `transaksi_kartu_kredits_akun_foreign` FOREIGN KEY (`akun`) REFERENCES `akuns` (`id`),
  ADD CONSTRAINT `transaksi_kartu_kredits_kartu_kredit_foreign` FOREIGN KEY (`kartu_kredit`) REFERENCES `akuns` (`id`);

--
-- Constraints for table `transaksi_lains`
--
ALTER TABLE `transaksi_lains`
  ADD CONSTRAINT `transaksi_lains_akun_debit_foreign` FOREIGN KEY (`akun_debit`) REFERENCES `akuns` (`id`),
  ADD CONSTRAINT `transaksi_lains_akun_kredit_foreign` FOREIGN KEY (`akun_kredit`) REFERENCES `akuns` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
