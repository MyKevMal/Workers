-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Mrz 2021 um 01:55
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `lieferscheinprogramm`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestelldatabase`
--

CREATE TABLE `bestelldatabase` (
  `id` int(255) NOT NULL,
  `lieferscheinid` int(255) NOT NULL,
  `warenid` int(255) NOT NULL,
  `anzahl` int(255) NOT NULL,
  `flaschen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bestelldatabase`
--

INSERT INTO `bestelldatabase` (`id`, `lieferscheinid`, `warenid`, `anzahl`, `flaschen`) VALUES
(1, 1, 204, 1, 0),
(2, 1, 72, 13, 0),
(3, 1, 19, 55, 0),
(4, 2, 19, 11, 0),
(5, 2, 204, 1, 0),
(6, 2, 33, 12, 0),
(7, 3, 204, 1, 0),
(8, 3, 16, 14, 0),
(9, 3, 17, 12, 0),
(10, 3, 190, 12, 0),
(11, 3, 37, 18, 0),
(12, 3, 39, 18, 1),
(13, 4, 204, 1, 0),
(14, 4, 16, 25, 0),
(15, 4, 17, 15, 0),
(16, 4, 37, 12, 0),
(17, 4, 37, 12, 1),
(18, 4, 156, 180, 0),
(19, 4, 157, 48, 0),
(20, 5, 16, 15, 0),
(21, 6, 16, 12, 0),
(22, 7, 204, 1, 0),
(23, 7, 19, 12, 0),
(24, 7, 72, 12, 0),
(25, 8, 204, 1, 0),
(26, 8, 16, 12, 0),
(27, 8, 116, 8, 0),
(28, 8, 18, 4, 0),
(29, 8, 37, 12, 0),
(30, 8, 39, 12, 0),
(31, 8, 156, 60, 0),
(32, 8, 157, 24, 0),
(34, 9, 16, 12, 0),
(35, 9, 116, 8, 0),
(36, 9, 18, 4, 0),
(37, 10, 204, 1, 0),
(38, 10, 16, 12, 0),
(39, 10, 116, 8, 0),
(40, 10, 18, 4, 0),
(41, 10, 37, 12, 1),
(42, 10, 39, 12, 1),
(44, 10, 157, 24, 0),
(45, 7, 16, 12, 0),
(46, 7, 170, 23, 0),
(47, 5, 16, 2, 0),
(48, 0, 204, 1, 0),
(49, 35, 170, 1, 0),
(50, 36, 204, 1, 0),
(51, 36, 46, 12, 0),
(52, 36, 16, 15, 0),
(53, 36, 17, 12, 0),
(54, 36, 128, 8, 0),
(55, 36, 18, 10, 0),
(56, 36, 156, 60, 0),
(57, 37, 16, 12, 0),
(58, 37, 204, 1, 0),
(59, 37, 72, 33, 0),
(61, 37, 37, 12, 1),
(62, 38, 16, 12, 0),
(63, 38, 204, 1, 0),
(64, 38, 72, 33, 0),
(65, 38, 157, 23, 0),
(66, 38, 37, 12, 1),
(74, 40, 204, 1, 0),
(75, 40, 19, 22, 0),
(76, 40, 17, 12, 0),
(77, 40, 18, 6, 0),
(78, 40, 37, 12, 1),
(79, 40, 39, 12, 1),
(80, 40, 156, 60, 0),
(81, 37, 157, 24, 0),
(82, 41, 16, 12, 0),
(83, 41, 17, 15, 0),
(84, 41, 204, 1, 0),
(85, 41, 170, 6, 0),
(86, 41, 18, 6, 0),
(87, 41, 35, 6, 1),
(88, 41, 37, 12, 1),
(89, 42, 204, 1, 0),
(90, 42, 16, 12, 0),
(91, 42, 17, 8, 0),
(92, 42, 18, 6, 0),
(93, 42, 37, 12, 1),
(94, 42, 39, 12, 1),
(95, 42, 45, 5, 0),
(96, 42, 44, 6, 0),
(97, 44, 16, 20, 0),
(98, 44, 17, 15, 0),
(99, 44, 18, 12, 0),
(100, 45, 16, 20, 0),
(101, 45, 17, 15, 0),
(102, 45, 18, 10, 0),
(103, 46, 18, 2, 0),
(104, 47, 16, 2, 0),
(105, 48, 18, 2, 0),
(106, 49, 18, 2, 0),
(107, 50, 18, 12, 0),
(108, 51, 16, 12, 0),
(109, 52, 17, 12, 0),
(110, 53, 18, 12, 0),
(111, 54, 18, 6, 1),
(112, 55, 18, 5, 1),
(113, 56, 18, 6, 1),
(114, 57, 18, 5, 1),
(115, 58, 18, 6, 1),
(116, 59, 18, 10, 1),
(117, 60, 204, 1, 0),
(118, 60, 47, 5, 0),
(119, 60, 44, 6, 0),
(120, 60, 116, 9, 0),
(121, 60, 18, 3, 0),
(122, 60, 211, 100, 1),
(123, 60, 154, 18, 1),
(124, 60, 282, 12, 1),
(130, 60, 203, 1, 0),
(131, 60, 26, 6, 1),
(132, 60, 37, 12, 1),
(133, 61, 46, 5, 0),
(134, 62, 44, 6, 0),
(135, 63, 16, 20, 0),
(136, 63, 45, 6, 0),
(137, 63, 26, 12, 1),
(138, 63, 17, 10, 0),
(139, 63, 18, 3, 1),
(140, 64, 1, 5, 0),
(141, 65, 16, 5, 0),
(142, 66, 0, 10, 0),
(143, 67, 16, 15, 0),
(144, 67, 19, 10, 0),
(145, 68, 204, 1, 0),
(146, 68, 16, 15, 0),
(147, 68, 19, 5, 0),
(148, 68, 17, 10, 0),
(149, 68, 156, 30, 0),
(150, 68, 37, 6, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `leergutpreise`
--

CREATE TABLE `leergutpreise` (
  `id` int(255) NOT NULL,
  `kastenpfand` float NOT NULL,
  `flaschenpfand` float NOT NULL,
  `rahmenpfand` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `leergutpreise`
--

INSERT INTO `leergutpreise` (`id`, `kastenpfand`, `flaschenpfand`, `rahmenpfand`) VALUES
(1, 2.4, 0.15, 1.5),
(2, 3, 0.15, 1.5),
(3, 3.3, 0.15, 1.5),
(4, 4.5, 0.25, 1.5),
(5, 2.46, 0.15, 1.5),
(6, 3.9, 0.15, 1.5),
(7, 4.5, 0.15, 1.5),
(8, 5.1, 0.15, 1.5),
(9, 0, 0, 0),
(10, 2.3, 0.08, 1.5),
(11, 2.38, 0.08, 1.5),
(12, 2.78, 0.08, 1.5),
(13, 3.1, 0.08, 1.5),
(14, 3.42, 0.08, 1.5),
(15, 3.66, 0.08, 1.5),
(16, 3, 0.25, 1.5),
(17, 20, 0, 0),
(33, 22.5, 0.75, 2),
(34, 36, 1.5, 2.5),
(35, 6, 0.15, 1.5),
(39, 30, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lieferschein`
--

