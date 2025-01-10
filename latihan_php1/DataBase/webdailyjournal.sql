-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Waktu pembuatan: 10 Jan 2025 pada 14.34
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdailyjournal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(7, 'SE ATAP', 'Kisah kita dimulai dengan sebuah kebetulan, ketika takdir mempertemukan kita dalam satu atap kos. Dari hari-hari pertama, kita selalu bersama, bertiga, menjalani berbagai momen yang penuh tawa dan cerita. awal mulanya pergi untuk mencari makan bersama. Seiring waktu, ikatan yang terjalin di antara kita semakin kuat, melampaui sekadar teman kos. Setiap hari kita selalu melakukan kegiatan di kos bersama, entah itu makan, cuci piring, cuci baju. Kedekatan kita bertiga semakin erat sampai semua hal yang terjadi di ceritakan, mulai dari percintaan dan cerita random lainnya, kita juga sering melakukan hal hal aneh di luar nalar yang sering membuat kita tertawa.\r\n\r\nKini, hubungan kita telah mencapai tingkat yang lebih dalam, kita bukan hanya sekadar teman yang berbagi ruang, tetapi sahabat sejati yang saling mendukung dan memahami. Setiap kenangan yang kita ciptakan bersama di kos ini menjadi bagian tak terpisahkan dari perjalanan hidup kita. Kita telah menapaki jalan ini bersama, dan setiap langkah membawa kita lebih', '20250109154249.jpg', '2025-01-09 15:42:49', 'admin'),
(8, 'ANTAR TEMAN ATAU SAUDARA SAAT SMP', 'Pertemanan kita sebenarnya ketidaksengajaan ya best, seperti hal lumrah biasanya dari teman ke teman menjadi berteman sampai sekarang kurang lebih sudah berlangsung selama 6 tahun.\r\n\r\nAwal kita kenal dari bangku SMP kelas 8, tapi setelah SMA kita berpisah tetapi tak memungkiri bahwa pertemanan kita masih erat dikarenakan komunikasi yang sehat sampai sekarang.', '20250109155355.jpg', '2025-01-09 16:03:43', 'admin'),
(9, 'TEMAN KELAS', 'Kita satu kelas dari SMP kelas 10-11, tapi tidak terlalu akrab karena pandemi COVID-19. Baru di kelas 12, setelah study tour ke Bali, kita menjadi sangat akrab. Kita sering bekerja kelompok, jajan di kantin, dan jarang pulang sekolah lebih awal. Kita lebih suka nongkrong di kelas sampai Maghrib.\r\n\r\nPertemanan kita sangat seru! Kita tidak hanya akrab di sekolah, tapi juga sering main ke rumah Lia atau main keluar, jajan bareng, dan lain-lain. Sayangnya, pertemanan kita baru terjalin di kelas 12.\r\n\r\nEitsss, tapi tunggu dulu... Kita tuh definisi bestie receh tapi solid, pertemanan 24/7 tanpa cooldown. Ibarat kayak server discord penuh shitpost, tapi pas salah satu dari kita butuh, auto jadi admin yang siap bantu. Ketawa ngakak bareng, ngelawak random, nangis bareng. Kayanya opsi terakhir ngga pernah dilakuin (terlalu absurd), tapi hatinya selalu ada buat kita semua.\r\n\r\nHidup kita isinya roasting, debat receh nggak penting, sama jokes yang terkadang cuma mereka yang ngerti. Tapi pas ada drama hidup, vibes-nya langsung berubah jadi support system no cap. Pokoknya, kita itu kombinasi receh, loyal, sama care yang bikin lo mikir, “Gila sih, gue bersyukur punya mereka.”', '20250110014513.jpg', '2025-01-10 01:45:13', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `gambar` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `gambar`, `tanggal`, `username`) VALUES
(52, '20250110141348.jpg', '2025-01-10 14:13:48', 'admin'),
(53, '20250110141327.jpg', '2025-01-10 14:13:27', 'admin'),
(54, '20250110141422.jpg', '2025-01-10 14:14:22', 'admin'),
(55, '20250110141406.jpg', '2025-01-10 14:14:06', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(2, 'rosekhati', '25d55ad283aa400af464c76d713c07ad', '20250110135816.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
