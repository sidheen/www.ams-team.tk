-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: May 05, 2016 at 01:50 PM
-- Server version: 10.0.23-MariaDB
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zlspanel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `historyall`
--

CREATE TABLE IF NOT EXISTS `historyall` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `no` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `pembeli` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `barang` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `harga` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Sukses','Belum','Gagal','Pending') COLLATE utf8_swedish_ci NOT NULL,
  `data` varchar(1000) COLLATE utf8_swedish_ci NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=135 ;

--
-- Dumping data for table `historyall`
--

INSERT INTO `historyall` (`id`, `no`, `pembeli`, `barang`, `harga`, `status`, `data`, `tanggal`) VALUES
(126, '4825', 'taufanzeze59', '100 Followers Instagram Server 1', '2400', 'Sukses', 'Url/Username : taufanzeze59', '2016-05-02'),
(127, '4705', 'demo', 'LogoShop', '2500', 'Belum', 'Nama Logo : [ vip cyber  ] -- Anime : [ naruto ]', '2016-05-02'),
(128, '2757', 'zls-faidaan', '100 Facebook Post Likes Server 12', '1800', 'Sukses', 'Url/Username : https://mobile.facebook.com/story.php?story_fbid=150214665381223', '2016-05-02'),
(129, '6527', 'faidaan404', '200 Followers Instagram Server 2', '3600', 'Sukses', 'Url/Username : faidaan404', '2016-05-02'),
(130, '6597', 'zls-faidaan', 'PP', '2500', 'Belum', 'Kontak : [ facebook.com/faidaan404 ] -- Anime : [ Itachi ]', '2016-05-03'),
(131, '5579', 'taufanzeze59', '100 Followers Instagram Server 1', '2400', 'Sukses', 'Url/Username : taufanzeze59', '2016-05-03'),
(132, '3545', 'taufanzeze59', '100 Followers Instagram Server 1', '2400', 'Sukses', 'Url/Username : taufanzeze59', '2016-05-03'),
(133, '2367', 'taufanzeze59', '100 Followers Instagram Server 1', '2400', 'Sukses', 'Url/Username : taufanzeze59', '2016-05-04'),
(134, '9506', 'taufan', 'workgems.gq COC', '7000', 'Sukses', '-', '2016-05-05');

-- --------------------------------------------------------

--
-- Table structure for table `orderphising`
--

CREATE TABLE IF NOT EXISTS `orderphising` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `passworde` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `jenis` enum('COC','LGR','Garena','Gemscool','NC') COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `harga` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=99 ;

--
-- Dumping data for table `orderphising`
--

INSERT INTO `orderphising` (`id`, `passworde`, `jenis`, `link`, `harga`, `email`) VALUES
(67, '=.2Tb+$~lxK?', 'COC', 'workgems.gq', '7000', 'rizkisilvan260@yahoo.com'),
(89, ' -;z7[(f;U=T#', 'Garena', 'redemmcode.gq', '7000', 'rizkisilvan260@yahoo.com'),
(52, 'PcU%L$!&;MSz', 'LGR', 'eventlgrv1.gq', '7000', 'rizkisilvan260@yahoo.com'),
(98, 'NKZJn^F8R%y}', 'NC', 'freeeventfo.gq', '7000', 'rizkisilvan260@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fbid` varchar(25) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `level` enum('Admin','Reseller','Member','Agen','Banned') COLLATE utf8_swedish_ci NOT NULL,
  `saldo` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=6600 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fbid`, `username`, `password`, `nama`, `level`, `saldo`, `uplink`) VALUES
(242, '100011777966191', 'taufan', 'makernomor1', 'Taufan ZeZe', 'Admin', '99880800', 'ADMIN RESMI'),
(243, '100011780719176', 'zls-faidaan', 'faidan182', 'Faidaan Acnologia', 'Admin', '99992100', 'ADMIN RESMI'),
(6599, '100011234647193', 'SuperDede', 'CowoKece', 'Si Mahi', 'Member', '0', 'taufan'),
(6598, '100001203239048', 'rezabjm588', 'dewa100pol', 'Fahreza', 'Member', '0', 'taufan'),
(6597, '100010140338529', 'arif', 'arif', 'arif taufiqqurohman sellerid ', 'Member', '0', 'taufan'),
(6596, '100011449734380', 'andisaputra', 'andi713', 'Muhammad Andi Saputra', 'Member', '0', 'taufan'),
(6595, '100008364811723', 'bozr123', 'bozr12345', 'bozr', 'Member', '0', 'taufan'),
(6593, '100010556978499', 'iqbal', 'sudah123', 'Iqbal rahmatullah', 'Member', '0', 'taufan');

-- --------------------------------------------------------

--
-- Table structure for table `vouchersaldo`
--

CREATE TABLE IF NOT EXISTS `vouchersaldo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `isi` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `kode` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci AUTO_INCREMENT=30 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
