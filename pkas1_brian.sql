-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2024 at 08:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkas1_brian`
--

-- --------------------------------------------------------

--
-- Table structure for table `isi`
--

CREATE TABLE `isi` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_buat` datetime DEFAULT NULL,
  `jumlah_pelihat` int(5) DEFAULT NULL,
  `penulis` varchar(30) NOT NULL,
  `video` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `lampiran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `isi`
--

INSERT INTO `isi` (`id`, `judul`, `deskripsi`, `tgl_buat`, `jumlah_pelihat`, `penulis`, `video`, `gambar`, `lampiran`) VALUES
(12, ' PIPAS(SISTEM TATA SURYA)', '<h2 style=\"text-align: center;\">SISTEM TATA SURYA</h2>\r\n<p>&nbsp;Tata Surya merupakan gugusan benda-benda langit yang terdiri atas matahari,delapan,planet,planet-planet kecil,asteroid, komet, dan benda-benda angkasa lainnya yang beredar mengelilingi matahari sebagai pusat tata surya.</p>\r\n<h2>1.matahari</h2>\r\n<p>matahari adalah pusat tata surya yang dapat memancarkan sinarnya sendiri. berdasarkan sifatnya, matahari merupakan sebuah bintang. jarak rata-rata matahari ke Bumi adalah 150 juta km.</p>\r\n<p>&nbsp;</p>\r\n<h2>2.delapan planet</h2>\r\n<p>dalam sistem tata surya, matahari adlah bintang. Planet yang mengorbit matahari dalam sistem tata surya adalah Merkurius, Venus, Bumi, Mars, Jupiter, Saturnus, Uranus, dan neptunus.</p>\r\n<h2>A.Merkurius</h2>\r\n<p><br><br>Merkurius adalah planet terkecil, dan terpanas di tata surya.&nbsp; merkurius adalah planet terdekat dengan matahari yang terletak pada orbit yang berjarak 57,91 km dari matahari.diameter rata-rata merkurius kurang lebih 4.900 km. merkurius berevolusi(<span style=\"text-decoration: underline;\">waktu yang diperlukan planet untuk mengelilingi Matahari dalam orbitnya, bisa disebut dengan waktu 1 tahun planet tersebut</span>.) mengelilingi matahari dalam waktu 88 hari dan berotasi pada porosnya dalam waktu 58 hari 15 jam 30 menit.</p>\r\n<h2>B.venus</h2>\r\n<p>venus merupakan planet yang menempaati urutan kedua terdekat dari matahari. jarak orbit venus ke matahari berkisar 108 juta km dengan kala revolusi 225 hari.venus berotasi pada porosnya dengan waktu 116 hari 18 jam. ukuran venus yakni kurang lebih 6.000 km.</p>\r\n<h2>C.Bumi</h2>\r\n<p>bumi, planet ketiga ditata surya jarak bumi ke matahari kurang lebih 150 juta km.Jaraknya rata-rata 150.800.000 km dari matahari. Diameternya hampir 12.667 km. Bumi membutuhkan waktu 23 jam 56 menit dan 4 detik untuk berputar pada porosnya sendiri dan membutuhkan 365 hari 5 jam 48 menit 47 detik untuk mengelilingi matahari satu kali.</p>\r\n<h2>D.mars</h2>\r\n<p>Planet Mars merupakan planet ke-4 dalam urutan dari matahari. Planet Mars terlihat kemerahan karena bebatuannya berkarat saat bersentuhan dengan oksigen. Planet ini memiliki dua satelit, yaitu Phobos dan Deimos. Diameter Mars sekitar 6.787 km,&nbsp; jarak rata-rata planet ini dari matahari adalah 228.000.000 km dan 142 juta mil (229 juta kilometer) dari bumi.</p>\r\n<h2>E.jupiter</h2>\r\n<p>Jupiter adalah planet kelima dan terbesar di tata surya sehingga disebut sebagai raja planet. Yupiter memiliki diameter 142.984 km bila diukur di ekuator. Planet ini lebih besar dari bumi sekitar 1.300 kali dalam hal luas dan massanya dua kali lipat dari planet lain di tata surya.Planet ini berjarak 772.800.000 km dari matahari.</p>\r\n<h2>F.saturnus</h2>\r\n<p>Saturnus adalah planet terbesar ke-6 dan kedua setelah Jupiter. Matahari berjarak 1.417.600.000 km dari Saturnus. Ini sebenarnya adalah bola gas besar dengan diameter 120.000 km. Ukuran Saturnus 760 kali lebih besar dari planet Bumi. Saturnus membutuhkan 29 tahun dan 5 bulan untuk mengelilingi matahari sekali tetapi berputar pada porosnya sendiri dalam 10 jam 40 menit.</p>\r\n<h2>G.uranus</h2>\r\n<p>Uranus adalah planet terbesar ketiga dan planet ketujuh dalam urutan jarak dari matahari. Ini mencakup jarak 2.870.972.170 km dari matahari. Uranus membutuhkan waktu sekitar 84 tahun untuk menyelesaikan satu putaran mengelilingi matahari, tetapi hanya membutuhkan waktu 10 jam 49 menit untuk berputar pada porosnya sendiri. Diameternya adalah 31.764 mil (51.119 km) dan ditutupi dengan awan biru-hijau, karena gas metana di atmosfer di atasnya.</p>\r\n<h2>H.neptunus</h2>\r\n<p>Neptunus adalah planet dengan atmosfer yang penuh dengan angin dan badai. Neptunus memiliki atmosfer yang terdiri atas helium, hidrogen, dan metana.diameter neptunus mencapai kurang lebih 50.000 km dan mengorbit matahari pada jarak rata-rata berkisar 4,5 miliar km.untuk mengelilingi matahari, neptunus membutuhkan waktu selama 165 hari sambil berotasi pada sumbunya dalam waktu 16 jam 6 menit</p>\r\n<h2>3.asteroid</h2>\r\n<p>asteroid atau planet minor (planetoid) merupakan benda langit dengan bentuk tak teratur yang tersusun dari kumpulan debu dan es. jarak yang tak jauh dari matahari membuat komponen penyusun asteroid membeku dan menjadi es hingga suhu di permukaan mencapai -73 c.</p>\r\n<h2>4.komet</h2>\r\n<p>komet atau yang sering disebut bintang berekor merupakan benda langit yang mengorbit pada matahari dengan garis orbit yang mengorbit pada matahari dengan garis orbit yang sangat lonjong. ekor komet terbentuk karena serpihan kristal-kristal es rapuh yang terlepas dari badan komet. kristal-kristal tersebut membentuk ekor yang selalu menjauhi matahari akibat tekanan angin matahari yang menguapkan partikel es tersebut.</p>\r\n<p>sumber :<a href=\"https://teknologi.bisnis.com/read/20220419/84/1524644/8-planet-diurutkan-dari-matahari-nama-nama-planet-di-tata-surya/2\">8 Planet Diurutkan dari Matahari: Nama-Nama Planet di Tata Surya (bisnis.com)</a></p>', '2023-11-23 08:29:04', NULL, 'brian', 'https://www.bing.com/videos/riverview/relatedvideo?&q=video&&mid=E8C708A42E01A8420886E8C708A42E01A8420886&&FORM=VRDGAR', 'tata-surya.jpeg\r\n', ''),
(23, 'BAHASA JAWA(TEKS PACHELATON )', '<p>membuat teks pachelaton dengan 3 orang pemeran</p>\r\n<p dir=\"ltr\">TEKS PACHELATON/DIALOG PITEPANGAN</p>\r\n<p dir=\"ltr\">Dhafa : Assallammu&rsquo;alaikum, nami kula Dhafa aji Saputra saget dipuntimbali dhafa. Namaning sampeyan sinten?</p>\r\n<p dir=\"ltr\">Brian : Wa&rsquo;alaikumusallam, nami kula Brian adi pangestu saget dipuntimbali brian</p>\r\n<p dir=\"ltr\">Dhafa :niki rencang kula jihan</p>\r\n<p dir=\"ltr\">Jihan : Sugeng enjing. Nami kula Jihan hauroo rihaadatul a saget dipuntimbali jihan. Menawi angsal ngertos sampeyan griyane pundi?</p>\r\n<p dir=\"ltr\">Brian : sugeng enjing jihan, kulo griyane ing Desa sukosari kec jumantono. Dhafa lan jihan pundi griyanepun?</p>\r\n<p dir=\"ltr\">Dhafa : kulo griyane ing&nbsp; PPSA Tawangmangu</p>\r\n<p dir=\"ltr\">Jihan : Kulo griyane ing karanganyar.</p>\r\n<p dir=\"ltr\">Brian :lha niki podo sekolah ing pundi</p>\r\n<p dir=\"ltr\">Dhafa :kula sekolah ing smkn 2 karanganyar</p>\r\n<p dir=\"ltr\">Jihan :kula ngeh sami</p>\r\n<p dir=\"ltr\">Brian :weh nopo ngeh panjenengan sekaliyan sekolah ing mriku, kulo njeh teng mriku</p>\r\n<p dir=\"ltr\">Dhafa :lha panjenengan niku jurusan napa,menawi kula ing jurusan rpl kelas a</p>\r\n<p dir=\"ltr\">brian :kula jurusan rpl kelas c</p>\r\n<p dir=\"ltr\">jihan :kula ngeh sami nanging kelas b, ealah sak jurusan to tibak e niki</p>\r\n<p dir=\"ltr\">dhafa :wah iya sak jurusan</p>\r\n<p dir=\"ltr\">jihan :ngeh yen ngoten monggo kekancan ing media social supados tambah akrab</p>\r\n<p dir=\"ltr\">brian :njih, monggo</p>\r\n<p dir=\"ltr\">Dhafa : Brian, sampeyan menawi sekolah wonten niki ajeng dados punapa?</p>\r\n<p dir=\"ltr\">Brian : kula ajeng badhe Programmer sing nyambut damel saking griya. Yen panjenengan?</p>\r\n<p dir=\"ltr\">Jihan : kula ajeng dados dokter</p>\r\n<p dir=\"ltr\">Dhafa : kula ajeng dados ultramen</p>\r\n<p dir=\"ltr\">brian :njih monggo, lha niki panjenengan sedaya ajeng tindak pundi?</p>\r\n<p dir=\"ltr\">Jihan :mboten niki namong mlampah-mlampah ing taman</p>\r\n<p dir=\"ltr\">Brian :ngeh pun kula pamit riyen ajeng mantuk</p>\r\n<p dir=\"ltr\">Jihan,Dhafa: ngeh, monggo</p>\r\n<p>&nbsp;</p>', '2023-11-24 09:09:23', NULL, 'brian', '', '', 'https://docs.google.com/document/d/1U8kynXngoGnS-7JfeCsW1GQnAkCFE3Hu/edit?usp=drive_link&ouid=103218870744675063486&rtpof=true&sd=true'),
(24, 'SENI BUDAYA(TARI MODERN)', '<p>.</p>', '2023-11-24 09:10:11', NULL, 'brian', 'lS5zX9CBvRU', '', ''),
(31, 'SEJARAH(JAMAN PALEOLITIKUM)', '<h2 style=\"line-height: 1.2; text-align: center;\"><strong>ZAMAN PALEOLITIKUM</strong></h2>\r\n<p style=\"line-height: 1.2; text-align: center;\">Zaman Batu Tua (Paleolithikum) diperkirakan berlangsung kira-kira 600.000 tahun yang lalu. Pada zaman Palelithikum ini alat-alat yang dihasilkan masih sangat kasar dan sederhana sekali.</p>\r\n<h2 style=\"line-height: 1.2;\"><strong>1.Jenis Manusia Zaman Paleolithikum</strong></h2>\r\n<p style=\"line-height: 1.2;\">Berdasarkan penemuan fosil manusia purba, jenis manusia purba hidup pada zaman Paleolitikum adalah Pithecanthropus Erectus, Homo Wajakensis, Meganthropus paleojavanicus, dan Homo Soliensis. Fosil ini ditemukan di aliran sungai Bengawan Solo.</p>\r\n<h2 style=\"line-height: 1.2;\"><strong>2. Kebudayaan Zaman Paleolithikum</strong></h2>\r\n<p style=\"line-height: 1.2;\"><strong>Kebudayaan Pacitan</strong> Pada tahun 1935, von Koenigswald menemukan alat batu dan kapak genggam di daerah Pacitan. Kapak genggam itu berbentuk kapak tetapi tidak bertangkai. Kapak ini masih dikerjakan dengan sangat kasar dan belum dihaluskan. Para ahli menyebutkan bahwa kapak itu adalah kapak penetak. Selain di Pacitan alat-alat banyak ditemukan di Progo dan Gombong (Jawa Tengah), Sukabumi (Jawa Barat), dan Lahat (Sumatera Utara) <strong>Kebudayaan Ngandong</strong> Para ahli berhasil menemukan alat-alat dari tulang, flakes, alat penusuk dari tanduk rusa dan ujung tombak bergigi di daerah Ngandong dan Sidoarjo. Selain itu di dekat Sangiran ditemukan alat sangat kecil dari betuan yang amat indah. Alat ini dinamakan Serbih Pilah, dan banyak ditemukan di Cabbenge (Sulawesi Selatan) yang terbuat dari batu-batu indah seperti kalsedon. Kebudayaan Ngandong juga didukung oleh penemuan lukisan pada dinding goa seperti lukisan tapak tangan berwarna merah dan babi hutan ditemukan di Goa Leang Pattae (Sulawesi Selatan)</p>\r\n<h2 style=\"line-height: 1.2;\"><strong>ciri-ciri zaman Paleolithikum:</strong></h2>\r\n<ol>\r\n<li>Hidup berpindah-pindah (Nomaden) 2.Berburu (Food Gathering) 3.Menangkap ikan</li>\r\n</ol>\r\n<h4 style=\"line-height: 1.2;\">alat-alat:</h4>\r\n<ul>\r\n<li style=\"line-height: 1.2;\">Kapak Genggam</li>\r\n<li style=\"line-height: 1.2;\">Kapak Perimbas</li>\r\n<li style=\"line-height: 1.2;\">Alat Tulang Binatang atau Tanduk Rusa</li>\r\n<li style=\"line-height: 1.2;\">Flakes Batu Chalcedon</li>\r\n</ul>\r\n<h2 style=\"line-height: 1.2;\"><strong>peninggalan zaman Paleolithikum</strong></h2>\r\n<p style=\"line-height: 1.2;\">beberapa hasil kebudayaan dari zaman paleolitikum, di antaranya adalah kapak genggam, kapak perimbas, monofacial,alat-alat serpih, chopper, dan beberapa jenis kapak yang telah dikerjakan kedua sisinya.</p>', '2023-11-27 10:31:42', NULL, 'brian', '', 'sejarah.jpg', ''),
(34, 'INGGRIS', '<h2 style=\"text-align: center;\">BLOGGING WEB</h2>\r\n<p>blogging web presentation by kelompok 5 with the member:</p>\r\n<p>brian adi pangestu, fattah, galieh, dafa</p>\r\nblogging website is an online platform where individuals or groups regularly post content in a reverse chronological order. These posts, often in the form of articles, provide information, opinions, or updates on specific topic. \r\n', '2023-11-28 18:24:30', NULL, 'brian', '', '', 'https://docs.google.com/presentation/d/1rDYizJQ7HutKeTlKHz22DQJPjM4-OzxD/edit?usp=sharing&ouid=103218870744675063486&rtpof=true&sd=true');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `isi`
--
ALTER TABLE `isi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `isi`
--
ALTER TABLE `isi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
