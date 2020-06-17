-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 17 Cze 2020, 22:46
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `japan`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `prefecture` text NOT NULL,
  `population` double NOT NULL,
  `surface` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `cities`
--

INSERT INTO `cities` (`id`, `name`, `prefecture`, `population`, `surface`) VALUES
(1, 'Tokio', 'Tokio', 13942856, 2190.93),
(2, 'Sapporo', 'Hokkaidō', 1921831, 1121.12),
(3, 'Hiroszima', 'Hiroszima', 1173980, 905.01),
(4, 'Kioto', 'Kioto', 1472027, 827.83),
(5, 'Jokohama', 'Kanagawa', 3724844, 437.56),
(6, 'Osaka', 'Osaka', 2702022, 225.21),
(7, 'Naha', 'Okinawa', 314906, 38.99),
(8, 'Yoshikawa', 'Saitama', 65297, 31.62),
(9, 'Matsubara', 'Osaka', 125303, 16.66);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla tabel zrzutów
--

--
-- AUTO_INCREMENT dla tabeli `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