CREATE TABLE `lieferschein` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `datum` varchar(10) NOT NULL,
  `selbstabholung` tinyint(1) NOT NULL,
  `status` int(1) NOT NULL,
  `pfandberechnungen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `lieferschein`
--

INSERT INTO `lieferschein` (`id`, `name`, `datum`, `selbstabholung`, `status`, `pfandberechnungen`) VALUES
(3, 'Tesst', '08.02.2020', 2, 2, ''),
(4, 'rgrb', '10.02.2020', 1, 2, ''),
(5, 'ff', '10.02.2020', 1, 2, ''),
(6, 'Test 3', '10.02.2020', 2, 2, ''),
(7, 'h', '25.02.2020', 1, 2, ''),
(8, 'Neuer Test', '29.02.2020', 2, 2, ''),
(9, 'Nochmal neuer test', '29.02.2020', 1, 1, ''),
(10, 'nochmal neu', '29.02.2020', 1, 1, ''),
(11, 'h', '18.03.2020', 1, 0, ''),
(12, 'h', '18.03.2020', 1, 0, ''),
(13, 'ff', '19.03.2020', 1, 0, ''),
(14, 'h', '19.03.2020', 1, 0, ''),
(15, 'h', '19.03.2020', 1, 0, ''),
(16, 'h', '19.03.2020', 1, 0, ''),
(17, 'h', '19.03.2020', 1, 0, ''),
(18, 'h', '19.03.2020', 1, 0, ''),
(19, 'h', '19.03.2020', 1, 0, ''),
(20, 'h', '19.03.2020', 1, 0, ''),
(21, 'h', '19.03.2020', 1, 0, ''),
(22, 'h', '19.03.2020', 1, 0, ''),
(23, 'h', '19.03.2020', 1, 0, ''),
(24, 'h', '19.03.2020', 1, 0, ''),
(25, 'h', '19.03.2020', 1, 0, ''),
(26, 'h', '19.03.2020', 1, 0, ''),
(27, 'h', '19.03.2020', 1, 0, ''),
(28, 'h', '19.03.2020', 1, 0, ''),
(29, 'h', '19.03.2020', 1, 0, ''),
(30, 'h', '19.03.2020', 1, 0, ''),
(31, 'h', '19.03.2020', 1, 0, ''),
(34, 'ff', '19.03.2020', 2, 0, ''),
(35, 'h', '19.03.2020', 1, 1, ''),
(36, 'Leergut', '23.03.2020', 1, 2, ''),
(37, 'Neuer test', '31.03.2020', 1, 1, ''),
(38, 'Neuer test', '31.03.2020', 1, 2, ''),
(39, 'Zurückschreiben Test', '01.04.2020', 1, 2, ''),
(41, 'jn', '04.05.2020', 1, 0, ''),
(42, 'Zurückschreiben Bug', '09.05.2020', 1, 2, ''),
(43, 'Zurückschreiben Bug 2', '09.05.2020', 1, 0, ''),
(44, 'zurückschreiben bug 3', '09.05.2020', 1, 2, ''),
(45, 'zs 4', '09.05.2020', 2, 2, ''),
(46, 'Zurückschreiben Algorythmus Bug', '20.05.2020', 2, 2, ''),
(47, 'bug test 2', '20.05.2020', 2, 2, ''),
(48, 'test 3', '20.05.2020', 1, 2, ''),
(49, 'test 4', '20.05.2020', 2, 2, ''),
(50, 'Nächster Test', '24.05.2020', 1, 2, ''),
(51, 'Pfand Test 1', '24.05.2020', 2, 2, ''),
(52, 'Pfand Test 2', '24.05.2020', 1, 2, ''),
(53, 'Pfand Test 3', '25.05.2020', 1, 2, ''),
(54, 'Pfand Test 5', '25.05.2020', 1, 2, ''),
(55, 'Pfand Test 6', '25.05.2020', 1, 2, ''),
(56, 'Pfand Test 7', '25.05.2020', 1, 2, ''),
(57, 'Pfand Test 8', '25.05.2020', 1, 2, ''),
(58, 'Pfand Test 9', '25.05.2020', 1, 2, ''),
(59, 'Pfand Test 10', '25.05.2020', 1, 2, ''),
(60, 'Pfand Bug Test', '26.05.2020', 1, 2, ''),
(61, 'Bug 2', '27.05.2020', 1, 2, ''),
(62, 'Neue Leergutanzeige Test 1', '06.06.2020', 1, 2, ''),
(64, '', '07.08.2020', 1, 0, ''),
(65, 'dd', '07.08.2020', 1, 0, ''),
(66, 'React Test 1', '08.08.2020', 2, 0, ''),
(67, 'React Test 2', '08.08.2020', 1, 0, ''),
(68, 'React Test Zurückgeschrieben', '13.08.2020', 2, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `waren`
--

CREATE TABLE `waren` (
  `id` int(255) NOT NULL,
  `ware` text NOT NULL,
  `isdrink` tinyint(1) NOT NULL,
  `maxfl` int(100) NOT NULL,
  `kistenpreis` float NOT NULL,
  `einzelpreis` float NOT NULL,
  `leergutid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `waren`
--

