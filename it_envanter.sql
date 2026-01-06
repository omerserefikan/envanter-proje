-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Oca 2026, 17:11:00
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `it_envanter`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `envanter`
--

CREATE TABLE `envanter` (
  `id` int(11) NOT NULL,
  `cihaz_adi` varchar(100) NOT NULL,
  `durum` varchar(50) DEFAULT NULL,
  `zimmetli_kisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `envanter`
--

INSERT INTO `envanter` (`id`, `cihaz_adi`, `durum`, `zimmetli_kisi`) VALUES
(2, 'deneme 2', 'Stokta', 'ömer şeref ikan'),
(3, 'deneme 3', 'Arızalı', 'ömer şeref ikan'),
(4, 'Dell Latitude 5420', 'Kullanımda', 'Ahmet Yılmaz'),
(5, 'HP EliteBook 840', 'Stokta', NULL),
(6, 'MacBook Pro M2', 'Kullanımda', 'Zeynep Kaya'),
(7, 'Samsung 27\" Monitör', 'Arızalı', 'Mehmet Demir'),
(8, 'Lenovo ThinkPad X1', 'Kullanımda', 'Selin Işık'),
(9, 'Logitech G502 Mouse', 'Stokta', NULL),
(10, 'Asus ProArt Monitör', 'Kullanımda', 'Caner Erkin'),
(11, 'Canon G3411 Yazıcı', 'Arızalı', 'Burak Aksoy'),
(12, 'Cisco Network Switch', 'Kullanımda', 'Deniz Yurt'),
(13, 'iPad Air 5. Nesil', 'Kullanımda', 'Ece Seçkin'),
(14, 'Dell UltraSharp 24', 'Stokta', NULL),
(15, 'HP LaserJet Pro', 'Kullanımda', 'Murat Boz'),
(16, 'Logitech K120 Klavye', 'Stokta', NULL),
(17, 'Epson L3150 Yazıcı', 'Arızalı', 'Hadise Açıkgöz'),
(18, 'ViewSonic Monitör', 'Kullanımda', 'Tarkan Tevetoğlu'),
(19, 'Seagate 2TB HDD', 'Stokta', NULL),
(20, 'TP-Link Router', 'Kullanımda', 'Sertab Erener'),
(21, 'Philips Hue Lamba', 'Kullanımda', 'Mabel Matiz'),
(22, 'Sony WH-1000XM4', 'Arızalı', 'Fatma Turgut'),
(23, 'Microsoft Surface Pro', 'Kullanımda', 'Gülşen Bayraktar'),
(24, 'Dell Precision 3560', 'Stokta', NULL),
(25, 'Lenovo Legion 5', 'Kullanımda', 'Mete Gazoz'),
(26, 'MSI Optix Monitör', 'Arızalı', 'Eda Erdem'),
(27, 'Razer DeathAdder', 'Kullanımda', 'Zehra Güneş'),
(28, 'SteelSeries Apex 7', 'Stokta', NULL),
(29, 'Wacom Intuos Tablet', 'Kullanımda', 'İlkin Aydın'),
(30, 'Brother Etiket Yazıcı', 'Kullanımda', 'Hande Baladın'),
(31, 'Synology NAS Server', 'Stokta', NULL),
(32, 'Ubiquiti Access Point', 'Kullanımda', 'Cansu Özbay'),
(33, 'BenQ SW271 Monitör', 'Arızalı', 'Melissa Vargas'),
(34, 'Apple iMac 24\"', 'Kullanımda', 'Ebrar Karakurt'),
(35, 'HP Pavilion Desktop', 'Stokta', NULL),
(36, 'Logitech C922 WebCam', 'Kullanımda', 'Saliha Şahin'),
(37, 'Blue Yeti Mikrofon', 'Arızalı', 'Ayça Aykaç'),
(38, 'Corsair 16GB RAM', 'Stokta', NULL),
(39, 'Kingston 1TB SSD', 'Stokta', NULL),
(40, 'Gigabyte RTX 3060', 'Kullanımda', 'Kerem Aktürkoğlu'),
(41, 'Intel Core i9 CPU', 'Stokta', NULL),
(42, 'AMD Ryzen 9 5900X', 'Kullanımda', 'Barış Alper Yılmaz'),
(43, 'Cooler Master Kasa', 'Stokta', NULL),
(44, 'Thermaltake PSU', 'Arızalı', 'Ferdi Kadıoğlu'),
(45, 'Western Digital 4TB', 'Stokta', NULL),
(46, 'SanDisk 128GB USB', 'Kullanımda', 'İrfan Can Kahveci'),
(47, 'QNAP Depolama Birimi', 'Stokta', NULL),
(48, 'Bose QuietComfort', 'Kullanımda', 'Semih Kılıçsoy'),
(49, 'JBL Flip 6 Hoparlör', 'Arızalı', 'Kenan Yıldız'),
(50, 'Nintendo Switch', 'Stokta', NULL),
(51, 'PlayStation 5', 'Kullanımda', 'Arda Güler'),
(52, 'Xbox Series X', 'Kullanımda', 'Hakan Çalhanoğlu'),
(53, 'GoPro Hero 11', 'Arızalı', 'Merih Demiral'),
(54, 'DJI Mini 3 Pro', 'Stokta', NULL),
(55, 'Kindle Paperwhite', 'Kullanımda', 'Zeki Çelik'),
(56, 'Fitbit Charge 5', 'Stokta', NULL),
(57, 'Garmin Fenix 7', 'Kullanımda', 'Yunus Akgün'),
(58, 'Apple Watch Series 8', 'Arızalı', 'Cenk Tosun'),
(59, 'Samsung Galaxy S23', 'Kullanımda', 'Uğurcan Çakır'),
(60, 'Google Pixel 7', 'Stokta', NULL),
(61, 'OnePlus 11 Pro', 'Kullanımda', 'Altay Bayındır'),
(62, 'Xiaomi 13 Ultra', 'Arızalı', 'Ozan Kabak'),
(63, 'Huawei MateBook X', 'Kullanımda', 'Salih Özcan'),
(64, 'Fujitsu Tarayıcı', 'Stokta', NULL),
(65, 'Kyocera Fotokopi', 'Kullanımda', 'Orkun Kökçü'),
(66, 'Ricoh Lazer Yazıcı', 'Arızalı', 'Eren Elmalı'),
(67, 'Zebra Barkod Yazıcı', 'Stokta', NULL),
(68, 'Honeywell Okuyucu', 'Kullanımda', 'Berkan Kutlu'),
(69, 'Datalogic Terminal', 'Stokta', NULL),
(70, 'APC Smart-UPS', 'Kullanımda', 'Abdülkerim Bardakcı'),
(71, 'Eaton Güç Kaynağı', 'Arızalı', 'Samet Akaydın'),
(72, 'Netgear Switch', 'Stokta', NULL),
(73, 'MikroTik Router', 'Kullanımda', 'Cengiz Ünder'),
(74, 'Palo Alto Firewall', 'Kullanımda', 'Enes Ünal'),
(75, 'Fortinet Güvenlik', 'Stokta', NULL),
(76, 'Check Point Gateway', 'Kullanımda', 'Yusuf Yazıcı'),
(77, 'Sophos UTM', 'Arızalı', 'Okay Yokuşlu'),
(78, 'Juniper Router', 'Stokta', NULL),
(79, 'Aruba Access Point', 'Kullanımda', 'Mert Günok'),
(80, 'Polycom Konferans', 'Stokta', NULL),
(81, 'Yealink IP Telefon', 'Kullanımda', 'İsmail Yüksek'),
(82, 'Avaya Santral', 'Arızalı', 'Bertuğ Yıldırım'),
(83, 'Grandstream Telefon', 'Stokta', NULL),
(84, 'Sennheiser Kulaklık', 'Kullanımda', 'Onur Bulut'),
(85, 'Jabark Kulaklık', 'Kullanımda', 'Umut Nayir'),
(86, 'Plantronics Set', 'Stokta', NULL),
(87, 'Beyerdynamic Mic', 'Kullanımda', 'Doğan Alemdar'),
(88, 'Focusrite Interface', 'Arızalı', 'Yasin Öztekin'),
(89, 'PreSonus Monitör', 'Stokta', NULL),
(90, 'Yamaha Mikser', 'Kullanımda', 'Arda Turan'),
(91, 'Shure SM7B', 'Kullanımda', 'Burak Yılmaz'),
(92, 'Rode NT1 Kit', 'Arızalı', 'Selçuk İnan'),
(93, 'Audio-Technica', 'Stokta', NULL),
(94, 'Lexmark Yazıcı', 'Kullanımda', 'Gökhan Gönül'),
(95, 'OKI Matris Yazıcı', 'Stokta', NULL),
(96, 'Star Fiş Yazıcı', 'Kullanımda', 'Caner Erkin'),
(97, 'Elo Dokunmatik Ekran', 'Arızalı', 'Hakan Balta'),
(98, 'Bizerba Terazi', 'Stokta', NULL),
(99, 'Casio El Terminali', 'Kullanımda', 'Sabri Sarıoğlu'),
(100, 'Intermec Yazıcı', 'Kullanımda', 'Servet Çetin'),
(101, 'Symbol Okuyucu', 'Stokta', NULL),
(102, 'Motorola Telsiz', 'Arızalı', 'Necip Uysal'),
(103, 'Kenwood Telsiz', 'Kullanımda', 'Gökhan Töre');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `envanter`
--
ALTER TABLE `envanter`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `envanter`
--
ALTER TABLE `envanter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
