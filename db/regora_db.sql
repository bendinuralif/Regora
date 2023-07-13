-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jul 2023 pada 15.18
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` char(50) NOT NULL,
  `slug_album` char(50) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `slug_album`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Lapangan Futsal', 'lapangan-futsal', 'lapangan-futsal20230608224443.jpg', 'amperakoding', '2018-04-11 06:14:08', 'superadmin', '2023-06-08 22:44:43'),
(2, 'Kolam Renang', 'kolam-renang', 'kolam-renang20230608225347.jpg', 'amperakoding', '2018-04-11 06:20:52', 'superadmin', '2023-06-08 22:53:47'),
(3, 'Coba Lagi', 'coba-lagi', 'coba-lagi20180414141800.jpg', 'amperakoding', '2018-04-11 06:23:01', 'Bendi', '2023-06-17 13:37:47'),
(4, 'Lagi coba', 'lagi-coba', 'lagi-coba20180414141618.jpg', 'amperakoding', '2018-04-11 06:23:11', 'Rifkt', '2023-06-17 13:37:57'),
(5, 'Scenery', 'scenery', 'scenery20180414141646.jpg', 'amperakoding', '2018-04-14 19:16:46', 'Ganang', '2023-06-17 13:38:03'),
(6, 'Lake House', 'lake-house', 'lake-house20180414141705.jpg', 'amperakoding', '2018-04-14 19:17:05', 'Oci', '2023-06-17 13:38:10'),
(7, 'House', 'house', 'house20180414141719.jpg', 'amperakoding', '2018-04-14 19:17:19', 'Villa', '2023-06-17 13:38:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `atas_nama` varchar(100) NOT NULL,
  `norek` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `atas_nama`, `norek`, `logo`) VALUES
(1, 'BNI', 'Rifky Ganteng', '12345678', 'bni.png'),
(2, 'BRI', 'Rifky Ganteng', '87873412323', 'bri.png'),
(3, 'Mandiri', 'Rifky Ganteng', '778734098', 'mandiri.png'),
(4, 'BCA', 'Rifky Ganteng', '998980342487', 'bca.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `company`
--

CREATE TABLE `company` (
  `id_company` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_desc` text NOT NULL,
  `company_address` text NOT NULL,
  `company_maps` text NOT NULL,
  `company_phone` char(30) NOT NULL,
  `company_phone2` char(30) NOT NULL,
  `company_fax` char(30) NOT NULL,
  `company_email` char(30) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `modified` datetime DEFAULT NULL,
  `created_by` char(50) NOT NULL,
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `company`
--