INSERT INTO `waren` (`id`, `ware`, `isdrink`, `maxfl`, `kistenpreis`, `einzelpreis`, `leergutid`) VALUES
(16, 'Krombacher Pils 24x033l', 3, 24, 1, 0, 14),
(17, 'Coca Cola 12x1l', 3, 12, 1, 0, 3),
(18, 'Coronet Wasser Classic 12x1l', 3, 12, 1, 1, 4),
(19, 'Krombacher Radler 24x0,33l', 3, 24, 1, 1, 14),
(22, 'Krombacher Pils alkoholfrei 24x0,33l', 3, 24, 1, 1, 14),
(23, 'Krombacher Radler alkoholfrei 24x0,33l', 3, 24, 1, 1, 14),
(24, 'Vita Malz 24x0,33l', 3, 24, 1, 1, 14),
(25, 'Cab 24x0,33l', 3, 24, 1, 1, 14),
(26, 'Sasse Wacholder mit Beeren 1l', 1, 0, 1, 0, 9),
(28, 'Kobra Vodka 1l', 1, 0, 1, 0, 9),
(29, 'Wacholder mit Beeren 0,7l', 1, 0, 1, 0, 9),
(30, 'Schlüter Saure Kirsche 0,7l', 1, 0, 1, 0, 9),
(31, 'Wollbrink Saure Kirsche 0,7l', 1, 0, 1, 0, 9),
(33, 'Jägermeister 0,7l', 1, 0, 1, 0, 9),
(34, 'Ramazotti Amaro 0,7l', 1, 0, 1, 0, 9),
(35, 'Strothmann Weizenkorn 0,7l', 1, 0, 1, 0, 9),
(36, 'Splendid halbtrocken 0,7l', 1, 0, 1, 0, 9),
(37, 'Berliner Luft 0,7l', 1, 0, 1, 0, 9),
(38, 'Freixenet Carta Nevada 0,7l', 1, 0, 1, 0, 9),
(39, 'Dark Mark 0,7l', 1, 0, 1, 0, 9),
(40, 'Jules Mumm halbtrocken 0,7l', 1, 0, 1, 0, 9),
(41, 'Sasse Korn 0,7l ', 1, 0, 1, 0, 9),
(42, 'Sasse Grafschafter Kräuterwacholder 1l', 1, 0, 1, 0, 9),
(43, 'Schlüter Maracuja-Limette 0,7l', 1, 0, 1, 0, 9),
(44, 'Krombacher Fässchen 5l', 1, 0, 1, 0, 9),
(45, 'König Pilsener Fassbier 50l', 2, 0, 1, 0, 17),
(46, 'Krombacher Pils Fassbier 50l', 2, 0, 1, 0, 17),
(47, 'Krombacher Pils Fassbier 30l', 2, 0, 1, 0, 17),
(48, 'Bitburger Pilsener Fassbier 50l', 2, 0, 1, 0, 17),
(49, 'Löwenbräu Fassbier 30l', 2, 0, 1, 0, 17),
(50, 'Hofbräu Oktoberfestbier 30l', 2, 0, 1, 0, 17),
(51, 'König Pilsener alkoholfrei 20l', 2, 0, 1, 0, 17),
(52, 'Gerolsteiner Sprudel Wasser 12x1l', 3, 12, 1, 1, 3),
(53, 'Gerolsteiner Sprudel Wasser Glas 12x0,7l', 3, 12, 1, 1, 3),
(54, 'Lohberg Orangenlimonade 12x0,7l', 3, 12, 1, 1, 3),
(55, 'Engelbert Apfelschorle 12x0,7l', 3, 12, 1, 1, 3),
(56, 'Gerolsteiner Medium Wasser Glas 0,7l', 3, 12, 1, 1, 3),
(57, 'Gerolsteiner Medium Wasser Glas 0,7l', 3, 12, 1, 1, 3),
(58, 'Gerolsteiner Medium Wasser Glas 0,7l', 3, 12, 1, 1, 3),
(59, 'Böcker Black Berry 0,7l', 1, 0, 1, 0, 9),
(60, 'Gerolsteiner Medium Wasser 12x1l', 3, 12, 1, 1, 3),
(61, 'Salinger Classic Mineralwasser 12x1l', 3, 12, 1, 1, 4),
(62, 'Stiftsquelle Classic Wasser 12x1l', 3, 12, 1, 1, 4),
(63, 'Stiftsquelle Medium Wasser 12x1l', 3, 12, 1, 1, 4),
(64, 'Burgwallbronn first class Classic 12x1l', 3, 12, 1, 1, 3),
(65, 'Coronet Classic Wasser Glas 0,7l', 3, 12, 1, 1, 3),
(66, 'Coronet Medium Wasser 12x0,7l', 3, 12, 1, 1, 3),
(67, 'Salinger Classic Wasser Glas 12x0,7l', 3, 12, 1, 1, 3),
(68, 'Salinger Medium Wasser Glas 12x0,7l', 3, 12, 1, 1, 3),
(69, 'Fanta 12x1,0l', 3, 12, 1, 1, 3),
(70, 'Sprite 12x1,0l ', 3, 12, 1, 1, 3),
(71, 'Gerolsteiner Apfelschorle 12x0,7l', 3, 12, 1, 1, 3),
(72, 'Coca Cola PET 12x0,5l', 3, 12, 1, 1, 4),
(73, 'Vio Still Wasser 18x0,5l', 1, 0, 1, 0, 4),
(74, 'Vio Medium Wasser 18x0,5l', 1, 0, 1, 0, 4),
(75, 'Coca Cola Zero 12x0,5l', 3, 12, 1, 1, 4),
(76, 'Coca Cola light 12x0,5l', 3, 12, 1, 1, 4),
(77, 'Mezzo Mix 12x0,5l PET', 3, 12, 1, 1, 4),
(78, 'Sprite PET 12x0,5l', 3, 12, 1, 1, 4),
(79, 'Fanta PET 12x0,5l', 3, 12, 1, 1, 4),
(80, 'Gerolsteiner Medium Wasser Glas 6x1,0l', 3, 6, 1, 1, 1),
(81, 'Salvus Naturell Wasser 20x0,5l', 3, 20, 1, 1, 4),
(82, 'Bitburger Pils 24x0,33l', 3, 24, 1, 1, 14),
(83, 'Paulaner Hefe-Weißbier alkoholfrei 20x0,5l', 3, 20, 1, 1, 13),
(84, 'Paulaner Hefe-Weißbier Naturtrüb 20x0,5l', 3, 20, 1, 1, 13),
(85, 'Erdinger Weißbier 20x0,5l', 3, 20, 1, 1, 13),
(86, 'Erdinger alkoholfrei 20x0,5l', 3, 20, 1, 1, 13),
(87, 'Staatl. Fachingen Gourmet Still Wasser 12x0,75l', 3, 12, 1, 1, 3),
(88, 'Sinalco Aquintell 12x0,5l', 3, 12, 1, 1, 3),
(89, 'Staatl. Fachingen Medium 12x0,7l', 3, 12, 1, 1, 3),
(90, 'Rheinfelsquelle Lemon Wasser 12x0,7l', 3, 12, 1, 1, 3),
(91, 'Staatl. Fachingen Gourmet Still Wasser 24x0,25l', 3, 24, 1, 1, 8),
(92, 'Copeo Traubensaft 6x1l', 3, 6, 1, 1, 1),
(93, 'Niederrheingold Multivitaminsaft 6x1l', 3, 6, 1, 1, 1),
(94, 'Niederrheingold Orangensaft 6x1l', 3, 6, 1, 1, 1),
(95, 'Niederrheingold Apfelsaft 6x1l', 3, 6, 1, 1, 1),
(96, 'Copeo Traubensaft 24x0,25l', 3, 24, 1, 1, 8),
(97, 'Copeo Apfelsinensaft 24x0,25l', 3, 24, 1, 1, 8),
(98, 'Copeo Multivitaminsaft 24x0,25l', 3, 24, 1, 1, 8),
(99, 'Copeo Apfelsaft 24x0,25l', 3, 24, 1, 1, 8),
(100, 'Möller naturtrüber Apfelsaft 6x1l', 3, 6, 1, 1, 1),
(101, 'Möller Rhabarber Nektar 6x1l', 3, 6, 1, 1, 1),
(102, 'Möller Orangensaft 6x1l', 3, 6, 1, 1, 1),
(103, 'Möller Sauerkirsch Nektar 6x1l', 3, 6, 1, 1, 1),
(104, 'Möller Multivitamin Saft 6x1l', 3, 6, 1, 1, 1),
(105, 'Möller klarer Apfelsaft 6x1l', 3, 6, 1, 1, 1),
(106, 'Möller Orangensaft 24x0,2l', 3, 24, 1, 1, 8),
(107, 'Möller klarer Apfelsaft 24x0,2l', 3, 24, 1, 1, 8),
(108, 'Krombacher alkoholfrei 0,0% 24x0,33l', 3, 24, 1, 1, 14),
(109, 'Krombacher\'s Fassbrause gemischt 24x0,33l', 3, 24, 1, 1, 14),
(110, 'Krombacher\'s Fassbrause Zitrone 24x0,33l', 3, 24, 1, 1, 14),
(111, 'Krombacher\'s Fassbrause Mango 24x0,33l', 3, 24, 1, 1, 14),
(112, 'Krombacher\'s Fassbrause Cola & Orange 24x0,33l', 3, 24, 1, 1, 14),
(113, 'Krombacher\'s Fassbrause Schwarze Johannisbeere 24x0,33l', 3, 24, 1, 1, 14),
(114, 'Franziskaner Weissbier Naturtrüb 20x0,5l', 3, 20, 1, 1, 13),
(115, 'Krombacher Weizen Naturtrüb 20x0,5l', 3, 20, 1, 1, 13),
(116, 'Coca Cola Sortiment gemischt 12x1l', 3, 12, 1, 1, 3),
(117, 'Coca Cola Zero 12x1l', 3, 12, 1, 1, 3),
(118, 'Coca Cola light 12x1l', 3, 12, 1, 1, 3),
(119, 'Coca Cola light koffeinfrei 12x1l', 3, 12, 1, 1, 3),
(120, 'Coca Cola 20x0,5l', 3, 20, 1, 1, 7),
(121, 'Coca Cola Zero 20x0,5l', 3, 20, 1, 1, 7),
(122, 'Coca Cola Zero 20x0,5l', 3, 20, 1, 1, 7),
(123, 'Sprite 20x0,5l', 3, 20, 1, 1, 7),
(124, 'Mezzo Mix 20x0,5l', 3, 20, 1, 1, 7),
(125, 'Fanta 20x0,5l', 3, 20, 1, 1, 7),
(126, 'Emsland Sonne Brause 12x1l', 3, 12, 1, 1, 3),
(127, 'Mezzo Mix 24x0,33l', 3, 24, 1, 1, 8),
(128, 'Coca Cola 24x0,33l', 3, 24, 1, 1, 8),
(129, 'Sprite 24x0,33l', 3, 24, 1, 1, 8),
(130, 'Fanta 24x0,33l', 3, 24, 1, 1, 8),
(131, 'Lift Apfelschorle 24x0,33l', 3, 24, 1, 1, 8),
(132, 'Coca Cola light 24x0,2l', 3, 24, 1, 1, 8),
(133, 'Fanta 24x0,2l', 3, 24, 1, 1, 8),
(134, 'Coca Cola 24x0,2l', 3, 24, 1, 1, 8),
(135, 'Sprite 24x0,2l', 3, 24, 1, 1, 8),
(136, 'Coca Cola Zero 24x0,2l', 3, 24, 1, 1, 8),
(137, 'Apollinaris Medium Wasser 12x0,75l', 3, 12, 1, 1, 3),
(138, 'Stiftsquelle Medium Wasser 12x0,7l', 3, 12, 1, 1, 3),
(139, 'Stiftsquelle Classic Wasser 12x0,7l', 3, 12, 1, 1, 3),
(140, 'Stiftsquelle Naturell Wasser 12x0,7l', 3, 12, 1, 1, 3),
(141, 'Lohberg Medium Wasser 12x0,7l', 3, 12, 1, 1, 3),
(142, 'Lohberg Classic Wasser 12x0,7l', 3, 12, 1, 1, 3),
(143, 'Herzog Life Classic Wasser 24x0,25l', 3, 24, 1, 1, 8),
(144, 'Steinsieker Medium Wasser 12x1,0l', 3, 12, 1, 1, 3),
(145, 'Gerolsteiner Zitronenlimonade 12x0,75l', 3, 12, 1, 1, 3),
(146, 'Gerolsteiner Plus Zitrone 12x0,75l', 3, 12, 1, 1, 3),
(147, 'Gerolsteiner Orangenlimonade 12x0,75l', 3, 12, 1, 1, 3),
(148, 'Gerolsteiner Sprudel Wasser 24x0,25l', 3, 24, 1, 1, 8),
(149, 'Gerolsteiner Sprudel Gourmet 12x0,75l ', 3, 12, 1, 1, 3),
(150, 'Oettinger Pils 20x0,5l', 3, 20, 1, 1, 13),
(151, 'Oettinger Export 20x0,5l', 3, 20, 1, 1, 13),
(152, 'Kronsberg Pilsener 24x0,33l', 3, 24, 1, 1, 14),
(153, 'Kronsberg Pilsener 24x0,33l', 3, 24, 1, 1, 14),
(154, 'Sasse Korn 1l', 1, 0, 1, 0, 9),
(155, 'Landpark Bio-Quelle Medium Wasser 12x0,75l', 3, 12, 1, 1, 3),
(156, 'Bruchgläser 0,2l', 0, 0, 1, 0, 9),
(157, 'Korngläser 0,02l', 0, 0, 1, 0, 9),
(158, 'Weingläser ', 0, 0, 1, 0, 9),
(159, 'Sektgläser', 0, 0, 1, 0, 9),
(160, 'Rioltogläser', 0, 0, 1, 0, 9),
(161, 'Becher 0,2l', 0, 0, 1, 0, 9),
(162, 'Pilsgläser 0,2l', 0, 0, 1, 0, 9),
(163, 'Lagerkorngläser', 0, 0, 1, 0, 9),
(164, 'Weizenbiergläser', 0, 0, 1, 0, 9),
(165, 'Bierkrug 0,5l', 0, 0, 1, 0, 9),
(166, 'Bierkrug 1,0l', 0, 0, 1, 0, 9),
(167, 'Star Cup 0,3l', 0, 0, 1, 0, 9),
(168, 'Kellnerblocks Pak.', 0, 0, 1, 0, 9),
(169, 'Pak. Bierdeckel', 0, 0, 1, 0, 9),
(170, 'Flaschenkühler', 0, 0, 1, 0, 9),
(171, 'Kellnertabletts', 0, 0, 1, 0, 9),
(172, 'Meterbretter', 0, 0, 1, 0, 9),
(173, 'Meterbretter', 0, 0, 1, 0, 9),
(174, 'Aschenbecher', 0, 0, 1, 0, 9),
(175, 'Josef Drahten Dornfelder halbtrocken 0,7l', 1, 0, 1, 0, 9),
(176, 'Josef Drahten Dornfelder trocken 0,7l', 1, 0, 1, 0, 9),
(177, 'Oppenheimer Krötenbrunnen Kabinett 0,7l', 1, 0, 1, 0, 9),
(178, 'Portugiesischer Weissherbst 0,7l', 1, 0, 1, 0, 9),
(179, 'Oppenheimer Krötenbrunnen Spätlese 0,7l', 1, 0, 1, 0, 9),
(180, 'Scheurebe Weisswein halbtrocken 0,7l', 1, 0, 1, 0, 9),
(181, 'Splendid Mild 0,7l', 1, 0, 1, 0, 9),
(182, 'Weisser Burgunder Weisswein trocken 0,7l', 1, 0, 1, 0, 9),
(183, 'Josef Drathen Ürziger Schwarzlay Kabinett 0,7l ', 1, 0, 1, 0, 9),
(184, 'Bernkasteler Kurfürstlay 0,7l', 1, 0, 1, 0, 9),
(185, 'Engelbert Apfelschorle 12x1l', 3, 12, 1, 1, 4),
(186, 'Herzog Life Classic Wasser 12x0,75l', 3, 12, 1, 1, 3),
(187, 'Drehteller', 0, 0, 1, 0, 9),
(188, 'Tischtuchpapier 80cm x 50m', 0, 0, 1, 0, 9),
(189, 'Tischtuchpapier 100cm x 50m', 0, 0, 1, 0, 9),
(190, 'Stehtische rund', 0, 0, 1, 0, 9),
(191, 'Stehtische lang', 0, 0, 1, 0, 9),
(192, 'Tische 50cm x 2,20m', 0, 0, 1, 0, 9),
(193, 'Bänke 25cm x 2,20m', 0, 0, 1, 0, 9),
(194, 'Bierzeltgarnitur', 0, 0, 1, 0, 9),
(195, 'Breite Tische 70cm x 2,20m', 0, 0, 1, 0, 9),
(196, 'Plastikstühle', 0, 0, 1, 0, 9),
(197, 'Plastikstühle mit Lehne', 0, 0, 1, 0, 9),
(198, 'Holzstühle', 0, 0, 1, 0, 9),
(199, 'Polsterstühle', 0, 0, 1, 0, 9),
(200, 'Sitzkissen', 0, 0, 1, 0, 9),
(201, 'Anstelltheken', 0, 0, 1, 0, 9),
(202, 'Spühltheken', 0, 0, 1, 0, 9),
(203, 'Zapfanlage', 0, 0, 1, 0, 9),
(204, 'Kühlwagen', 0, 0, 35, 0, 9),
(205, 'Bierwagen', 0, 0, 1, 0, 9),
(206, 'Riomobil', 0, 0, 1, 0, 9),
(207, 'Kohlensäureflaschen', 0, 0, 1, 0, 17),
(208, 'Guido Maria Orange-Likör 24x0,02l', 1, 0, 1, 0, 9),
(209, 'Schlüter Maracuja-Limette 25x0,02l', 1, 0, 1, 0, 9),
(210, 'Ramazotti 25x0,03l', 1, 0, 1, 0, 9),
(211, 'Kümmerling 25x0,02l', 1, 0, 1, 0, 9),
(212, 'Dark Mark 40x0,02l', 1, 0, 1, 0, 9),
(213, 'Berliner Luft 24x0,02l', 1, 0, 1, 0, 9),
(214, 'Sasse Latte Macchiato 25x0,02l', 1, 0, 1, 0, 9),
(215, 'Dirty Harry 24x0,02l', 1, 0, 1, 0, 9),
(216, 'Underberg 30x0,02l', 1, 0, 1, 0, 9),
(217, 'Rotkäppchen Sekt halbtrocken 0,75l', 1, 0, 1, 0, 9),
(218, 'Pitu 0,7l', 1, 0, 1, 0, 9),
(219, 'Heydt Steinfrucht 0,7l', 1, 0, 1, 0, 9),
(220, 'Safari 0,7l', 1, 0, 1, 0, 9),
(221, 'Lindenhof Obst Wasser 0,7l ', 1, 0, 1, 0, 9),
(222, 'Asbach 0,7l', 1, 0, 13.95, 0, 9),
(223, 'Mariacron 0,7l', 1, 0, 7.95, 0, 9),
(224, 'Chantré Weinbrand 0,7l', 1, 0, 7.95, 0, 9),
(225, 'Jack Daniels 0,7l', 1, 0, 18.95, 0, 9),
(226, 'Tullamore D.E.W. Whiskey 0,7l', 1, 0, 15.95, 0, 9),
(227, 'Johnnie Walker Red Label 0,7l', 1, 0, 14.5, 0, 9),
(228, 'Jim Beam Bourbon Whiskey 0,7l', 1, 0, 12.95, 0, 9),
(229, 'Ballantines Blended Scotch Whisky 0,7l', 1, 0, 12.95, 0, 9),
(230, 'Southern Comfort 0,7l', 1, 0, 13.6, 0, 9),
(231, 'Vecchio Ceppo Grappa 0,5l', 1, 0, 6.95, 0, 9),
(232, 'Berentzen Fruchtige Sortiment 0,7l', 1, 0, 6.95, 0, 9),
(233, 'Berentzen Fruchtige Saurer Apfel 0,7l', 1, 0, 6.95, 0, 9),
(234, 'Berentzen Fruchtige Apfel 0,7l', 1, 0, 6.95, 0, 9),
(235, 'Berentzen Roter Apfel 0,7l', 1, 0, 6.95, 0, 9),
(236, 'Berentzen Fruchtige Waldmeister 0,7l', 1, 0, 6.95, 0, 9),
(237, 'Berentzen Fruchtige Waldfrucht 0,7l', 1, 0, 6.95, 0, 9),
(238, 'Berentzen Fruchtige Waldkirsche 0,7l', 1, 0, 6.95, 0, 9),
(239, 'Berentzen Fruchtige Hofskirsche 0,7l', 1, 0, 6.95, 0, 9),
(240, 'Berentzen Fruchtige Plum 0,7l', 1, 0, 6.95, 0, 9),
(241, 'Lysholm Linie Aquavit 0,7l', 1, 0, 17.95, 0, 9),
(242, 'Malteserkreuz Aquavit 0,7l', 1, 0, 14.95, 0, 9),
(243, 'Ouzo 0,7l', 1, 0, 10.95, 0, 9),
(244, 'Pâpidoux Cahados 0,7l', 1, 0, 14.5, 0, 9),
(245, 'Havana Club 0,7l', 1, 0, 15.45, 0, 9),
(246, 'Barcardi Razz 0,7l', 1, 0, 13.95, 0, 9),
(247, 'Barcardi Carta Blanca 0,7l', 1, 0, 12.95, 0, 9),
(248, 'Captain Morgan 0,7l', 1, 0, 12.5, 0, 9),
(249, 'Malibu Liqueur 0,7l', 1, 0, 0, 0, 9),
(250, 'Dohlmühle Portugiesischer Weissherbst 0,7l', 1, 0, 5.1, 0, 9),
(251, 'Josef Drathen Dornfelder lieblich 0,7l', 1, 0, 4.45, 0, 9),
(252, 'Light Live hûgo 0,7l', 1, 0, 4.2, 0, 9),
(253, 'Light Live sprizz 0,7l', 1, 0, 4.2, 0, 9),
(254, 'Light Live 0,7l', 1, 0, 4.2, 0, 9),
(255, 'Light Live Red 0,7l', 1, 0, 4.3, 0, 9),
(256, 'Jules Mumm Rosé dry 0,7l', 1, 0, 5.4, 0, 9),
(257, 'Freixenet Carta Rosado 0,7l', 1, 0, 5.75, 0, 9),
(258, 'Prosecco D.O.C. Blû 0,75l', 1, 0, 5.95, 0, 9),
(259, 'Aperol Aperitivo 0,7l', 1, 0, 11.95, 0, 9),
(260, 'Sierra Tequila silver 0,7l', 1, 0, 12.95, 0, 9),
(261, 'Sierra Tequila reposado 0,7l', 1, 0, 12.95, 0, 9),
(262, 'Bombay Dry Gin 0,7l', 1, 0, 13.95, 0, 9),
(263, 'Wodka Gorbatschow 0,7l', 1, 0, 8.8, 0, 9),
(264, 'Küstennebel Sternanis 0,5l', 1, 0, 7.25, 0, 9),
(265, 'Pernod Paris 0,7l', 1, 0, 14.95, 0, 9),
(266, 'Casoni Caffe\'Anice 0,7l', 1, 0, 11.5, 0, 9),
(267, 'Molinari Caffè Liquore 0,7l', 1, 0, 14.2, 0, 9),
(268, 'Wollbrink Sao Paulo 0,7l', 1, 0, 5.2, 0, 9),
(269, 'Wollbrink Rhabarber 0,7l', 1, 0, 5.75, 0, 9),
(270, 'Wollbrink Pflaume 0,7l', 1, 0, 5.95, 0, 9),
(271, 'Wollbrink Maracuja 0,7l', 1, 0, 6.3, 0, 9),
(272, 'Böcker Soleijo sour 0,7l', 1, 0, 5.8, 0, 9),
(273, 'Böcker Pflaume 0,7l', 1, 0, 7.45, 0, 9),
(274, 'Böcker Wilde Kirsche 0,7l', 1, 0, 7.45, 0, 9),
(275, 'Böcker Winter Pflaume 0,7l', 1, 0, 7.95, 0, 9),
(276, 'Haselnusslikör 0,7l', 1, 0, 7.95, 0, 9),
(277, 'Berentzen Traditionskorn 0,7l', 1, 0, 6.5, 0, 9),
(278, 'Schlüter Korn 0,7l', 1, 0, 5.9, 0, 9),
(279, 'Wollbrink Korn 0,35l', 1, 0, 3.2, 0, 9),
(280, 'Wollbrink Korn 0,7l', 1, 0, 6.5, 0, 9),
(281, 'Sasse Lagerkorn 0,5l', 1, 0, 17.95, 0, 9),
(282, 'Sasse Nju Korn wuchtig 0,7l', 1, 0, 29.95, 0, 9),
(283, 'Sasse Nju Korn fruchtig 0,7l', 1, 0, 29.95, 0, 9),
(284, 'Sasse Nju Korn mild 0,7l', 1, 0, 29.95, 0, 9),
(285, 'Jägermeister 1,0l', 1, 0, 17.8, 0, 9),
(286, 'Jägermeister 0,35l', 1, 0, 6.95, 0, 9),
(287, 'Fernet-Branca 0,7l', 1, 0, 13.5, 0, 9),
(288, 'Ramazotti Aperitivo Rosato 0,7l', 1, 0, 12.95, 0, 9),
(289, 'Niehoff Mühlentropfen 0,7l', 1, 0, 8.95, 0, 9),
(290, 'Kuemmerling 0,5l', 1, 0, 6.95, 0, 9),
(291, 'Sandeman Medium dry Sherry 0,75l', 1, 0, 5.95, 0, 9),
(292, 'Martini Rosé 0,7l', 1, 0, 7.95, 0, 9),
(293, 'Martini Bianco 0,75l', 1, 0, 6.95, 0, 9),
(294, 'Berliner Luft Schoko 0,7l', 1, 0, 6.95, 0, 9),
(295, 'Sour Mark strawberry 0,7l', 1, 0, 10.95, 0, 9),
(296, 'Kolg Mark 0,7l', 1, 0, 10.95, 0, 9),
(297, 'Sour Mark Apple 0,7l', 1, 0, 10.95, 0, 9),
(298, 'Sweet Mark 0,7l', 1, 0, 10.95, 0, 9),
(299, 'Dirty Harry 0,7l', 1, 0, 6.75, 0, 9),
(300, 'Mozart Chocolate Creme 0,5l', 1, 0, 13.95, 0, 9),
(301, 'Baileys 0,7l', 1, 0, 12.95, 0, 9),
(302, 'Amarula 0,7l', 1, 0, 12.5, 0, 9),
(303, 'Dooleys Cream Liqueur 0,7l', 1, 0, 10.95, 0, 9),
(304, 'Dooleys Egg Cream 0,7l', 1, 0, 10.95, 0, 9),
(305, 'Althues Landeierlikör 0,7l', 1, 0, 10.95, 0, 9),
(306, 'Verpoorten 0,7l', 1, 0, 10.95, 0, 9),
(307, 'Golden Cream Sahnelikör 0,7l', 1, 0, 4.95, 0, 9),
(308, 'Lillet 0,7l', 1, 0, 13.5, 0, 9),
(309, 'Rotkäppchen alkoholfrei 0,7l', 1, 0, 3.95, 0, 9),
(310, 'Rotkäppchen Mild 0,7l', 1, 0, 3.95, 0, 9),
(311, 'Rotkäppchen Trocken 0,7l', 1, 0, 3.95, 0, 9),
(312, 'Jules Mumm+ Hugo 0,7l', 1, 0, 4.95, 0, 9),
(313, 'Jules Mumm+ Cranberry Holunder 0,7l', 1, 0, 4.95, 0, 9),
(314, 'Hugo Käfer 0,7l', 1, 0, 3.95, 0, 9),
(315, 'Hugo Käfer Rosé 0,7l', 1, 0, 3.95, 0, 9),
(316, 'Hugo Blue Gracioso 0,7l', 1, 0, 3.95, 0, 9),
(317, 'Jive mit Sekt Holunderblüte 0,7l', 1, 0, 3.3, 0, 9),
(318, 'El Honorado Sangria 1,5l', 1, 0, 1, 0, 9),
(319, 'Ron Taboga vollmundig 0,7l', 1, 0, 6.95, 0, 9),
(320, 'Pott 0,7l', 1, 0, 9.5, 0, 9),
(321, 'Pott Rum 0,7l', 1, 0, 11.9, 0, 9),
(322, 'Stroh Jagertee 0,5l', 1, 0, 12.5, 0, 9),
(323, 'Romanza Amaretto 0,7l', 1, 0, 6.45, 0, 9),
(324, 'Cointreau 0,7l', 1, 0, 14.95, 0, 9),
(325, 'Nim Likör Julischka 0,5l', 1, 0, 7.95, 0, 9),
(326, 'Lindenhof Williams Christ Birne 0,7l', 1, 0, 11.95, 0, 9),
(327, 'Sheridan\'s Coffee Layered Liqueur 0,5l', 1, 0, 11.8, 0, 9),
(328, 'Diego Zamora Cuarenta Y Tres 0,7l', 1, 0, 14.5, 0, 9),
(329, 'Kleiner Feigling 0,5l', 1, 0, 8.95, 0, 9),
(330, 'Pepino Peach 0,7l', 1, 0, 9.95, 0, 9),
(331, 'Pitú Garantia 0,7l', 1, 0, 10.95, 0, 9),
(332, 'Davide Campari Milano Bitter 0,7l', 1, 0, 11.5, 0, 9),
(333, 'Bols Blue Curacao 0,5l', 1, 0, 7.75, 0, 9),
(334, 'Geuting Granate 0,7l', 1, 0, 6.75, 0, 9),
(335, 'Geuting Anis Likör 0,7l', 1, 0, 6.95, 0, 9),
(336, 'Geutling Mirabellen Likör 0,7l', 1, 0, 7.5, 0, 9),
(337, 'Niehoff Wackelpeter Waldmeister 0,7l', 1, 0, 1, 0, 1),
(338, 'Niehoff Kirschi 0,7l', 1, 0, 6.5, 0, 9),
(339, 'Niehoff Kiwi Maracuja 0,7l', 1, 0, 6.5, 0, 9),
(340, 'Sasse Latte Macchiato 0,7l', 1, 0, 9.95, 0, 9),
(341, 'Münsterländer Aperitif 0,7l', 1, 0, 13.95, 0, 9),
(342, 'Sasse Grafschafter Kräuterwacholder 0,7l', 1, 0, 12.3, 0, 9),
(343, 'Sasse Wacholder 0,7l', 1, 0, 8.95, 0, 9),
(344, 'Krombacher Naturtrübes Kellerbier 24x0,33l', 3, 24, 1, 1, 14),
(345, 'Klindworth Max alkoholfrei 6x1,0l', 3, 6, 1, 1, 1),
(346, 'Klindworth Nik Glühwein 6x1,0l', 3, 6, 1, 1, 1),
(347, 'Klindworth Punsch Amaretto 6x1,0l', 3, 6, 1, 1, 1),
(348, 'Klindworth Claus Glühwein aus Weißwein 6x1,0l', 3, 6, 1, 1, 1),
(349, 'Klindworth Punsch Kirsche 6x1,0l', 3, 6, 1, 1, 1),
(350, 'Spaten Oktoberfestbier 20x0,5l', 3, 20, 1, 1, 13),
(351, 'Veltins Pilsener 24x0,33l', 3, 24, 1, 1, 14),
(352, 'Potts Landbier 20x0,33l', 3, 20, 13.5, 0.67, 7),
(353, 'Jever Fun Pilsener alkoholfrei 24x0,33l', 3, 24, 15.8, 0.65, 14),
(354, 'Krombacher Weizen alkoholfrei 11x0,5l', 3, 11, 8.45, 0.76, 11),
(355, 'Erdinger alkoholfrei 24x0,33l', 3, 24, 1, 1, 14),
(356, 'König Ludwig Weissbier Hell 10x0,5l', 3, 10, 1, 1, 10),
(357, 'Bayreuther Hell 20x0,33l', 3, 20, 1, 1, 13),
(358, 'Störtebeker Bernstein-Weizen 20x0,5l', 3, 20, 1, 1, 13),
(359, 'Kapuziner Weißbier 20x0,5l', 3, 20, 1, 1, 13),
(360, 'Schöfferhofer Weizen Naturtrüb 20x0,5l', 3, 20, 1, 1, 13),
(361, 'Paulaner Hefe-Weißbier alkoholfrei 20x0,5l', 3, 20, 1, 1, 13),
(362, 'Maisel\'s Weisse Hefe-Weissbier 20x0,5l', 3, 20, 1, 1, 13),
(363, 'Allgäuer Büble Bier 20x0,5l', 3, 20, 1, 1, 13),
(364, 'Aktien Zwick\'l Kellerbier 20x0,5l', 3, 20, 1, 1, 10),
(365, 'König Pilsener 24x0,33l', 3, 24, 14.3, 0.59, 14),
(366, 'Brinkhoff\'s No1 20x0,5l', 3, 20, 1, 1, 13),
(367, 'Nörten-Hardenberger Pils 30x0,33l', 3, 30, 9.45, 0.31, 9),
(368, 'Edelhopfen Extra 24x0,33l', 3, 24, 14.5, 0.6, 14),
(369, 'Sasse Kakao mit Nuss 0,7l', 1, 0, 1, 0, 15),
(371, 'Testware 2', 1, 0, 7, 0, 9),
(372, 'Testware 4', 1, 0, 123, 0, 9),
(373, 'Testware 5', 0, 0, 333, 0, 9),
(374, 'Testware 6', 2, 0, 999, 0, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zurueckschreibendatas`
--

CREATE TABLE `zurueckschreibendatas` (
  `id` int(11) NOT NULL,
  `lieferscheinid` int(255) NOT NULL,
  `bestellid` int(255) NOT NULL,
  `gesamtkisten` int(255) NOT NULL,
  `gesamtflaschen` int(255) NOT NULL,
  `verbrauchtkisten` int(255) NOT NULL,
  `verbrauchtflaschen` int(255) NOT NULL,
  `zurückkisten` int(255) NOT NULL,
  `zurückflaschen` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `zurueckschreibendatas`
--

INSERT INTO `zurueckschreibendatas` (`id`, `lieferscheinid`, `bestellid`, `gesamtkisten`, `gesamtflaschen`, `verbrauchtkisten`, `verbrauchtflaschen`, `zurückkisten`, `zurückflaschen`) VALUES
(1, 4, 13, 0, 0, 0, 0, 0, 0),
(2, 4, 18, 0, 0, 0, 0, 0, 0),
(3, 4, 19, 0, 0, 0, 0, 0, 0),
(4, 4, 16, 0, 0, 0, 0, 12, 0),
(5, 4, 17, 0, 0, 0, 0, 12, 0),
(6, 4, 14, 0, 0, 0, 0, 25, 0),
(7, 4, 15, 0, 0, 0, 0, 15, 0),
(8, 3, 7, 1, 0, 0, 0, 0, 0),
(9, 3, 10, 12, 0, 0, 0, 0, 0),
(10, 3, 11, 0, 0, 13, 0, 5, 0),
(11, 3, 12, 0, 0, 12, 0, 6, 0),
(12, 3, 8, 14, 0, 7, 8, 6, 6),
(13, 3, 9, 12, 0, 3, 4, 8, 8),
(14, 5, 20, 15, 0, 13, 4, 1, 20),
(15, 6, 21, 12, 0, 12, 0, 0, 0),
(16, 6, 21, 0, 0, 0, 0, 12, 0),
(17, 4, 13, 1, 0, 0, 0, 0, 0),
(18, 4, 18, 1, 0, 0, 0, 0, 0),
(19, 4, 19, 13, 0, 0, 0, 0, 0),
(20, 4, 16, 0, 0, 8, 0, 4, 0),
(21, 4, 17, 0, 0, 7, 0, 5, 0),
(22, 4, 14, 0, 0, 0, 0, 25, 0),
(23, 4, 15, 0, 0, 0, 0, 15, 0),
(24, 5, 20, 0, 0, 13, 0, 2, 0),
(25, 3, 7, 1, 0, 0, 0, 0, 0),
(26, 3, 10, 12, 0, 0, 0, 0, 0),
(27, 3, 11, 0, 0, 4, 0, 14, 0),
(28, 3, 12, 0, 0, 9, 0, 9, 0),
(29, 3, 8, 14, 0, 4, 4, 9, 20),
(30, 3, 9, 11, 11, 7, 7, 4, 5),
(31, 7, 22, 1, 0, 0, 0, 0, 0),
(32, 7, 23, 12, 0, 5, 0, 7, 0),
(33, 7, 24, 12, 0, 7, 3, 4, 9),
(34, 10, 37, 1, 0, 0, 0, 0, 0),
(36, 10, 44, 24, 0, 0, 0, 0, 0),
(37, 10, 41, 0, 0, 3, 0, 9, 0),
(38, 10, 42, 0, 0, 5, 0, 7, 0),
(39, 10, 38, 12, 0, 8, 13, 3, 11),
(40, 10, 39, 8, 0, 4, 0, 4, 0),
(41, 10, 40, 3, 11, 2, 11, 1, 1),
(42, 9, 34, 0, 0, 0, 0, 12, 0),
(43, 9, 35, 0, 0, 0, 0, 8, 0),
(44, 9, 36, 0, 0, 0, 0, 4, 0),
(45, 36, 50, 1, 0, 0, 0, 0, 0),
(46, 36, 56, 58, 0, 0, 0, 0, 0),
(47, 36, 51, 12, 0, 7, 0, 5, 0),
(48, 36, 52, 15, -1, 12, 0, 3, 0),
(49, 36, 53, 12, 0, 12, 0, 0, 0),
(50, 36, 54, 8, 0, 4, 0, 4, 0),
(51, 36, 55, 10, -6, 3, 11, 6, 1),
(52, 8, 0, 0, 0, 0, 0, 0, 0),
(53, 8, 0, 60, 0, 0, 0, 0, 0),
(54, 8, 0, 20, 0, 0, 0, 0, 0),
(55, 8, 0, 0, 0, 7, 0, 5, 0),
(56, 8, 0, 0, 0, 9, 0, 3, 0),
(57, 8, 0, 12, 0, 4, 16, 7, 8),
(58, 8, 0, 8, -2, 4, 0, 4, 0),
(59, 8, 0, 4, -1, 3, 4, 0, 8),
(67, 40, 74, 0, 0, 0, 0, 0, 0),
(68, 40, 80, 58, 0, 0, 0, 0, 0),
(69, 40, 78, 0, 0, 8, 0, 4, 0),
(70, 40, 79, 0, 0, 9, 0, 3, 0),
(71, 40, 75, 22, -2, 10, 13, 11, 11),
(72, 40, 76, 12, 0, 6, 0, 6, 0),
(73, 40, 77, 6, -1, 5, 1, 0, 11),
(74, 38, 63, 0, 0, 0, 0, 0, 0),
(75, 38, 65, 23, 0, 0, 0, 0, 0),
(76, 38, 66, 0, 0, 9, 0, 3, 0),
(77, 38, 62, 12, -2, 3, 4, 8, 20),
(78, 38, 64, 33, 0, 23, 6, 9, 6),
(79, 42, 89, 0, 0, 0, 0, 0, 0),
(80, 42, 93, 0, 0, 8, 0, 4, 0),
(81, 42, 94, 0, 0, 9, 0, 3, 0),
(82, 42, 95, 5, 0, 3, 0, 2, 0),
(83, 42, 96, 6, 0, 4, 0, 2, 0),
(84, 42, 90, 12, 0, 6, 8, 5, 16),
(85, 42, 91, 8, 0, 6, 2, 1, 10),
(86, 42, 92, 6, 0, 5, 10, 0, 2),
(87, 44, 97, 20, 0, 12, 4, 7, 20),
(88, 44, 98, 15, 0, 10, 6, 4, 6),
(89, 44, 99, 12, 0, 8, 2, 3, 10),
(90, 45, 100, 20, 0, 1, 19, 18, 5),
(91, 45, 101, 15, 0, 2, 8, 12, 4),
(92, 45, 102, 10, 0, 1, 10, 8, 2),
(93, 46, 103, 0, 0, 1, 12, 0, 0),
(94, 47, 104, 0, 0, 1, 24, 0, 0),
(95, 48, 105, 0, 0, 1, 12, 0, 0),
(96, 49, 106, 0, 0, 2, 0, 0, 0),
(97, 50, 107, 11, 8, 6, 0, 6, 0),
(98, 51, 108, 13, 0, 12, 0, 0, 0),
(99, 52, 109, 12, 4, 12, 0, 0, 0),
(100, 53, 110, 11, -4, 12, 0, 0, 0),
(101, 54, 111, 6, 0, 6, 0, 0, 0),
(102, 55, 112, 3, 0, 5, 0, 0, 0),
(103, 56, 113, 0, 5, 0, 2, 0, 4),
(104, 57, 114, 0, 4, 0, -3, 0, 3),
(105, 58, 115, 0, 5, 0, 3, 0, 3),
(106, 59, 116, 0, 11, 0, 7, 0, 3),
(107, 60, 117, 0, 0, 0, 0, 0, 0),
(113, 60, 130, 1, 0, 0, 0, 0, 0),
(114, 60, 122, 0, 0, 100, 0, 0, 0),
(115, 60, 123, 0, 0, 4, 0, 14, 0),
(116, 60, 124, 0, 0, 3, 0, 9, 0),
(117, 60, 131, 0, 0, 4, 0, 2, 0),
(118, 60, 132, 0, 0, 7, 0, 5, 0),
(119, 60, 118, 5, 0, 5, 0, 0, 0),
(120, 60, 119, 6, 0, 0, 0, 6, 0),
(121, 60, 120, 9, -3, 1, 8, 7, 4),
(122, 60, 121, 3, 0, 0, 4, 2, 8),
(123, 61, 133, 5, 0, 0, 0, 5, 0),
(124, 62, 134, 0, 0, 1, 0, 5, 0),
(125, 63, 137, 0, 0, 6, 0, 6, 0),
(126, 63, 136, 6, 0, 2, 0, 4, 0),
(127, 63, 135, 19, -1, 5, 21, 14, 3),
(128, 63, 138, 10, 0, 5, 0, 5, 0),
(129, 63, 139, 0, 1, 0, 0, 0, 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bestelldatabase`
--
ALTER TABLE `bestelldatabase`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `leergutpreise`
--
ALTER TABLE `leergutpreise`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lieferschein`
--
ALTER TABLE `lieferschein`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `waren`
--
ALTER TABLE `waren`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `zurueckschreibendatas`
--
ALTER TABLE `zurueckschreibendatas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bestelldatabase`
--
ALTER TABLE `bestelldatabase`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT für Tabelle `leergutpreise`
--
ALTER TABLE `leergutpreise`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT für Tabelle `lieferschein`
--
ALTER TABLE `lieferschein`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT für Tabelle `waren`
--
ALTER TABLE `waren`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=375;

--
-- AUTO_INCREMENT für Tabelle `zurueckschreibendatas`
--
ALTER TABLE `zurueckschreibendatas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
