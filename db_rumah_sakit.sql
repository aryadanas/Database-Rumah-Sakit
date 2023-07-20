-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 20, 2023 at 06:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rumah_sakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `catatan_medis`
--

CREATE TABLE `catatan_medis` (
  `record_id` int NOT NULL,
  `pasien_id` int DEFAULT NULL,
  `dokter_id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `treatment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `catatan_medis`
--

INSERT INTO `catatan_medis` (`record_id`, `pasien_id`, `dokter_id`, `date`, `diagnosis`, `treatment`) VALUES
(1, 4, 1, '2023-07-25', 'Tekanan darah tinggi', 'Obat yang diresepkan dan perubahan gaya hidup'),
(2, 3, 2, '2023-07-27', 'Flu biasa', 'Istirahat dan meminum obat'),
(3, 2, 2, '2023-07-28', 'Sakit tenggorokan', 'Antibiotik yang diresepkan dan pelega tenggorokan'),
(4, 5, 4, '2023-07-28', 'Hamil 7 bulan', 'Kontrol dan pemberian vitamin'),
(5, 1, 3, '2023-07-29', 'Nyeri otot', 'Istirahat dan meminum obat');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `dokter_id` int NOT NULL,
  `dokter_name` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`dokter_id`, `dokter_name`, `specialization`, `phone_number`, `email`) VALUES
(1, 'Dr. James Brown', 'Ahli jantung', '085762321671', 'james.brown@example.com'),
(2, 'Dr. Emily White', 'Dokter anak', '085762386532', 'emily.white@example.com'),
(3, 'Dr. Robert Lee', 'Dermatolog', '085734567889', 'robert.lee@example.com'),
(4, 'Dr. Sarah Adams', 'Dokter kandungan', '085762331897', 'sarah.adams@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_temu`
--

CREATE TABLE `jadwal_temu` (
  `Jadwal_Temu_id` int NOT NULL,
  `pasien_id` int DEFAULT NULL,
  `dokter_id` int DEFAULT NULL,
  `Jadwal_Temu_date` date DEFAULT NULL,
  `Jadwal_Temu_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jadwal_temu`
--

INSERT INTO `jadwal_temu` (`Jadwal_Temu_id`, `pasien_id`, `dokter_id`, `Jadwal_Temu_date`, `Jadwal_Temu_time`) VALUES
(1, 4, 1, '2023-07-25', '09:30:00'),
(2, 3, 2, '2023-07-27', '11:00:00'),
(3, 2, 2, '2023-07-28', '10:15:00'),
(4, 5, 2, '2023-07-28', '15:00:00'),
(5, 1, 3, '2023-07-29', '09:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `obat_id` int NOT NULL,
  `pasien_id` int DEFAULT NULL,
  `obat_name` varchar(100) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `dosis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`obat_id`, `pasien_id`, `obat_name`, `keterangan`, `dosis`) VALUES
(1, 1, 'Aspirin', 'Pereda nyeri', '500mg'),
(2, 2, 'Amoxicillin', 'Antibiotic', '250mg'),
(3, 2, 'Cough Syrup', 'Pereda batuk', '10ml'),
(4, 3, 'Siladex Mucolytic', 'Obat flu', '10ml'),
(5, 5, 'Osfit DHA', 'Vitamin Ibu hamil', '250mg'),
(6, 4, 'Propanol', 'Obat tekanan darah tinggi', '50mg');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `pasien_id` int NOT NULL,
  `pasien_name` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`pasien_id`, `pasien_name`, `date_of_birth`, `gender`, `address`, `phone_number`, `email`) VALUES
(1, 'John Doe', '1990-05-15', 'Laki-laki', 'Jl. Merdeka No. 25', '0876538129812', 'john.doe@gmail.com'),
(2, 'Jane Smith', '2015-11-20', 'Perempuan', 'Jl. Budi Utomo No. 5', '08769087681', 'jane.smith@gmail.com'),
(3, 'Michael Johnson', '2017-08-12', 'Laki-laki', 'Jl. Kembangan No. 3', '089542237439', 'michael.johnson@gmail.com'),
(4, 'Emily Davis', '1992-03-28', 'Perempuan', 'Jl. Air Indah No. 2', '081936473281', 'emily.davis@gmail.com'),
(5, 'Etna Lili', '1992-03-28', 'Perempuan', 'Jl. Haji Salim No. 4', '081936428764', 'etna.lili@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan_medis`
--
ALTER TABLE `catatan_medis`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`dokter_id`);

--
-- Indexes for table `jadwal_temu`
--
ALTER TABLE `jadwal_temu`
  ADD PRIMARY KEY (`Jadwal_Temu_id`),
  ADD KEY `pasien_id` (`pasien_id`),
  ADD KEY `dokter_id` (`dokter_id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`obat_id`),
  ADD KEY `pasien_id` (`pasien_id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`pasien_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `catatan_medis`
--
ALTER TABLE `catatan_medis`
  ADD CONSTRAINT `catatan_medis_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`pasien_id`),
  ADD CONSTRAINT `catatan_medis_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`dokter_id`);

--
-- Constraints for table `jadwal_temu`
--
ALTER TABLE `jadwal_temu`
  ADD CONSTRAINT `jadwal_temu_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`pasien_id`),
  ADD CONSTRAINT `jadwal_temu_ibfk_2` FOREIGN KEY (`dokter_id`) REFERENCES `dokter` (`dokter_id`);

--
-- Constraints for table `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `obat_ibfk_1` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`pasien_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
