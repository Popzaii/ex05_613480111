-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2026 at 07:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ex05_613480111`
--

-- --------------------------------------------------------

--
-- Table structure for table `dog_profiles`
--

CREATE TABLE `dog_profiles` (
  `dog_id` int(11) NOT NULL,
  `pet_name` varchar(50) NOT NULL COMMENT 'ชื่อสุนัข',
  `breed_group` varchar(50) NOT NULL COMMENT 'กลุ่มสายพันธุ์',
  `date_of_birth` date DEFAULT NULL COMMENT 'วันเกิด',
  `weight_lb` decimal(5,2) DEFAULT NULL COMMENT 'น้ำหนัก (ปอนด์)',
  `fur_texture` enum('Short','Long','Curly','Wire') DEFAULT NULL COMMENT 'ลักษณะขน',
  `microchip_id` varchar(20) DEFAULT NULL COMMENT 'เลขไมโครชิพ',
  `last_checkup` datetime DEFAULT NULL COMMENT 'ตรวจสุขภาพล่าสุด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dog_profiles`
--

INSERT INTO `dog_profiles` (`dog_id`, `pet_name`, `breed_group`, `date_of_birth`, `weight_lb`, `fur_texture`, `microchip_id`, `last_checkup`) VALUES
(1, 'Bacon', 'Corgi', '2022-01-10', 26.50, 'Short', 'MC001', '2024-01-15 10:00:00'),
(2, 'Mochi', 'Shiba Inu', '2021-05-20', 22.10, 'Short', 'MC002', '2024-02-10 09:30:00'),
(3, 'Waffle', 'Golden Retriever', '2020-11-05', 65.20, 'Long', 'MC003', '2023-12-01 14:20:00'),
(4, 'Tofu', 'Pomeranian', '2023-02-14', 7.50, 'Long', 'MC004', '2024-03-01 11:00:00'),
(5, 'Kuma', 'Akita', '2019-08-25', 85.00, 'Short', 'MC005', '2023-11-20 08:45:00'),
(6, 'Latte', 'Poodle', '2022-06-30', 12.80, 'Curly', 'MC006', '2024-01-20 15:30:00'),
(7, 'Olive', 'French Bulldog', '2021-03-12', 24.50, 'Short', 'MC007', '2024-02-25 10:15:00'),
(8, 'Cooper', 'Beagle', '2020-09-09', 28.30, 'Short', 'MC008', '2023-10-10 13:00:00'),
(9, 'Zelda', 'Siberian Husky', '2021-12-25', 50.40, 'Long', 'MC009', '2024-01-05 16:20:00'),
(10, 'Bento', 'Chihuahua', '2023-01-01', 4.20, 'Short', 'MC010', '2024-02-14 09:00:00'),
(11, 'Jasper', 'Dalmatian', '2021-07-15', 55.00, 'Short', 'MC011', '2023-12-15 11:30:00'),
(12, 'Luna', 'Samoyed', '2022-04-20', 48.20, 'Long', 'MC012', '2024-03-05 14:00:00'),
(13, 'Rex', 'German Shepherd', '2019-10-30', 75.60, 'Short', 'MC013', '2023-11-11 10:45:00'),
(14, 'Milo', 'Jack Russell', '2022-08-08', 15.10, 'Wire', 'MC014', '2024-01-12 15:15:00'),
(15, 'Bailey', 'Dachshund', '2021-11-11', 18.40, 'Short', 'MC015', '2024-02-02 08:30:00'),
(16, 'Trixie', 'Maltese', '2023-05-05', 6.80, 'Long', 'MC016', '2024-03-10 12:00:00'),
(17, 'Bruno', 'Rottweiler', '2020-03-20', 95.30, 'Short', 'MC017', '2023-09-25 16:45:00'),
(18, 'Sky', 'Border Collie', '2021-09-17', 42.10, 'Long', 'MC018', '2024-01-28 11:10:00'),
(19, 'Simba', 'Chow Chow', '2019-12-12', 60.50, 'Long', 'MC019', '2023-12-20 14:30:00'),
(20, 'Nala', 'Vizsla', '2022-02-02', 45.70, 'Short', 'MC020', '2024-02-18 09:20:00'),
(21, 'Shadow', 'Great Dane', '2020-06-06', 120.40, 'Short', 'MC021', '2023-11-30 10:00:00'),
(22, 'Peanut', 'Bichon Frise', '2023-04-01', 10.20, 'Curly', 'MC022', '2024-03-12 13:40:00'),
(23, 'Koda', 'Alaskan Malamute', '2021-10-10', 82.10, 'Long', 'MC023', '2024-01-18 15:50:00'),
(24, 'Ginger', 'Cocker Spaniel', '2022-07-22', 28.90, 'Long', 'MC024', '2024-02-20 11:25:00'),
(25, 'Duke', 'Boxer', '2020-05-05', 68.30, 'Short', 'MC025', '2023-12-05 08:15:00'),
(26, 'Rosie', 'Cavapoo', '2023-06-18', 14.50, 'Curly', 'MC026', '2024-03-15 10:30:00'),
(27, 'Tyson', 'Doberman', '2021-04-14', 80.20, 'Short', 'MC027', '2024-01-22 14:00:00'),
(28, 'Zoe', 'Shih Tzu', '2022-03-03', 11.40, 'Long', 'MC028', '2024-02-28 13:10:00'),
(29, 'Blue', 'Weimaraner', '2021-11-20', 70.10, 'Short', 'MC029', '2024-01-10 11:45:00'),
(30, 'Coco', 'Labrador', '2020-01-25', 72.80, 'Short', 'MC030', '2023-10-15 15:00:00'),
(31, 'Hunter', 'Greyhound', '2022-05-12', 65.40, 'Short', 'MC031', '2024-02-05 09:50:00'),
(32, 'Daisy', 'Basset Hound', '2021-08-30', 52.30, 'Short', 'MC032', '2024-01-30 14:15:00'),
(33, 'Oscar', 'Bull Terrier', '2020-07-07', 58.70, 'Short', 'MC033', '2023-12-12 10:20:00'),
(34, 'Ruby', 'Irish Setter', '2021-02-10', 62.40, 'Long', 'MC034', '2024-03-02 16:00:00'),
(35, 'Buster', 'Staffie', '2022-09-25', 38.10, 'Short', 'MC035', '2024-01-14 11:30:00'),
(36, 'Sasha', 'Afghan Hound', '2019-04-18', 54.00, 'Long', 'MC036', '2023-11-05 13:45:00'),
(37, 'Murphy', 'Old English Sheepdog', '2020-10-05', 78.20, 'Long', 'MC037', '2023-12-28 08:30:00'),
(38, 'Cleo', 'Basenji', '2023-01-12', 22.00, 'Short', 'MC038', '2024-02-12 10:10:00'),
(39, 'Rocco', 'Mastiff', '2018-06-15', 160.50, 'Short', 'MC039', '2023-09-30 15:40:00'),
(40, 'Piper', 'Sheltie', '2022-12-01', 20.30, 'Long', 'MC040', '2024-03-08 14:25:00'),
(41, 'Finn', 'Newfoundland', '2021-03-03', 130.20, 'Long', 'MC041', '2024-01-25 09:15:00'),
(42, 'Hazel', 'Australian Shepherd', '2022-10-20', 45.80, 'Long', 'MC042', '2024-02-16 11:50:00'),
(43, 'Otis', 'Pug', '2021-11-30', 18.50, 'Short', 'MC043', '2024-01-08 13:20:00'),
(44, 'Gigi', 'Havanese', '2023-05-15', 9.40, 'Long', 'MC044', '2024-03-14 10:40:00'),
(45, 'Ace', 'Belgian Malinois', '2020-08-12', 68.70, 'Short', 'MC045', '2023-12-18 15:10:00'),
(46, 'Noodle', 'Whippet', '2022-04-04', 30.20, 'Short', 'MC046', '2024-02-22 08:50:00'),
(47, 'Heidi', 'Saint Bernard', '2019-02-28', 145.00, 'Long', 'MC047', '2023-11-15 14:40:00'),
(48, 'Yoda', 'Boston Terrier', '2022-07-07', 20.10, 'Short', 'MC048', '2024-01-11 11:15:00'),
(49, 'Roxie', 'Pitbull', '2021-01-19', 55.40, 'Short', 'MC049', '2023-10-20 13:30:00'),
(51, 'Dango', 'Chiba', '2024-01-01', 12.50, 'Short', 'MC051', '2026-03-17 01:18:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dog_profiles`
--
ALTER TABLE `dog_profiles`
  ADD PRIMARY KEY (`dog_id`),
  ADD UNIQUE KEY `microchip_id` (`microchip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dog_profiles`
--
ALTER TABLE `dog_profiles`
  MODIFY `dog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