INSERT INTO `company` (`id_company`, `company_name`, `company_desc`, `company_address`, `company_maps`, `company_phone`, `company_phone2`, `company_fax`, `company_email`, `foto`, `foto_type`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'REGORA', 'REGORA didirikan pada tahun 2010 oleh sekelompok individu dengan minat dalam olahraga dan teknologi informasi. Perusahaan ini fokus pada pengembangan sistem aplikasi penyewaan tempat olahraga secara online. Setelah melakukan riset dan pengujian, REGORA meluncurkan platform aplikasi yang mudah digunakan.\nPerkembangan REGORA menarik minat banyak tempat olahraga terkemuka, membentuk kemitraan untuk meningkatkan pelayanan dan efisiensi operasional. Seiring waktu, REGORA terus berinovasi dalam industri aplikasi penyewaan tempat olahraga, memperluas jaringan mitra, dan meningkatkan fitur aplikasi.\nDengan dedikasi terhadap inovasi, REGORA telah menjadi pemain utama dalam industri ini, memberikan kemudahan akses dan efisiensi dalam menyewa tempat olahraga. Mereka terus berupaya memberikan pengalaman terbaik bagi pengguna dan mendorong pertumbuhan industri olahraga secara keseluruhan.', 'Jl. Maju Mundur Kec. Camat Kel. Lurahan, Kab. , Dunia Lain', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16327777.649419477!2d108.84621849858628!3d-2.415291213289622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2c4c07d7496404b7%3A0xe37b4de71badf485!2sIndonesia!5e0!3m2!1sen!2sid!4v1506312173230\" width=\"100%\" height=\"200\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '081241412', '0711412402', '12414', 'regora@gmail.com', 'company-profile20180414070824', '.PNG', '2017-11-09 06:45:34', NULL, 'amperakoding', 'amperakoding');

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon`
--

CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `diskon`
--

INSERT INTO `diskon` (`id`, `harga`) VALUES
(1, 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `event`
--

CREATE TABLE `event` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(100) NOT NULL,
  `slug_event` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `foto_type` char(10) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `event`
--

INSERT INTO `event` (`id_event`, `nama_event`, `slug_event`, `deskripsi`, `kategori`, `foto`, `foto_type`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
(9, 'AFC U-20 2023', 'afc-u-20-2023', '<p>AFC U-20 2023 sebentar lagi akan di selenggarakan tanggal 1 – 18 Maret. Kabar baik buat kamu para Sport Mania, yang sedang mencari tayangan olahraga. MNC Vision akan memberikan tayangan menarik sepanjang tahun 2023.</p>\r\n<p>Tahun 2023 akan menjadi tahun yang sangat sibuk bagi para pecinta olahraga. Berbagai event olahraga Asia akan diselenggarakan pada tahun tersebut. Dari event olahraga tingkat Sea Games hingga ke event olahraga tingkat dunia, semuanya akan digelar di tahun 2023.</p>\r\n<p>Beberapa event olahraga yang akan diselenggarakan pada tahun 2023 antara lain AFC U-20 2023, AFC U-17 2023, Sea Games 2023, dan Asian Games 2022. Keempat event olahraga ini sangat ditunggu oleh pecinta olahraga di seluruh dunia, dan menjadi ajang untuk menunjukkan kemampuan para atlet di ASEAN Maupun Asia.</p>\r\n<p>Yuk intip daftar Event Olahraga yang akan di selenggarakan tahun 2023!</p>\r\n<p>1. AFC U-20 2023</p>\r\n<p>AFC U-20 2023 adalah sebuah turnamen sepak bola internasional yang diadakan oleh Konfederasi Sepak Bola Asia (AFC) untuk kategori usia di bawah 20 tahun. Turnamen ini dijadwalkan akan diselenggarakan di Uzbekistan pada 1 – 18 Maret 2023 dan akan menjadi edisi ke-41 dari turnamen tersebut. Di turnamen ini, akan berpartisipasi 16 tim dari seluruh Asia yang akan bersaing untuk meraih gelar juara.</p>\r\n<p>Kejuaraan ini menjadi peluang bagi pelatih Shin Tae Yong untuk memperlihatkan keterampilan mereka dan mendapatkan pengalaman bermain dalam skala Asia. Selain itu, turnamen ini juga akan menjadi ajang untuk para pelatih untuk mengevaluasi talenta baru dan mencari pemain muda yang berpotensi untuk dipromosikan ke level tim nasional senior.</p>\r\n<p>2. AFC U-17 2023</p>\r\n<p>Piala Asia U-17 AFC 2023 akan menjadi edisi ke-19 dari Piala Asia U-17 AFC (termasuk edisi sebelumnya dari Kejuaraan AFC U-16 dan Kejuaraan AFC U-17), kejuaraan sepak bola remaja internasional dua tahunan yang diselenggarakan oleh Konfederasi Sepak Bola Asia (AFC) untuk tim nasional U-17 putra di Asia.</p>\r\n<p>Timnas Indonesia gagal lolos ke ajang ini karena dikalahkan Malaysia 1-5 di Stadion Pakansari, Bogor. Hasil itu membuat indonesia menjadi runner up grup B. Sebenarnya, Indonesia masih berkesempatan lols melalui jalur runner up tetapi Garuda Muda hanya menempati posisi ke-7 dari 1 tim runner up.</p>\r\n<p>Negera lolos Piala Asia AFC U-17 2023 antara lain, Jepang, Malaysia, Qatar, Arab Saudi, Yaman, Vietnam, Australia, Tajikistan, Iran, Uzbekistan, Korea Selatan, China, Afghanistan, India, Thailand.</p>\r\n<p>3. AFC Asian Cup</p>\r\n<p>Piala Asia AFC 2023 akan menjadi edisi ke-18 Piala Asia AFC, kejuaraan sepak bola pria internasional empat tahunan di Asia yang diselenggarakan oleh Konfederasi Sepak Bola Asia (AFC). Ini akan melibatkan 24 tim nasional setelah ekspansi pada 2019, dengan Qatar sebagai juara bertahan.</p>\r\n<p>Turnamen ini awalnya dijadwalkan diadakan di Tiongkok dari 16 Juni hingga 16 Juli 2023. Pada 14 Mei 2022, AFC mengumumkan bahwa Tiongkok tidak akan menjadi tuan rumah turnamen tersebut karena keadaan yang disebabkan oleh pandemi COVID-19 dan kebijakan Nol-COVID Tiongkok. .</p>\r\n<p>Pada 17 Oktober, AFC mengumumkan bahwa turnamen tersebut akan diadakan di Qatar. Qatar akan menjadi negara pertama yang menjadi tuan rumah tiga Piala Asia, setelah 1988 dan 2011.</p>\r\n<p>4. Sea Games 2023</p>\r\n<p>The 2023 Southeast Asian Games atau Sea Games akan menjadi Pesta Olahraga Asia Tenggara edisi ke-32, acara olahraga multi-olahraga dua tahunan yang akan diadakan dari 5 - 17 Mei 2023 di Phnom Penh, Kamboja.</p>\r\n<p>Pengumuman tersebut disampaikan pada pertemuan Dewan Federasi SEA Games di Singapura, bersamaan dengan Pesta Olahraga Asia Tenggara 2015, oleh Presiden Komite Olimpiade Nasional Kamboja, Thong Khon. Filipina awalnya dijadwalkan menjadi tuan rumah Olimpiade, tetapi diundur hingga 2019 setelah Brunei mencabut hak tuan rumah aslinya.</p>\r\n<p>Ini akan menjadi pertama kalinya Kamboja menjadi tuan rumah pertandingan tersebut, karena Pertandingan Semenanjung Asia Tenggara (SEAP) ke-3 pada tahun 1963 dibatalkan karena situasi politik di negara tersebut saat itu.</p>\r\n<p>5. Asian Games 2022</p>\r\n<p>Asian Games 2022 akan menjadi acara multi-olahraga yang dirayakan di Hangzhou, Zhejiang, Tiongkok. Hangzhou akan menjadi kota China ketiga yang menjadi tuan rumah Asian Games, setelah Beijing pada 1990 dan Guangzhou pada 2010. 45 negara akan ikut dalam kejuaraan ini.</p>\r\n<p>Olimpiade awalnya dijadwalkan berlangsung dari 10 hingga 25 September 2022, tetapi acara tersebut ditunda karena pandemi COVID-19 pada 6 Mei karena kekhawatiran bepergian ke daratan Tiongkok, di tengah potensi ancaman varian COVID-19. Pada 19 Juli 2022, tanggal baru diumumkan dari 23 September hingga 8 Oktober 2023.</p>\r\n<p>Jangan lewatkan Event – Event olahraga yang bisa kamu saksikan dari rumah lewat MNC Vision.</p>\r\n<p>Yuk berlangganan! Segera aktifkan Paket Sports Mania mulai dari Rp 69.000/30 hari. Berlangganan bisa klik disini, atau mau melihat Jadwal Programnya bisa juga klik disini.</p>\r\n<p>Kamu bisa nonton Kapan Pun Di Mana Pun melalui Vision+! Segera unduh aplikasi Vision+ di Google Play Store atau App Store di sini serta kunjungi www.visionplus.id Untuk informasi lebih lanjut mengenai Vision+, silakan mengikuti akun media sosial resmi Vision+ di @visionplusid (Facebook, Instagram, Twitter, TikTok).</p>\r\n<p>Masih mau pakai yang KW?</p>\r\n<p>Nonton channel-channel MNC Group yang ORI dengan Kualitas HD, MNC Vision jawabannya!</p>\r\n<p>Berlangganan Sekarang</p>\r\n<p>WhatsApp Interaktif 24 Jam: 08991500686</p>\r\n<p>(021) 21 500 900</p>', 1, 'afc-u-20-202320230706132844', '.jpeg', '2023-07-06 13:08:07', 'superadmin', '2023-07-06 13:28:44', 'superadmin'),
(14, 'Indonesia Masters 2023', 'indonesia-masters-2023', '<p>Indonesia Masters 2023 adalah event olahraga dunia yang digelar di Indonesia untuk membuka tahun 2023. Indonesia Masters 2023 adalah salah satu rangkaian gelaran tour BWF di bidang olahraga bulu tangkis. </p>\r\n<p>Turnamen Super 500 BWF ini digelar di Istora Senayan, Jakarta mulai tanggal 24 sampai dengan 29 Januari 2023. Gelaran ini baru saja selesai dihelat dan sudah melahirkan nama - nama juara baru. </p>\r\n<p>Hasilnya Indonesia meraih dua gelar juara Indonesia Masters di nomor ganda putra dan tunggal putra. Ganda putra dimenangkan oleh pasangan Leo Rolly Carnando/Daniel Marthin, di tunggal putra ada nama Jonatan Christie. </p>', 1, 'indonesia-masters-202320230706144825', '.jpeg', '2023-07-06 14:47:26', 'superadmin', '2023-07-06 14:48:48', 'superadmin'),
(15, 'World Superbike Indonesia', 'world-superbike-indonesia', '<p>Gelaran World Superbike Indonesia ini atau akrab dikenal dengan WSBK merupakan gelaran kedua dari total 12 race yang diagendakan WSBK dalam musim 2023 kali ini setelah sebelumnya berlangsung di Australia pada Februari 2023.</p>\r\n<p>Selain itu kejuaraan WSBK 2023 akan menjadi edisi ke-36 sejak pertama kali diadakan pada tahun 1988 silam. WSBK 2023 akan dilaksanakan di Mandalika International Street Circuit, Lombok pada 4 - 5 Maret 2023. </p>', 1, 'world-superbike-indonesia20230706145259', '.jpg', '2023-07-06 14:52:59', 'superadmin', NULL, ''),
(16, 'Turnamen Futsal Nasional di Solo, Jaring Bakat ke Timnas Indonesia', 'turnamen-futsal-nasional-di-solo-jaring-bakat-ke-timnas-indonesia', '<p><strong>SOLO, suaramerdeka-solo.com</strong> — Turnamen <a href=\"https://solo.suaramerdeka.com/tag/nasional\">nasional</a> futsal antarpelajar SMA bakal dihelat di <a href=\"https://solo.suaramerdeka.com/tag/gor-sritex-arena-solo\">GOR Sritex Arena Solo</a>, 8-11 Desember 2022.</p>\r\n<p>Sejumlah 20 tim SMA di Kota Bengawan akan bertarung dalam ajang yang memperebutkan hadiah total ratusan juta rupiah tersebut.</p>\r\n<p>Ajang bertajuk <a href=\"https://solo.suaramerdeka.com/tag/usee-sports-futsal-cup-2022\">Usee Sports Futsal Cup 2022</a> itu merupakan lanjutan gelaran serupa di 4 kota, yakni Bandung, Semarang, Jakarta dan Surabaya.</p>\r\n<p>Tim-tim juara pada ajang serupa sebelumnya, dikabarkan turut bersaing di Solo. Yakni juara Usee Sports Futsal Merdeka SMAN 3 Cibinong, juara Usee Sports Futsal Challenge Regional Surabaya Kategori SMA, SMAN 9 Surabaya dan pemenang kualifikasi zona Jawa Tengah-DIY.</p>\r\n<p>“Kami berkomunikasi dengan stakeholder klub profesional dan Timnas Indonesia terkait pemantauan bakat. Di Solo Raya, peminat futsal sangat tinggi. Prestasinya juga cukup bagus,” kata Manajer Usee Sports, Yohanes Indra kepada pers di Solo, Selasa (6/12/2022).Pihaknya menggandeng Futsalation sebagai penyelenggara. Turnamen itu menggunakan perangkat pertandingan berlisensi, serta lapangan yang baik. Dengan demikian, suasana laga tetap terjaga.</p>\r\n<p>Ketua Umum Asosiasi Futsal Kota Solo, Argya Satya menyambut positif kembali digelarnya turnamen berskala <a href=\"https://solo.suaramerdeka.com/tag/nasional\">nasional</a> itu di Solo.</p>\r\n<p>Menurutnya, tim-tim asal Solo Raya memiliki kemampuan cukup bagus. Dicontohkan, pada Porprov Jateng 2018, tim itu cukup mendominasi.</p>\r\n<p>Dedi Suherman, EGM Divisi TV Video Telkom Indonesia menuturkan, Telkom Indonesia dan Telkom Group senantiasa mendukung olahraga di Tanah Air.</p>', 2, 'turnamen-futsal-nasional-di-solo-jaring-bakat-ke-timnas-indonesia20230706145844', '.jpg', '2023-07-06 14:57:35', 'superadmin', '2023-07-06 14:58:44', 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `nama_foto` char(100) NOT NULL,
  `slug_foto` char(100) NOT NULL,
  `foto` text NOT NULL,
  `created_by` char(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(20) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`id_foto`, `album_id`, `nama_foto`, `slug_foto`, `foto`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(9, 2, 'ASczxcacasc', 'asczxcacasc', 'asczxcacasc20180414101613.png', 'amperakoding', '2018-04-14 15:16:13', 'amperakoding', '2021-05-17 19:58:17'),
(10, 1, 'Lapangan Futsal', 'lapangan-futsal', 'lapangan-futsal20230608224317.jpg', 'superadmin', '2023-06-08 22:43:17', '', NULL),
(11, 1, 'Lapangan Futsal', 'lapangan-futsal', 'lapangan-futsal20230608224333.jpg', 'superadmin', '2023-06-08 22:43:33', '', NULL),
(12, 1, 'Lapangan Futsal', 'lapangan-futsal', 'lapangan-futsal20230608224346.jpg', 'superadmin', '2023-06-08 22:43:46', '', NULL),
(13, 1, 'Lapangan Futsal', 'lapangan-futsal', 'lapangan-futsal20230608224603.jpg', 'superadmin', '2023-06-08 22:46:03', '', NULL),
(14, 2, 'Kolam Renang', 'kolam-renang', 'kolam-renang20230608225435.jpg', 'superadmin', '2023-06-08 22:54:35', '', NULL),
(15, 2, 'Kolam Renang', 'kolam-renang', 'kolam-renang20230608225452.jpg', 'superadmin', '2023-06-08 22:54:52', '', NULL),
(16, 2, 'Kolam Renang', 'kolam-renang', 'kolam-renang20230608225510.jpg', 'superadmin', '2023-06-08 22:55:10', '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam`
--

CREATE TABLE `jam` (
  `id` int(11) NOT NULL,
  `jam` varchar(50) NOT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jam`
--

INSERT INTO `jam` (`id`, `jam`, `is_available`) VALUES
(2, '07:00:00', 1),
(3, '08:00:00', 1),
(4, '09:00:00', 1),
(5, '10:00:00', 1),
(6, '11:00:00', 1),
(7, '12:00:00', 1),
(8, '13:00:00', 1),
(9, '14:00:00', 1),
(10, '15:00:00', 1),
(11, '16:00:00', 1),
(12, '17:00:00', 1),
(13, '18:00:00', 1),
(14, '19:00:00', 1),
(15, '20:00:00', 1),
(16, '21:00:00', 1),
(17, '22:00:00', 1),
(18, '23:00:00', 1),
(19, '24:00:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `slug_kat` varchar(20) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `slug_kat`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Turnamen', 'turnamen', 'amperakoding', '2018-07-23 08:38:39', 'amperakoding', '2021-05-17 19:58:57'),
(2, 'Kerja Sama', 'kerja-sama', 'amperakoding', '2018-07-23 08:38:39', 'amperakoding', '2021-05-17 19:58:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `nama_kontak` char(50) NOT NULL,
  `nohp` char(50) NOT NULL,
  `created_by` char(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `nama_kontak`, `nohp`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Admin 1', '6281228289766', 'regora', '2018-07-23 11:16:57', 'Bendi', '2023-07-06 08:25:53'),
(2, 'Admin 2', '6282184082336', 'regora', '2018-07-23 11:16:57', 'Bendi', '2023-07-06 08:26:18'),
(3, 'Admin 3', '62819481471', 'regora', '2018-07-23 11:20:44', 'Bendi', '2023-07-06 08:26:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `provinsi_id`, `nama_kota`) VALUES
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(12, 32, 'Agam'),
(13, 23, 'Alor'),
(14, 19, 'Ambon'),
(15, 34, 'Asahan'),
(16, 24, 'Asmat'),
(17, 1, 'Badung'),
(18, 13, 'Balangan'),
(19, 15, 'Balikpapan'),
(20, 21, 'Banda Aceh'),
(21, 18, 'Bandar Lampung'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(31, 11, 'Bangkalan'),
(32, 1, 'Bangli'),
(33, 13, 'Banjar'),
(34, 9, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(37, 10, 'Banjarnegara'),
(38, 28, 'Bantaeng'),
(39, 5, 'Bantul'),
(40, 33, 'Banyuasin'),
(41, 10, 'Banyumas'),
(42, 11, 'Banyuwangi'),
(43, 13, 'Barito Kuala'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(47, 28, 'Barru'),
(48, 17, 'Batam'),
(49, 10, 'Batang'),
(50, 8, 'Batang Hari'),
(51, 11, 'Batu'),
(52, 34, 'Batu Bara'),
(53, 30, 'Bau-Bau'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(58, 23, 'Belu'),
(59, 21, 'Bener Meriah'),
(60, 26, 'Bengkalis'),
(61, 12, 'Bengkayang'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(66, 15, 'Berau'),
(67, 24, 'Biak Numfor'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(70, 34, 'Binjai'),
(71, 17, 'Bintan'),
(72, 21, 'Bireuen'),
(73, 31, 'Bitung'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(76, 10, 'Blora'),
(77, 7, 'Boalemo'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(80, 11, 'Bojonegoro'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(85, 30, 'Bombana'),
(86, 11, 'Bondowoso'),
(87, 28, 'Bone'),
(88, 7, 'Bone Bolango'),
(89, 15, 'Bontang'),
(90, 24, 'Boven Digoel'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(93, 32, 'Bukittinggi'),
(94, 1, 'Buleleng'),
(95, 28, 'Bulukumba'),
(96, 16, 'Bulungan (Bulongan)'),
(97, 8, 'Bungo'),
(98, 29, 'Buol'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(105, 10, 'Cilacap'),
(106, 3, 'Cilegon'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(110, 34, 'Dairi'),
(111, 24, 'Deiyai (Deliyai)'),
(112, 34, 'Deli Serdang'),
(113, 10, 'Demak'),
(114, 1, 'Denpasar'),
(115, 9, 'Depok'),
(116, 32, 'Dharmasraya'),
(117, 24, 'Dogiyai'),
(118, 22, 'Dompu'),
(119, 29, 'Donggala'),
(120, 26, 'Dumai'),
(121, 33, 'Empat Lawang'),
(122, 23, 'Ende'),
(123, 28, 'Enrekang'),
(124, 25, 'Fakfak'),
(125, 23, 'Flores Timur'),
(126, 9, 'Garut'),
(127, 21, 'Gayo Lues'),
(128, 1, 'Gianyar'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(132, 28, 'Gowa'),
(133, 11, 'Gresik'),
(134, 10, 'Grobogan'),
(135, 5, 'Gunung Kidul'),
(136, 14, 'Gunung Mas'),
(137, 34, 'Gunungsitoli'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(146, 34, 'Humbang Hasundutan'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(149, 9, 'Indramayu'),
(150, 24, 'Intan Jaya'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(156, 8, 'Jambi'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(160, 11, 'Jember'),
(161, 1, 'Jembrana'),
(162, 28, 'Jeneponto'),
(163, 10, 'Jepara'),
(164, 11, 'Jombang'),
(165, 25, 'Kaimana'),
(166, 26, 'Kampar'),
(167, 14, 'Kapuas'),
(168, 12, 'Kapuas Hulu'),
(169, 10, 'Karanganyar'),
(170, 1, 'Karangasem'),
(171, 9, 'Karawang'),
(172, 17, 'Karimun'),
(173, 34, 'Karo'),
(174, 14, 'Katingan'),
(175, 4, 'Kaur'),
(176, 12, 'Kayong Utara'),
(177, 10, 'Kebumen'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(180, 24, 'Keerom'),
(181, 10, 'Kendal'),
(182, 30, 'Kendari'),
(183, 4, 'Kepahiang'),
(184, 17, 'Kepulauan Anambas'),
(185, 19, 'Kepulauan Aru'),
(186, 32, 'Kepulauan Mentawai'),
(187, 26, 'Kepulauan Meranti'),
(188, 31, 'Kepulauan Sangihe'),
(189, 6, 'Kepulauan Seribu'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(191, 20, 'Kepulauan Sula'),
(192, 31, 'Kepulauan Talaud'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(194, 8, 'Kerinci'),
(195, 12, 'Ketapang'),
(196, 10, 'Klaten'),
(197, 1, 'Klungkung'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(203, 13, 'Kotabaru'),
(204, 31, 'Kotamobagu'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(207, 26, 'Kuantan Singingi'),
(208, 12, 'Kubu Raya'),
(209, 10, 'Kudus'),
(210, 5, 'Kulon Progo'),
(211, 9, 'Kuningan'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(220, 33, 'Lahat'),
(221, 14, 'Lamandau'),
(222, 11, 'Lamongan'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(228, 12, 'Landak'),
(229, 34, 'Langkat'),
(230, 21, 'Langsa'),
(231, 24, 'Lanny Jaya'),
(232, 3, 'Lebak'),
(233, 4, 'Lebong'),
(234, 23, 'Lembata'),
(235, 21, 'Lhokseumawe'),
(236, 32, 'Lima Puluh Koto/Kota'),
(237, 17, 'Lingga'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(242, 33, 'Lubuk Linggau'),
(243, 11, 'Lumajang'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(251, 11, 'Magetan'),
(252, 9, 'Majalengka'),
(253, 27, 'Majene'),
(254, 28, 'Makassar'),
(255, 11, 'Malang'),
(256, 11, 'Malang'),
(257, 16, 'Malinau'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(262, 27, 'Mamasa'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(267, 31, 'Manado'),
(268, 34, 'Mandailing Natal'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(274, 24, 'Mappi'),
(275, 28, 'Maros'),
(276, 22, 'Mataram'),
(277, 25, 'Maybrat'),
(278, 34, 'Medan'),
(279, 12, 'Melawi'),
(280, 8, 'Merangin'),
(281, 24, 'Merauke'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(284, 24, 'Mimika'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(291, 29, 'Morowali'),
(292, 33, 'Muara Enim'),
(293, 8, 'Muaro Jambi'),
(294, 4, 'Muko Muko'),
(295, 30, 'Muna'),
(296, 14, 'Murung Raya'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(299, 24, 'Nabire'),
(300, 21, 'Nagan Raya'),
(301, 23, 'Nagekeo'),
(302, 17, 'Natuna'),
(303, 24, 'Nduga'),
(304, 23, 'Ngada'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(311, 16, 'Nunukan'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(317, 11, 'Pacitan'),
(318, 32, 'Padang'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(323, 34, 'Padang Sidempuan'),
(324, 33, 'Pagar Alam'),
(325, 34, 'Pakpak Bharat'),
(326, 14, 'Palangka Raya'),
(327, 33, 'Palembang'),
(328, 28, 'Palopo'),
(329, 29, 'Palu'),
(330, 11, 'Pamekasan'),
(331, 3, 'Pandeglang'),
(332, 9, 'Pangandaran'),
(333, 28, 'Pangkajene Kepulauan'),
(334, 2, 'Pangkal Pinang'),
(335, 24, 'Paniai'),
(336, 28, 'Parepare'),
(337, 32, 'Pariaman'),
(338, 29, 'Parigi Moutong'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(341, 15, 'Paser'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(344, 10, 'Pati'),
(345, 32, 'Payakumbuh'),
(346, 25, 'Pegunungan Arfak'),
(347, 24, 'Pegunungan Bintang'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(352, 10, 'Pemalang'),
(353, 34, 'Pematang Siantar'),
(354, 15, 'Penajam Paser Utara'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(357, 32, 'Pesisir Selatan'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(360, 28, 'Pinrang'),
(361, 7, 'Pohuwato'),
(362, 27, 'Polewali Mandar'),
(363, 11, 'Ponorogo'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(366, 29, 'Poso'),
(367, 33, 'Prabumulih'),
(368, 18, 'Pringsewu'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(371, 14, 'Pulang Pisau'),
(372, 20, 'Pulau Morotai'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(375, 10, 'Purbalingga'),
(376, 9, 'Purwakarta'),
(377, 10, 'Purworejo'),
(378, 25, 'Raja Ampat'),
(379, 4, 'Rejang Lebong'),
(380, 10, 'Rembang'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(383, 23, 'Rote Ndao'),
(384, 21, 'Sabang'),
(385, 23, 'Sabu Raijua'),
(386, 10, 'Salatiga'),
(387, 15, 'Samarinda'),
(388, 12, 'Sambas'),
(389, 34, 'Samosir'),
(390, 11, 'Sampang'),
(391, 12, 'Sanggau'),
(392, 24, 'Sarmi'),
(393, 8, 'Sarolangun'),
(394, 32, 'Sawah Lunto'),
(395, 12, 'Sekadau'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(397, 4, 'Seluma'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(404, 34, 'Serdang Bedagai'),
(405, 14, 'Seruyan'),
(406, 26, 'Siak'),
(407, 34, 'Sibolga'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(409, 11, 'Sidoarjo'),
(410, 29, 'Sigi'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(412, 23, 'Sikka'),
(413, 34, 'Simalungun'),
(414, 21, 'Simeulue'),
(415, 12, 'Singkawang'),
(416, 28, 'Sinjai'),
(417, 12, 'Sintang'),
(418, 11, 'Situbondo'),
(419, 5, 'Sleman'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(423, 28, 'Soppeng'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(427, 10, 'Sragen'),
(428, 9, 'Subang'),
(429, 21, 'Subulussalam'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(432, 14, 'Sukamara'),
(433, 10, 'Sukoharjo'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(440, 9, 'Sumedang'),
(441, 11, 'Sumenep'),
(442, 8, 'Sungaipenuh'),
(443, 24, 'Supiori'),
(444, 11, 'Surabaya'),
(445, 10, 'Surakarta (Solo)'),
(446, 13, 'Tabalong'),
(447, 1, 'Tabanan'),
(448, 28, 'Takalar'),
(449, 25, 'Tambrauw'),
(450, 16, 'Tana Tidung'),
(451, 28, 'Tana Toraja'),
(452, 13, 'Tanah Bumbu'),
(453, 32, 'Tanah Datar'),
(454, 13, 'Tanah Laut'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(458, 18, 'Tanggamus'),
(459, 34, 'Tanjung Balai'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(462, 17, 'Tanjung Pinang'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(466, 13, 'Tapin'),
(467, 16, 'Tarakan'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(470, 34, 'Tebing Tinggi'),
(471, 8, 'Tebo'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(476, 10, 'Temanggung'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(481, 34, 'Toba Samosir'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(484, 24, 'Tolikara'),
(485, 31, 'Tomohon'),
(486, 28, 'Toraja Utara'),
(487, 11, 'Trenggalek'),
(488, 19, 'Tual'),
(489, 11, 'Tuban'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(492, 11, 'Tulungagung'),
(493, 28, 'Wajo'),
(494, 30, 'Wakatobi'),
(495, 24, 'Waropen'),
(496, 18, 'Way Kanan'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(501, 5, 'Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lapangan`
--

CREATE TABLE `lapangan` (
  `id_lapangan` int(11) NOT NULL,
  `nama_lapangan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` text NOT NULL,
  `deskripsi` text NOT NULL,
  `fasilitas` varchar(100) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `lapangan`
--

INSERT INTO `lapangan` (`id_lapangan`, `nama_lapangan`, `harga`, `foto`, `deskripsi`, `fasilitas`, `created_by`, `created_at`, `modified_by`, `modified_at`) VALUES
(1, 'Lapangan Futsal', 35000, 'lapangan-futsal20230526092511.jpg', 'Lapangan Futsal termasuk salah satu fasilitas olahraga yang tersedia di Bengawan Sport Centre. Area lapangan ini dikelilingi oleh pagar besi. Fungsi dari pagar tersebut adalah untuk mencegah keluarnya bola dari lapangan. Di samping area lapangan ini sudah dilengkapi dengan kursi-kursi duduk untuk para pemain atau penonton.  Biasanya pengunjung yang bermain futsal merupakan rombongan dari suatu komunitas. Bahkan, lapangan futsal di sini kerap menjadi tempat untuk melangsungkan turnamen futsal.', 'Toilet, Tempat Istirahat, AC', NULL, NULL, 'superadmin', NULL),
(2, 'Kolam Renang', 150000, 'kolam-renang20230526093002.jpg', 'Fasilitas olahraga selanjutnya adalah kolam renang. Bengawan Sport Centre memiliki dua kolam dengan jenis kedalaman yang berbeda. Ada kolam untuk anak-anak yang memiliki permainan papan seluncur. Ada juga kolam untuk orang dewasa bertipe Olympic dengan kedalaman 125-250 m.  Kolam renang ini juga sering digunakan sebagai tempat untuk berlatih renang yang didampingi oleh pelatih. Bagi yang tidak membawa perlengkapan renang, tersedia tempat untuk membeli atau menyewa peralatan renang.', 'Toilet', NULL, NULL, 'superadmin', NULL),
(3, 'Tempat Fitness', 80000, 'tempat-fitness20230608224924.jpg', '', 'Toilet', NULL, NULL, 'superadmin', NULL),
(4, 'Lapangan Bulu Tangkis', 100000, 'lapangan-bulu-tangkis20230526093155.jpg', '', 'Toilet, Tempat Istirahat, AC', NULL, NULL, 'superadmin', NULL),
(5, 'Area Bowling', 200000, 'lapangan-e20230526093101.jpg', 'Bengawan Sport Centre juga menyediakan arena bermain boling harga terjangkau. Bahkan, tempat ini satu-satunya yang menyediakan permainan Bowling di Surakarta. Sedangkan sistem permainannya yaitu satu kali bermain sebanyak 10 kali lemparan.  Fasilitas Boling di Bengawan Sport Centre cukup lengkap mulai dari papan skor, tempat duduk hingga sepatu khusus. Selain itu yang terpenting terdapat setidaknya 20 lintasan boling.', 'Toilet, Tempat Istirahat, AC', NULL, NULL, 'superadmin', NULL),
(9, 'Lapangan Tenis', 150000, 'lapangan-tenis20230608225117.jpg', '', 'Toilet', 'superadmin', NULL, 'superadmin', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(20, '::1', 'alfi@gmail.com', 1688581507),
(21, '::1', 'alfi@gmail.com', 1688644069),
(22, '::1', 'alfi@gmail.com', 1688644084);

-- --------------------------------------------------------

--
-- Struktur dari tabel `page`
--

CREATE TABLE `page` (
  `id_page` int(11) NOT NULL,
  `judul_page` varchar(50) NOT NULL,
  `judul_seo` varchar(50) NOT NULL,
  `isi_page` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `page`
--

INSERT INTO `page` (`id_page`, `judul_page`, `judul_seo`, `isi_page`, `gambar`) VALUES
(1, 'Home', 'home', '', ''),
(2, 'Download', 'download', 'download', ''),
(3, 'Kontak', 'kontak', '<p style=\"text-align: center;\">&nbsp;<img src=\"http://localhost/tol/assets/images/upload/whatsapp.png\" /><br /><strong>SMS/ Call/ Whatsapp</strong></p>\r\n<p style=\"text-align: center;\">0853-6873-3631</p>\r\n<p style=\"text-align: center;\">0822-8155-1666</p>', ''),
(4, 'Profil', 'profil', '<p style=\"text-align: justify;\">Kami merupakan toko yang menyediakan berbagai macam parfum, obat-obatan herbal, baju koko, dan aksesoris muslim lainnya. Toko kami beralamat di Jl. Dr. M. Isa No.1109, Kuto Batu, Ilir Tim. II, Kota Palembang, Sumatera Selatan 30114.</p>\r\n<p style=\"text-align: justify;\">Berikut adalah foto toko kami:</p>', ''),
(5, 'Order', 'order', '<p>Anda dapat menghubungi&nbsp;kami melalui tombol order via whatsapp di masing-masing produk atau melalui customer service/ kontak yang telah disediakan di sisi kanan website ini</p>', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nama_slider` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `foto_type` char(10) NOT NULL,
  `foto_size` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` char(50) NOT NULL,
  `modified_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `modified_by` char(50) NOT NULL,
  `uploader` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `no_urut`, `nama_slider`, `link`, `foto`, `foto_type`, `foto_size`, `created_at`, `created_by`, `modified_at`, `modified_by`, `uploader`) VALUES
(1, 1, 'Lapangan Futsal', 'http://localhost/regora/detail/9', '120230608154016', '.jpg', 203, '2017-11-25 08:05:03', 'Bendi', '2023-06-17 13:37:10', 'superadmin', NULL),
(2, 2, 'kolam Renang', 'http://localhost/regora/detail/6', '220230608154051', '.jpg', 833, '2017-11-25 08:05:03', 'Ganang', '2023-06-17 13:37:15', 'superadmin', NULL),
(3, 3, 'Lapangan Badminton', 'http://localhost/regora/detail/4', '320230608153907', '.jpg', 167, '2017-11-25 08:05:03', 'Rifky', '2023-06-17 13:37:21', 'superadmin', NULL),
(4, 4, 'Fitnes', 'http://localhost/regora/detail/3', '420230608154114', '.jpg', 0, '2023-06-06 12:22:38', 'Villa', '2023-06-17 13:37:26', 'superadmin', 'superadmin'),
(5, 5, 'Lapangan Tenis', '', '520230608154230', '.jpg', 0, '2023-06-08 15:42:30', 'Oci', '2023-06-17 13:37:31', '', 'superadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trans` int(11) NOT NULL,
  `id_invoice` char(15) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `deadline` datetime NOT NULL,
  `catatan` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `created_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_trans`, `id_invoice`, `user_id`, `subtotal`, `diskon`, `grand_total`, `deadline`, `catatan`, `status`, `created_date`, `created_time`) VALUES
(3, 'J-210516-0003', 3, 300000, 0, 300000, '2021-05-16 21:20:17', '', 2, '2021-05-16', '08:20:09'),
(4, 'J-210408-0001', 3, 330000, 0, 330000, '2021-04-08 21:21:53', '', 2, '2021-04-08', '08:21:35'),
(5, 'J-210408-0002', 3, 150000, 0, 150000, '2021-04-08 21:22:35', '', 2, '2021-04-08', '08:22:29'),
(6, 'J-210408-0003', 3, 300000, 0, 300000, '2021-04-08 21:23:15', '', 2, '2021-04-08', '08:23:09'),
(7, 'J-210410-0004', 3, 300000, 0, 300000, '2021-04-10 21:24:07', '', 2, '2021-04-10', '08:23:52'),
(8, 'J-210517-0003', 3, 150000, 0, 150000, '2021-05-17 21:23:05', '', 2, '2021-05-17', '08:23:01'),
(9, 'J-230523-0001', 1, 600000, 0, 600000, '2023-05-23 01:19:47', '', 2, '2023-05-23', '12:19:28'),
(10, 'J-230523-0002', 5, 3400000, 0, 3400000, '2023-05-23 10:04:12', '', 2, '2023-05-23', '09:01:03'),
(11, 'J-230523-0003', 5, 300000, 0, 300000, '2023-05-23 12:24:53', '', 2, '2023-05-23', '11:24:34'),
(12, 'J-230523-0004', 5, 700000, 0, 700000, '2023-05-23 12:33:02', '', 2, '2023-05-23', '11:32:48'),
(13, 'J-230523-0005', 5, 100000, 0, 100000, '2023-05-23 12:34:28', '', 2, '2023-05-23', '11:34:05'),
(14, 'J-230523-0006', 5, 100000, 0, 100000, '2023-05-23 13:14:12', '', 1, '2023-05-23', '11:36:00'),
(15, 'J-230523-0007', 7, 0, 0, 0, '0000-00-00 00:00:00', '', 2, '2023-05-23', '12:10:18'),
(16, 'J-230523-0008', 5, 200000, 0, 200000, '2023-05-25 15:11:12', '', 1, '2023-05-23', '12:30:07'),
(17, 'J-230525-0009', 2, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-05-25', '07:31:47'),
(18, 'J-230525-0010', 5, 200000, 0, 200000, '2023-05-26 10:53:11', '', 1, '2023-05-25', '02:11:53'),
(19, 'J-230525-0011', 1, 100000, 0, 100000, '2023-05-30 12:51:32', '', 1, '2023-05-25', '02:29:17'),
(20, 'J-230526-0012', 5, 200000, 0, 200000, '2023-06-06 09:44:43', '', 2, '2023-05-26', '09:56:39'),
(21, 'J-230530-0013', 1, 2599000, 0, 2599000, '2023-06-06 13:28:29', '', 1, '2023-05-30', '11:55:32'),
(22, 'J-230606-0001', 5, 200000, 0, 200000, '2023-06-17 13:56:56', '', 1, '2023-06-06', '08:44:50'),
(23, 'J-230606-0002', 1, 200000, 0, 200000, '2023-06-06 14:37:52', '', 1, '2023-06-06', '12:30:07'),
(24, 'J-230606-0003', 1, 300000, 0, 300000, '2023-06-06 15:37:18', '', 1, '2023-06-06', '01:38:18'),
(25, 'J-230606-0004', 1, 200000, 0, 200000, '2023-06-06 15:37:36', '', 1, '2023-06-06', '02:37:25'),
(26, 'J-230606-0005', 1, 200000, 0, 200000, '2023-06-06 15:38:50', '', 1, '2023-06-06', '02:38:43'),
(27, 'J-230606-0006', 1, 200000, 0, 200000, '2023-06-06 15:39:51', '', 1, '2023-06-06', '02:39:44'),
(28, 'J-230606-0007', 1, 123, 0, 123, '2023-06-06 15:43:54', '', 1, '2023-06-06', '02:43:43'),
(29, 'J-230606-0008', 1, 200000, 0, 200000, '2023-06-06 16:17:24', '', 1, '2023-06-06', '03:17:12'),
(30, 'J-230606-0009', 1, 200000, 0, 200000, '2023-06-06 16:22:00', '', 1, '2023-06-06', '03:21:54'),
(31, 'J-230606-0010', 1, 200000, 0, 200000, '2023-06-06 16:24:43', '', 1, '2023-06-06', '03:24:34'),
(32, 'J-230606-0011', 1, 200000, 0, 200000, '2023-06-06 16:26:27', '', 1, '2023-06-06', '03:26:22'),
(33, 'J-230606-0012', 1, 1000000, 0, 1000000, '2023-06-06 16:30:23', '', 1, '2023-06-06', '03:30:12'),
(34, 'J-230606-0013', 1, 200000, 0, 200000, '2023-06-06 16:34:50', '', 1, '2023-06-06', '03:31:22'),
(35, 'J-230606-0014', 1, 200000, 0, 200000, '2023-06-06 21:26:11', '', 1, '2023-06-06', '08:24:07'),
(36, 'J-230606-0015', 1, 400000, 0, 400000, '2023-06-06 21:33:05', '', 1, '2023-06-06', '08:32:52'),
(37, 'J-230606-0016', 1, 200000, 0, 200000, '2023-06-06 21:37:27', '', 1, '2023-06-06', '08:36:29'),
(38, 'J-230606-0017', 1, 200000, 0, 200000, '2023-06-06 21:40:21', '', 2, '2023-06-06', '08:38:10'),
(39, 'J-230606-0018', 1, 200000, 0, 200000, '2023-06-06 21:50:40', '', 2, '2023-06-06', '08:45:42'),
(40, 'J-230608-0019', 1, 800000, 0, 800000, '2023-06-08 12:20:44', '', 1, '2023-06-08', '11:18:14'),
(41, 'J-230608-0020', 1, 200000, 0, 200000, '2023-06-08 14:04:07', '', 1, '2023-06-08', '11:56:22'),
(42, 'J-230608-0021', 1, 200000, 0, 200000, '2023-06-08 14:05:04', '', 1, '2023-06-08', '01:04:10'),
(43, 'J-230608-0022', 1, 400000, 0, 400000, '2023-06-08 14:06:46', '', 1, '2023-06-08', '01:06:05'),
(44, 'J-230608-0023', 1, 2000000, 0, 2000000, '2023-06-08 14:57:08', '', 1, '2023-06-08', '01:41:58'),
(45, 'J-230608-0024', 1, 200000, 0, 200000, '2023-06-08 15:05:50', '', 1, '2023-06-08', '02:05:20'),
(46, 'J-230608-0025', 1, 200000, 0, 200000, '2023-06-08 15:21:40', '', 1, '2023-06-08', '02:08:30'),
(47, 'J-230608-0026', 1, 200000, 0, 200000, '2023-06-08 15:26:11', '', 1, '2023-06-08', '02:26:05'),
(48, 'J-230608-0027', 1, 200000, 0, 200000, '2023-06-08 15:27:25', '', 1, '2023-06-08', '02:26:29'),
(49, 'J-230608-0028', 1, 200000, 0, 200000, '2023-06-08 15:29:04', '', 1, '2023-06-08', '02:28:56'),
(50, 'J-230608-0029', 1, 200000, 0, 200000, '2023-06-08 15:29:54', '', 1, '2023-06-08', '02:29:48'),
(51, 'J-230608-0030', 1, 2599000, 0, 2599000, '2023-06-08 15:33:45', '', 1, '2023-06-08', '02:33:37'),
(52, 'J-230608-0031', 1, 150000, 0, 150000, '2023-06-08 15:34:15', '', 1, '2023-06-08', '02:33:53'),
(53, 'J-230608-0032', 1, 200000, 0, 200000, '2023-06-08 15:50:34', '', 1, '2023-06-08', '02:35:24'),
(54, 'J-230608-0033', 1, 400000, 0, 400000, '2023-06-08 15:53:32', '', 1, '2023-06-08', '02:52:47'),
(55, 'J-230608-0034', 1, 100000, 0, 100000, '2023-06-08 15:53:45', '', 1, '2023-06-08', '02:53:38'),
(56, 'J-230608-0035', 1, 200000, 0, 200000, '2023-06-08 16:04:39', '', 1, '2023-06-08', '03:01:14'),
(57, 'J-230608-0036', 1, 0, 0, 0, '2023-06-16 14:12:46', '', 1, '2023-06-08', '03:44:28'),
(58, 'J-230616-0037', 1, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-06-16', '01:13:18'),
(59, 'J-230617-0038', 7, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-06-17', '12:41:50'),
(60, 'J-230617-0039', 6, 200000, 30000, 170000, '2023-06-17 14:02:01', '', 1, '2023-06-17', '01:01:32'),
(61, 'J-230617-0040', 6, 200000, 30000, 170000, '2023-06-17 14:05:17', '', 1, '2023-06-17', '01:04:21'),
(62, 'J-230617-0041', 6, 200000, 30000, 170000, '2023-06-17 14:09:13', '', 1, '2023-06-17', '01:08:58'),
(63, 'J-230619-0042', 6, 200000, 30000, 170000, '2023-06-19 10:32:55', '', 1, '2023-06-19', '09:30:04'),
(64, 'J-230619-0043', 6, 150000, 30000, 120000, '2023-06-19 10:33:11', '', 1, '2023-06-19', '09:33:04'),
(65, 'J-230619-0044', 6, 150000, 30000, 120000, '2023-06-19 11:18:14', '', 1, '2023-06-19', '10:18:06'),
(66, 'J-230619-0045', 5, 200000, 0, 200000, '2023-06-19 12:09:58', '', 1, '2023-06-19', '11:09:44'),
(67, 'J-230627-0046', 5, 750000, 0, 750000, '2023-06-27 13:25:41', '', 1, '2023-06-27', '12:25:18'),
(68, 'J-230627-0047', 5, 600000, 0, 600000, '2023-06-27 13:27:13', '', 1, '2023-06-27', '12:25:57'),
(69, 'J-230706-0001', 5, 150000, 0, 150000, '2023-07-06 02:25:41', '', 1, '2023-07-06', '01:25:29'),
(70, 'J-230706-0002', 5, 150000, 0, 150000, '2023-07-06 02:32:26', '', 1, '2023-07-06', '01:28:27'),
(71, 'J-230706-0003', 5, 250000, 0, 250000, '2023-07-06 19:47:03', '', 1, '2023-07-06', '08:46:43'),
(72, 'J-230706-0004', 6, 0, 0, 0, '0000-00-00 00:00:00', '', 0, '2023-07-06', '06:48:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transdet` int(11) NOT NULL,
  `trans_id` int(11) NOT NULL,
  `lapangan_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time DEFAULT NULL,
  `durasi` int(11) NOT NULL,
  `jam_selesai` time DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transdet`, `trans_id`, `lapangan_id`, `tanggal`, `jam_mulai`, `durasi`, `jam_selesai`, `harga_jual`, `total`, `created_at`) VALUES
(4, 3, 4, '2021-05-16', '13:00:00', 3, '16:00:00', 100000, 300000, '2021-05-16 20:20:09'),
(5, 4, 1, '2021-04-09', '22:00:00', 1, '23:00:00', 100000, 100000, '2021-04-08 20:21:35'),
(7, 4, 3, '2021-04-13', '21:00:00', 1, '22:00:00', 80000, 80000, '2021-04-08 20:21:36'),
(8, 5, 2, '2021-04-08', '10:00:00', 1, '11:00:00', 150000, 150000, '2021-04-08 20:22:29'),
(14, 10, 5, '2023-05-31', '24:00:00', 17, '41:00:00', 200000, 3400000, '2023-05-23 09:01:41'),
(16, 12, 1, '2023-05-23', '06:00:00', 7, '13:00:00', 100000, 700000, '2023-05-23 11:32:48'),
(17, 13, 1, '2023-05-23', '17:00:00', 1, '18:00:00', 100000, 100000, '2023-05-23 11:34:05'),
(18, 14, 1, '2023-05-23', '16:00:00', 1, '17:00:00', 100000, 100000, '2023-05-23 11:36:00'),
(19, 15, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-05-23 12:10:18'),
(24, 16, 1, '2023-05-25', '06:00:00', 2, '08:00:00', 100000, 200000, '2023-05-23 13:38:32'),
(26, 17, 1, '0000-00-00', NULL, 0, NULL, 100000, 100000, '2023-05-25 14:07:36'),
(27, 18, 1, '2023-05-26', '06:00:00', 2, '08:00:00', 100000, 200000, '2023-05-25 14:11:53'),
(31, 20, 5, '2023-06-06', '18:00:00', 1, '19:00:00', 200000, 200000, '2023-05-26 09:56:39'),
(33, 19, 4, '2023-05-30', '07:00:00', 1, '08:00:00', 100000, 100000, '2023-05-30 11:49:01'),
(38, 23, 5, '2023-06-13', '22:00:00', 1, '23:00:00', 200000, 200000, '2023-06-06 12:30:07'),
(41, 24, 5, '2023-06-20', '23:00:00', 1, '24:00:00', 200000, 200000, '2023-06-06 14:35:48'),
(42, 24, 1, '2023-06-06', '18:00:00', 1, '19:00:00', 100000, 100000, '2023-06-06 14:36:57'),
(43, 25, 5, '2023-06-06', '22:00:00', 1, '23:00:00', 200000, 200000, '2023-06-06 14:37:25'),
(44, 26, 5, '2023-06-20', '22:00:00', 1, '23:00:00', 200000, 200000, '2023-06-06 14:38:43'),
(45, 27, 5, '2023-06-28', '21:00:00', 1, '22:00:00', 200000, 200000, '2023-06-06 14:39:44'),
(46, 28, 9, '2023-06-27', '20:00:00', 1, '21:00:00', 123, 123, '2023-06-06 14:43:43'),
(47, 29, 5, '2023-06-26', '22:00:00', 1, '23:00:00', 200000, 200000, '2023-06-06 15:17:12'),
(48, 30, 5, '2023-06-27', '23:00:00', 1, '24:00:00', 200000, 200000, '2023-06-06 15:21:54'),
(49, 31, 5, '2023-06-27', '22:00:00', 1, '23:00:00', 200000, 200000, '2023-06-06 15:24:34'),
(50, 32, 5, '2023-06-28', '23:00:00', 1, '24:00:00', 200000, 200000, '2023-06-06 15:26:23'),
(51, 33, 5, '2023-06-27', '17:00:00', 5, '22:00:00', 200000, 1000000, '2023-06-06 15:30:12'),
(52, 34, 5, '2023-06-27', '24:00:00', 1, '25:00:00', 200000, 200000, '2023-06-06 15:31:22'),
(53, 35, 5, '2023-06-06', '19:00:00', 1, '20:00:00', 200000, 200000, '2023-06-06 20:24:07'),
(54, 36, 1, '2023-06-06', '17:00:00', 4, '21:00:00', 100000, 400000, '2023-06-06 20:32:52'),
(55, 37, 5, '2023-06-25', '17:00:00', 1, '18:00:00', 200000, 200000, '2023-06-06 20:36:29'),
(56, 38, 5, '2023-06-06', '17:00:00', 1, '18:00:00', 200000, 200000, '2023-06-06 20:38:10'),
(57, 39, 5, '2023-06-20', '19:00:00', 1, '20:00:00', 200000, 200000, '2023-06-06 20:45:42'),
(58, 40, 5, '2023-06-08', '17:00:00', 4, '21:00:00', 200000, 800000, '2023-06-08 11:18:14'),
(59, 41, 5, '2023-06-17', '17:00:00', 1, '18:00:00', 200000, 200000, '2023-06-08 11:56:22'),
(60, 42, 5, '2023-06-08', '21:00:00', 1, '22:00:00', 200000, 200000, '2023-06-08 13:04:10'),
(61, 43, 5, '2023-06-20', '17:00:00', 2, '19:00:00', 200000, 400000, '2023-06-08 13:06:05'),
(62, 44, 5, '2023-06-28', '19:00:00', 10, '29:00:00', 200000, 2000000, '2023-06-08 13:41:58'),
(63, 45, 5, '2023-06-21', '18:00:00', 1, '19:00:00', 200000, 200000, '2023-06-08 14:05:20'),
(66, 46, 5, '2023-06-15', '18:00:00', 1, '19:00:00', 200000, 200000, '2023-06-08 14:20:21'),
(67, 47, 5, '2023-06-13', '20:00:00', 1, '21:00:00', 200000, 200000, '2023-06-08 14:26:05'),
(68, 48, 5, '2023-06-28', '18:00:00', 1, '19:00:00', 200000, 200000, '2023-06-08 14:26:29'),
(69, 49, 5, '2023-06-28', '17:00:00', 1, '18:00:00', 200000, 200000, '2023-06-08 14:28:56'),
(70, 50, 5, '2023-06-29', '24:00:00', 1, '25:00:00', 200000, 200000, '2023-06-08 14:29:48'),
(73, 52, 2, '2023-06-28', '23:00:00', 1, '24:00:00', 150000, 150000, '2023-06-08 14:34:02'),
(76, 53, 5, '2023-06-21', '23:00:00', 1, '24:00:00', 200000, 200000, '2023-06-08 14:49:53'),
(77, 54, 5, '2023-06-29', '22:00:00', 2, '24:00:00', 200000, 400000, '2023-06-08 14:52:47'),
(78, 55, 4, '2023-06-29', '24:00:00', 1, '25:00:00', 100000, 100000, '2023-06-08 14:53:38'),
(79, 56, 5, '2023-06-29', '20:00:00', 1, '21:00:00', 200000, 200000, '2023-06-08 15:01:14'),
(85, 57, 2, '2023-06-28', '24:00:00', 1, '25:00:00', 150000, 0, '2023-06-16 13:07:39'),
(91, 58, 5, '0000-00-00', NULL, 0, NULL, 200000, 200000, '2023-06-16 13:44:53'),
(92, 59, 5, '0000-00-00', NULL, 0, NULL, 200000, 200000, '2023-06-17 12:41:50'),
(93, 22, 5, '2023-06-27', '12:00:00', 1, '13:00:00', 200000, 200000, '2023-06-17 12:55:20'),
(94, 60, 5, '2023-06-28', '12:00:00', 1, '13:00:00', 200000, 200000, '2023-06-17 13:01:32'),
(95, 61, 5, '2023-06-26', '24:00:00', 1, '25:00:00', 200000, 200000, '2023-06-17 13:04:21'),
(96, 62, 5, '2023-06-26', '23:00:00', 1, '24:00:00', 200000, 200000, '2023-06-17 13:08:58'),
(97, 63, 5, '2023-06-20', '14:00:00', 1, '15:00:00', 200000, 200000, '2023-06-19 09:30:04'),
(98, 64, 2, '2023-06-29', '24:00:00', 1, '25:00:00', 150000, 150000, '2023-06-19 09:33:04'),
(99, 65, 2, '2023-06-28', '22:00:00', 1, '23:00:00', 150000, 150000, '2023-06-19 10:18:06'),
(100, 66, 5, '2023-06-29', '19:00:00', 1, '20:00:00', 200000, 200000, '2023-06-19 11:09:44'),
(101, 67, 9, '2023-06-27', '07:00:00', 5, '12:00:00', 150000, 750000, '2023-06-27 12:25:18'),
(102, 68, 9, '2023-06-27', '15:00:00', 4, '19:00:00', 150000, 600000, '2023-06-27 12:25:57'),
(103, 69, 2, '2023-07-06', '14:00:00', 1, '15:00:00', 150000, 150000, '2023-07-06 01:25:29'),
(104, 70, 2, '2023-07-25', '10:00:00', 1, '11:00:00', 150000, 150000, '2023-07-06 01:28:27'),
(105, 71, 2, '2023-07-26', '23:00:00', 1, '24:00:00', 150000, 150000, '2023-07-06 08:46:43'),
(107, 71, 4, '2023-07-27', '11:00:00', 1, '12:00:00', 100000, 100000, '2023-07-06 08:46:52'),
(108, 58, 1, '0000-00-00', NULL, 0, NULL, 35000, 35000, '2023-07-06 15:42:56'),
(109, 58, 2, '0000-00-00', NULL, 0, NULL, 150000, 150000, '2023-07-06 16:32:30'),
(110, 72, 5, '0000-00-00', NULL, 0, NULL, 200000, 200000, '2023-07-06 18:48:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kota` int(11) DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `usertype` int(11) NOT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `photo` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `photo_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activation_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `created_on` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `provinsi`, `kota`, `address`, `usertype`, `active`, `photo`, `photo_type`, `ip_address`, `salt`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `last_login`, `created_on`, `modified`) VALUES
(1, 'SuperAdmin', 'superadmin', '$2y$08$TWMdtdacqPE5yEz9n1LwFuhEVmiDTTsupl12M45tCQihzF1tu2N/6', 'superadmin@gmail.com', '081228289766', 6, 151, 'asdasdasdsa', 1, 1, 'mazmi20180205001726', '.jpg', '::1', NULL, 'c6ad242e6fd3de875568c7de5ba23af4a24137ef', 'tHafW45duPzrU3oWR0AVuO48b26088a3cd65edc4', 1621246176, NULL, 1688623588, 2147483647, '2023-07-06 13:06:28'),
(2, 'Admin', 'administrator', '$2y$08$rnCngWyQhFLdVJijctNDKuwJZ8o9VfcSsZ9IM9XN71ugxIpQFeCWe', 'administrator@gmail.com', '08124124', NULL, NULL, 'kaldjlas', 2, 1, 'admin20180424102408', '.jpeg', '::1', NULL, NULL, NULL, NULL, NULL, 1685067356, 1524551716, '2023-05-26 09:15:56'),
(3, 'Batistuta', 'batistuta', '12345678', 'batistuta@gmail.com', '0812412414', 33, 327, 'Jl. Skdlajsdlasjkdl', 4, 1, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, 1621257779, 1528634033, '2023-06-17 12:40:04'),
(4, 'User Premium', 'userpremium', '12345678', 'userpremium@gmail.com', '0812412412', 3, 106, 'kaljdklasjdkl', 3, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1621252638, 1531807819, '2023-05-23 08:59:41'),
(5, 'bendi', 'bendi', '$2y$08$LCIkv2uYUsJ8ztM36ZiQm.phYthRn1EE0KA17ll9.57haAgB2AmGK', 'bendi@gmail.com', '0987654', 16, 96, 'asdfrtghjknbv', 4, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1688643998, 1684807247, '2023-07-06 18:46:38'),
(6, 'rifky', 'rifky', '$2y$08$bSCPS8yOSpc4QX8EIRLbL.bFXuxqOo9TemabJhv.09D0n4s6NPr3K', 'rifky@gmail.com', '0987654', 15, 19, 'ghjk', 3, 1, NULL, NULL, '::1', NULL, NULL, NULL, NULL, NULL, 1688644106, 1684815552, '2023-07-06 18:48:26'),
(7, 'alfi', 'alfi', '$2y$08$ZjsmUaq9tpAysDrEkevqFOEQnZse4ATFcTNN9FVdeNQPk1XWygmTW', 'alfi@gmail.com', '0987654', NULL, NULL, 'ertyujhgf', 5, 1, 'alfi20230523120211', '.png', '::1', NULL, NULL, NULL, NULL, NULL, 1686980501, 1684818131, '2023-06-17 12:59:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_group`
--

CREATE TABLE `users_group` (
  `id_group` int(11) NOT NULL,
  `name_group` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users_group`
--

INSERT INTO `users_group` (`id_group`, `name_group`) VALUES
(1, 'SuperAdmin'),
(2, 'Administrator'),
(3, 'Member Premium'),
(4, 'Member Biasa'),
(5, 'Member Diskon');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id_company`);

--
-- Indeks untuk tabel `diskon`
--
ALTER TABLE `diskon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `foto_FK` (`album_id`);

--
-- Indeks untuk tabel `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`id_lapangan`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `transaksi_FK` (`user_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transdet`),
  ADD KEY `transaksi_detail_FK` (`lapangan_id`),
  ADD KEY `transaksi_detail_FK_1` (`trans_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_group`
--
ALTER TABLE `users_group`
  ADD PRIMARY KEY (`id_group`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `company`
--
ALTER TABLE `company`
  MODIFY `id_company` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `event`
--
ALTER TABLE `event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `jam`
--
ALTER TABLE `jam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lapangan`
--
ALTER TABLE `lapangan`
  MODIFY `id_lapangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `page`
--
ALTER TABLE `page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transdet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users_group`
--
ALTER TABLE `users_group`
  MODIFY `id_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_FK` FOREIGN KEY (`album_id`) REFERENCES `album` (`id_album`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_FK` FOREIGN KEY (`lapangan_id`) REFERENCES `lapangan` (`id_lapangan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_detail_FK_1` FOREIGN KEY (`trans_id`) REFERENCES `transaksi` (`id_trans`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
