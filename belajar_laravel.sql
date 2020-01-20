-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2020 at 11:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `hadiah_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(15, '1575679925_IMG_20191113_142538.jpg', 'haha', '2019-12-06 16:52:05', '2019-12-06 16:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `umur`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Fitria Gilda Hastuti S.Pd', 40, NULL, '2019-11-21 23:21:40', NULL),
(3, 'Ana Mayasari S.Gz', 34, NULL, '2019-11-20 04:07:02', NULL),
(4, 'Cemeti Gunarto', 33, NULL, '2019-11-20 04:07:02', NULL),
(5, 'Gangsa Samosir', 41, NULL, '2019-11-20 04:07:02', NULL),
(6, 'Salwa Wastuti', 44, NULL, '2019-11-20 04:07:02', NULL),
(7, 'Cici Oliva Puspita', 37, NULL, '2019-11-20 04:07:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_karyawan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama_karyawan`, `alamat_karyawan`, `created_at`, `updated_at`) VALUES
(504, 'Warsita Eko Wasit', 'Ki. K.H. Maskur No. 402, Payakumbuh 12575, Maluku', NULL, '2020-01-01 04:54:49'),
(505, 'Safina Padmi Rahayu', 'Ki. Pasteur No. 636, Pekalongan 58306, Aceh', NULL, NULL),
(506, 'Padma Palastri', 'Psr. Haji No. 547, Sawahlunto 22159, KalTeng', NULL, NULL),
(507, 'Banara Ardianto', 'Psr. Jamika No. 626, Sawahlunto 72437, BaBel', NULL, NULL),
(508, 'Limar Thamrin', 'Ki. Baladewa No. 20, Lhokseumawe 16042, Maluku', NULL, NULL),
(509, 'Uli Gina Suartini', 'Kpg. Bambon No. 294, Tasikmalaya 83587, KalBar', NULL, NULL),
(510, 'Paris Wulandari M.Kom.', 'Ds. Abang No. 701, Sibolga 38664, DIY', NULL, NULL),
(511, 'Adul', 'Cempaka', '2019-11-18 06:33:30', '2019-11-18 06:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_10_105942_create_karyawans_table', 2),
(5, '2019_12_01_072231_create_gambars_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(342, 'Prabawa Maheswara', 'autem', 33, 'Ds. Warga No. 633, Tanjungbalai 56658, SulSel'),
(343, 'Darmana Okto Gunawan', 'sint', 33, 'Jln. Baja No. 686, Malang 13210, Banten'),
(344, 'Icha Anastasia Usada', 'aspernatur', 26, 'Jr. Nakula No. 710, Pekanbaru 33317, SumBar'),
(345, 'Balangga Jagapati Tampubolon', 'quia', 30, 'Jr. Basudewo No. 218, Salatiga 64516, Papua'),
(346, 'Kani Wastuti', 'provident', 33, 'Ds. Peta No. 6, Surakarta 94582, SumUt'),
(347, 'Lana', 'pns', 22, 'majakeling\r\ncendana'),
(348, 'Lana', 'pns', 4, 'majakeling\r\ncendana'),
(349, 'Hidayat', 'programmer', 4, 'majakeling\r\ncendana'),
(350, 'Lana', 'pns', 1, 'majakeling\r\ncendana'),
(351, 'DDESAS', 'SF', -6, 'SFSF');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `nis`, `alamat`, `created_at`, `updated_at`) VALUES
(144, 'tes', 32232, 'cengkareng', '2020-01-16 01:18:47', '2020-01-16 01:18:47'),
(145, 'sss', 232323, 'jakarta', '2020-01-16 01:18:47', '2020-01-16 01:18:47'),
(146, 'ssss', 22323, 'bandung', '2020-01-16 01:18:47', '2020-01-16 01:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lana', 'Lana@alamghaib.com', NULL, '$2y$10$pZ0HLuJZeVQu/VK5UItbse8bsc6x3NhmHgOtoT412D.2qgbV3N5BG', NULL, '2019-11-24 02:14:26', '2019-11-24 02:14:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
