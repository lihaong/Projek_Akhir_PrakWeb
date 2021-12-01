-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2021 at 04:03 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokokomputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `Code_Kategory` varchar(20) NOT NULL,
  `nama_kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`Code_Kategory`, `nama_kategori`) VALUES
('Displays', 'Displays'),
('GPU', 'Grhapic Cards'),
('Laptops', 'Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id_Pelanggan` int(11) NOT NULL,
  `Email` varchar(225) NOT NULL,
  `Password` varchar(225) NOT NULL,
  `Nama` varchar(225) NOT NULL,
  `Street` varchar(225) NOT NULL,
  `Country` varchar(225) NOT NULL,
  `City` varchar(225) NOT NULL,
  `District` varchar(255) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `Phone` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Id_Pelanggan`, `Email`, `Password`, `Nama`, `Street`, `Country`, `City`, `District`, `zip`, `Phone`) VALUES
(36, 'admin@gmail.com', '$2y$10$uhlmBhKq9a.yWeNfR.5Tj.1AH2HU6vEc5KIOgkSN6B95Px4aLagaG', 'Admin Lihaong', 'Jl. Ikhlas 32', 'Indonesia', 'Magelang', 'Windusari', '56152', '082313091907'),
(46, 'gilang@gmail.com', '$2y$10$jOVkxsT4ogvQdU4B/KS.IuBETTzNAixTEUo0A2Ie9bgdkjdyHWaiC', 'Gilang Yoenal M', 'banjarasari', 'Indonesia', 'magelang', 'Windusari', '56152', '082313091907'),
(52, 'fajar@gmail.com', '$2y$10$T5t.wht2J6wI0QTXavJub.N9QeQO0PTECfEQQwgzQAokN76OCJOci', 'Fajar Andikha', 'banjarasari', 'Indonesia', 'magelang', 'Windusari', '56152', '082313091907');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `Id_pembelian` int(11) NOT NULL,
  `Id_Pelanggan` int(11) NOT NULL,
  `Tot_Harga` int(225) NOT NULL,
  `Tot_Barang` int(40) NOT NULL,
  `DaftarBarang` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Code_Produk` int(11) NOT NULL,
  `Code_Kategory` varchar(40) NOT NULL,
  `Nama_Produk` varchar(225) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Stok_Produk` int(11) DEFAULT NULL,
  `Deskripsi` text NOT NULL,
  `Gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Code_Produk`, `Code_Kategory`, `Nama_Produk`, `Harga`, `Stok_Produk`, `Deskripsi`, `Gambar`) VALUES
(28, 'GPU', 'ROG Strix GeForce RTX™ 3070 V2', 1300, 2, 'Graphics Engine : NVIDIA® GeForce RTX™ 3070\r\nVideo Memory : GDDR6 8GB\r\nCUDA Core : 5888', 'RTX 3070 V2.png'),
(29, 'Laptops', 'ROG Strix G15 G512 Gaming', 2000, 4, 'Processor : 10th Gen Intel® Core™ i7, Graphic Card : NVIDIA GeForce GTX 1650 Ti', 'Laptop.png'),
(32, 'GPU', 'ROG Strix RX 6600 XT 8GB', 1600, 3, 'ROG Strix Radeon™ RX 6600 XT OC Edition 8 GB GDDR6 memiliki kemampuan pendinginan dan performa daya yang dahsyat.', 'RX 6600 XT.png'),
(33, 'GPU', 'ROG STRIX RTX3090 24GB', 1500, 5, 'Graphic Engine : NVIDIA® GeForce RTX™ 3090, Video Memory : 24GB GDDR6X', 'ROG-STRIX-RTX3090-24GB.png'),
(34, 'GPU', 'ROG STRIX LC RTX3080TI 12GB', 1300, 4, 'Graphic Engine : NVIDIA® GeForce RTX™ 3080 Ti,\nVideo Memory : 12GB GDDR6X', 'ROG-STRIX-LC-RTX3080TI-012G-Gaming.png'),
(35, 'GPU', 'ROG STRIX LC RX6900XT 16GB', 1500, 6, 'Graphic Engine : AMD Radeon RX 6900 XT, Video Memory : 16GB GDDR6', 'ROG-STRIX-LC-RX6900XT-O16G-Gaming.png'),
(36, 'Laptops', 'ROG Zephyrus Duo 15 SE GX551', 2800, 2, 'Processor : AMD Ryzen™ 9 5980HX Mobile Processor, Graphic Card : NVIDIA® GeForce RTX™ 3060 Laptop GPU', 'ROG Zephyrus Duo 15 SE.png'),
(37, 'Laptops', 'ROG Flow X13 GV301QE GC31S', 3500, 2, 'Processor : AMD Ryzen™ 9 5000 Series, Graphic Card : GeForce RTX™ 3050 Ti Laptop GPU', 'ROG Flow X13.png'),
(38, 'Laptops', 'ROG Zephyrus G15 GA503QE', 1250, 1, 'Processor : AMD Ryzen™ 9 5000 Series, Graphic Card : GeForce RTX™ 3050 Ti Laptop GPU', 'ROG Zeyphrus G15 GA503QE.png'),
(39, 'Laptops', ' ROG STRIX SCAR 17 G733QR', 4000, 1, 'Processor : AMD Ryzen™ 9 5900HX, Graphic Card : NVIDIA® GeForce RTX™ 3080', 'ROG Strix SCAR 17.png'),
(40, 'Laptops', 'ROG Zephyrus M16 GU603HM', 2700, 6, 'Processor : 11th Gen Intel® Core™ i7, Graphic Card : GeForce RTX™ 3060 Laptop GPU', 'ROG Zephyrus M16 GU603HM.png'),
(42, 'Displays', 'ROG STRIX XG17AHP', 600, 2, 'Portable USB Type-C – 17,3-inci, IPS, FHD (FullHD, 1920x1080), 240Hz(Di atas 144Hz),', 'ROG STRIX XG17AHP.png'),
(43, 'Displays', 'ROG Strix XG258Q', 400, 5, 'Monitor Game ROG Strix XG258Q – 25 inci, FHD (1920x1080), Native 240Hz, 1mdtk, G-SYNC', 'ROG Strix XG258Q.png'),
(44, 'Displays', 'ROG Strix XG49VQ  Super Ultra-Wide', 3000, 1, '49-inch 32:9 (3840 x 1080), 144Hz, FreeSync™ 2 HDR, DisplayHDR™ 400, DCI-P3: 90%, Shadow Boost', 'ROG Strix XG49VQ.png'),
(45, 'Displays', 'ROG Strix XG438Q HDR Large', 2400, 3, '43-inch, 4K (3840 x 2160), 120 Hz, FreeSync™ 2 HDR, DisplayHDR™ 600, DCI-P3 90%, Shadow Boost, 10W Speaker*2, Remote Control', 'ROG Strix XG438Q.png'),
(46, 'Displays', 'ROG Strix XG32VC', 1000, 2, '31,5 inci WQHD (2560 x 1440), IPS, 170Hz, 1ms MPRT, Extreme Low Motion Blur Sync, 125% sRGB, FreeSync Premium Pro, DisplayHDR™ 400', 'ROG Strix XG32VC.png'),
(47, 'Displays', 'ASUS ROG Swift Curved PG348Q', 1000, 3, 'Panel Size (inch) : 34, Curvature : 3800R, Aspect Ratio : 21:9, Color Space (sRGB) : 99%, Panel Type : IPS, Panel Backlight :  LED', 'ROG SWIFT PG348Q.png'),
(50, 'GPU', 'RTX 3070 Gundam White Edition', 2000, 3, 'Graphic Engine : NVIDIA® GeForce RTX™ 3070, Video Memory : 8GB GDDR6, Memory Speed : 14 Gbps', 'RTX 3080 Gundam Edition.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Code_Kategory`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_Pelanggan`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`Id_pembelian`),
  ADD KEY `Id_Pelanggan` (`Id_Pelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Code_Produk`),
  ADD KEY `Code_Kategory` (`Code_Kategory`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `Id_Pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `Id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `Code_Produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`Id_Pelanggan`) REFERENCES `pelanggan` (`Id_Pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`Code_Kategory`) REFERENCES `kategori` (`Code_Kategory`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
