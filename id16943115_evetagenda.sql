-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: localhost:3306
-- Χρόνος δημιουργίας: 20 Αυγ 2021 στις 10:05:30
-- Έκδοση διακομιστή: 10.3.16-MariaDB
-- Έκδοση PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `id16943115_evetagenda`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `comments`
--

INSERT INTO `comments` (`commentID`, `uid`, `date`, `message`) VALUES
(43, 308, '2020-02-12 00:15:51', ' commodo '),
(44, 308, '2020-02-12 00:16:03', 'adasdyyaasd asd'),
(47, 308, '2020-02-12 00:17:02', 'af'),
(48, 308, '2020-02-12 00:17:04', 'b'),
(49, 308, '2020-02-12 00:17:05', 'c'),
(50, 308, '2020-02-12 00:17:07', 'dhdh'),
(53, 312, '2021-06-20 09:24:25', 'ads12'),
(55, 312, '2021-06-20 08:56:31', 'fasdfas'),
(56, 312, '2021-08-20 09:24:35', 'hgjghjgh');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `prod_name` int(11) NOT NULL,
  `perioxi` varchar(255) NOT NULL,
  `aitiologia_episkepsis` varchar(255) NOT NULL,
  `prod_phone` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `event`
--

INSERT INTO `event` (`id`, `start_event`, `end_event`, `title`, `prod_name`, `perioxi`, `aitiologia_episkepsis`, `prod_phone`, `color`, `uid`) VALUES
(65, '2020-01-18 08:00:00', '2020-01-18 09:00:00', 'testVisible', 166, 'areanot visible', '', '1234567895', '#FF0000', 308),
(66, '2020-02-27 07:10:00', '2020-02-27 07:20:00', '', 166, 'area4', '', '1564329781', '#0000FF', 308),
(68, '2020-05-14 07:50:00', '2020-05-14 09:20:00', 'Επίσκεψη334', 172, 'Area', '', '6955504803', '#00ff00', 312),
(69, '2020-05-14 06:50:00', '2020-05-14 07:10:00', 'asd', 172, 'Area', '', '6947065633', '#389099', 312);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `medicines`
--

CREATE TABLE `medicines` (
  `medicinesID` int(11) NOT NULL,
  `medName` text NOT NULL,
  `drastikiOusia` text NOT NULL,
  `medCompany` text NOT NULL,
  `anamoniBooeidi` int(11) NOT NULL,
  `anamoniAiges` int(11) NOT NULL,
  `anamoniProbata` int(11) NOT NULL,
  `anamoniXoiroi` int(11) NOT NULL,
  `anamoniIndornithes` int(11) NOT NULL,
  `anamoniMelisses` int(11) NOT NULL,
  `anamoniKreas` int(11) NOT NULL,
  `anamoniGala` int(11) NOT NULL,
  `anamoniAuga` int(11) NOT NULL,
  `anamoniMeli` int(11) NOT NULL,
  `medDosologia` text NOT NULL,
  `medXronosTherapias` int(11) NOT NULL,
  `registerMed` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `medicines`
--

INSERT INTO `medicines` (`medicinesID`, `medName`, `drastikiOusia`, `medCompany`, `anamoniBooeidi`, `anamoniAiges`, `anamoniProbata`, `anamoniXoiroi`, `anamoniIndornithes`, `anamoniMelisses`, `anamoniKreas`, `anamoniGala`, `anamoniAuga`, `anamoniMeli`, `medDosologia`, `medXronosTherapias`, `registerMed`, `uid`) VALUES
(18, 'testvisible', 'auu', 'a', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', 1, '2020-02-13 21:03:04', 308),
(21, 'medAvisible', 'z', 'z', 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, '9', 9, '2020-02-13 21:18:34', 308),
(22, 'mednotvisible', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', 1, '2020-02-13 21:32:06', 308),
(24, 'med', 'asd', 'ad', 1, 2, 3, 4, 4, 6, 7, 8, 9, 10, 'asdasd', 5, '2020-05-13 19:34:05', 312),
(25, 'Medi', 'Ci', 'Ne', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, '2021-06-20 09:47:58', 312),
(26, '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 0, '2021-07-13 11:18:44', 312);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `emailNewsletter` text NOT NULL,
  `activeNewsletter` tinyint(1) NOT NULL,
  `token` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `newsletter`
--

INSERT INTO `newsletter` (`id`, `emailNewsletter`, `activeNewsletter`, `token`) VALUES
(24, 'evetagenda@gmail.com', 1, '5d1c499ec726f0e199b2a73c663fed14e127d383226315a6b10916754837ac32');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `producer`
--

CREATE TABLE `producer` (
  `prodID` int(11) NOT NULL,
  `prodFLname` text NOT NULL,
  `prodPhone` bigint(20) NOT NULL,
  `prodEmail` text NOT NULL,
  `prodCodeEktrofis` text NOT NULL,
  `prodAFM` bigint(20) NOT NULL,
  `prodDOY` text NOT NULL,
  `prodArea` text NOT NULL,
  `prodNumAnimals` int(11) NOT NULL,
  `prodTypeAnimals` text NOT NULL,
  `prodFiliAnimals` text NOT NULL,
  `registerDate` datetime NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `producer`
--

INSERT INTO `producer` (`prodID`, `prodFLname`, `prodPhone`, `prodEmail`, `prodCodeEktrofis`, `prodAFM`, `prodDOY`, `prodArea`, `prodNumAnimals`, `prodTypeAnimals`, `prodFiliAnimals`, `registerDate`, `uid`) VALUES
(166, 'visibleu', 1564329781, 'test@test.test', 'asd1548', 123456789, '3231 Α΄ ΛΑΡΙΣΑΣ', 'area', 514, 'raceV', 'raceV2', '2020-02-12 00:20:20', 308),
(169, 'not visible', 6947065633, 'test@test.testV', 'asasdasd', 164532978, '1201 Α΄ΠΕΙΡΑΙΑ', '1440 ', 1, '1', '14', '2020-02-13 22:58:41', 308),
(171, 'Όνομα2', 6955504803, 'email@email.com', 'AB123456', 125463298, '1552 ΑΓΡΙΝΙΟΥ', 'Area', 1200, 'Cows', 'Race', '2020-05-13 19:21:28', 312),
(172, 'user usersss', 6947065633, 'st000@icte.uowm.gr', 'asd123', 123456658, '9311 ΑΡΓΟΣΤΟΛΙΟΥ', 'Area', 5555, 'asd', 'asd', '2020-05-13 19:22:50', 312);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdResetId` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `suntagografisi`
--

CREATE TABLE `suntagografisi` (
  `suntagografisiID` int(11) NOT NULL,
  `dateSuntagografisi` date NOT NULL,
  `tmhmaSuntagografisi` text NOT NULL,
  `toposEkdosis` text NOT NULL,
  `addressSuntagografisi` text NOT NULL,
  `prodNameSuntagografisi` int(11) NOT NULL,
  `codeEktrofisSuntagografisi` text NOT NULL,
  `eidosZwwnSuntagografisi` text NOT NULL,
  `aitiaSuntagografisis` longtext NOT NULL,
  `skeuasma` int(11) NOT NULL,
  `dosologia` text NOT NULL,
  `odhgies` longtext NOT NULL,
  `kreas` int(11) NOT NULL,
  `gala` int(11) NOT NULL,
  `auga` int(11) NOT NULL,
  `meli` int(11) NOT NULL,
  `alloi_istoi` longtext NOT NULL,
  `parathrhseis` longtext NOT NULL,
  `userPrescID` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `suntagografisi`
--

INSERT INTO `suntagografisi` (`suntagografisiID`, `dateSuntagografisi`, `tmhmaSuntagografisi`, `toposEkdosis`, `addressSuntagografisi`, `prodNameSuntagografisi`, `codeEktrofisSuntagografisi`, `eidosZwwnSuntagografisi`, `aitiaSuntagografisis`, `skeuasma`, `dosologia`, `odhgies`, `kreas`, `gala`, `auga`, `meli`, `alloi_istoi`, `parathrhseis`, `userPrescID`, `uid`) VALUES
(122, '2020-02-13', 'Π.Ε. Άρτας', 'areaV', 'addressV', 166, 'asd1548', 'raceV', 'diagnoseV', 21, '9', '', 9, 9, 9, 9, '', '', 1, 308),
(123, '2020-02-13', 'Π.Ε. Άρτας', 'areaV', 'addressV', 166, 'asd1548', 'raceV', 'diagnoseV', 18, '1', '', 1, 1, 1, 1, '', '', 2, 308),
(125, '2020-02-13', 'Π.Ε. Κοζάνης', 'toposV', 'addressV', 169, 'asasdasd', '1', 'diagnoseV', 22, '1', '', 1, 1, 1, 1, '', '', 3, 308),
(130, '2020-05-13', 'Π.Ε. Ροδόπης', 'topos', 'address', 171, 'AB123456', 'Cows', 'diagnwsi', 24, '0', 'asdasda', 7, 8, 9, 10, '', '', 1, 312),
(131, '2020-05-13', 'Π.Ε. Ροδόπης', 'topos', 'address', 171, 'AB123456', 'Cows', 'diagnwsi', 24, '0', '', 7, 8, 9, 10, '', '', 2, 312),
(132, '2021-06-20', 'NOTYET', 'Not Yet', 'K joy', 166, 'asd1548', 'raceV', 'Jn', 18, '1', '', 1, 1, 1, 1, '', '', 5, 308),
(133, '2021-06-20', 'NOTYET', 'Not Yet', 'Rf', 172, 'asd123', 'asd', 'Fc', 24, 'asdasd', '', 7, 8, 9, 10, '', '', 7, 312),
(134, '2021-06-23', 'NOTYET', 'Not Yet', 'Gh', 172, 'asd123', 'asd', 'Vb', 24, 'asdasd', '', 7, 8, 9, 10, '', '', 9, 312),
(135, '2021-07-11', 'NOTYET', 'Not Yet', 'Rr', 172, 'asd123', 'asd', 'Cv', 24, 'asdasd', '', 7, 8, 9, 10, '', '', 11, 312),
(136, '2021-07-21', 'NOTYET', 'Not Yet', 'Df', 172, 'asd123', 'asd', 'Dd', 24, 'asdasd', '', 7, 8, 9, 10, '', '', 13, 312);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `todo`
--

CREATE TABLE `todo` (
  `IDItem` int(11) NOT NULL,
  `item` longtext NOT NULL,
  `uid` int(11) NOT NULL,
  `isDone` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `todo`
--

INSERT INTO `todo` (`IDItem`, `item`, `uid`, `isDone`) VALUES
(168, 'test', 308, 1),
(180, 'Yhi', 308, 1),
(183, '115', 312, 1),
(184, '45645', 312, 1),
(186, 'fadadfasd', 312, 1),
(187, 'Hrj', 312, 0),
(188, 'jhkhjkh', 312, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fnameUsers` text NOT NULL,
  `lnameUsers` text NOT NULL,
  `emailUsers` text NOT NULL,
  `phoneUsers` bigint(20) NOT NULL,
  `AFMUsers` bigint(20) NOT NULL,
  `pwdUsers` longtext NOT NULL,
  `isEmailConfirmed` tinyint(4) NOT NULL,
  `token` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `fnameUsers`, `lnameUsers`, `emailUsers`, `phoneUsers`, `AFMUsers`, `pwdUsers`, `isEmailConfirmed`, `token`) VALUES
(308, 'evet', 'agenda', 'evetagenda@gmail.com', 6955504803, 521987463, '$2y$12$JIE12vZ81P.S4pWb0LRKAutC2afhT2j8gj3s84lm2SOecqpkrAHCu', 1, '0'),
(312, 'Markel', 'Pegio\r\n', 'markelpejo@gmail.com', 6955504803, 123456789, '$2y$12$JIE12vZ81P.S4pWb0LRKAutC2afhT2j8gj3s84lm2SOecqpkrAHCu', 1, '0');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `FKeyUser` (`uid`);

--
-- Ευρετήρια για πίνακα `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKeyUserE` (`prod_name`),
  ADD KEY `FKeyVetE` (`uid`);

--
-- Ευρετήρια για πίνακα `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicinesID`),
  ADD KEY `FKeyUserM` (`uid`);

--
-- Ευρετήρια για πίνακα `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`prodID`),
  ADD KEY `FKeyUserP` (`uid`);

--
-- Ευρετήρια για πίνακα `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdResetId`);

--
-- Ευρετήρια για πίνακα `suntagografisi`
--
ALTER TABLE `suntagografisi`
  ADD PRIMARY KEY (`suntagografisiID`),
  ADD KEY `FKeyMed` (`skeuasma`),
  ADD KEY `FKeyPresc` (`prodNameSuntagografisi`),
  ADD KEY `FKUser` (`uid`);

--
-- Ευρετήρια για πίνακα `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`IDItem`),
  ADD KEY `FKeyToDo` (`uid`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT για πίνακα `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT για πίνακα `medicines`
--
ALTER TABLE `medicines`
  MODIFY `medicinesID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT για πίνακα `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT για πίνακα `producer`
--
ALTER TABLE `producer`
  MODIFY `prodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT για πίνακα `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdResetId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT για πίνακα `suntagografisi`
--
ALTER TABLE `suntagografisi`
  MODIFY `suntagografisiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT για πίνακα `todo`
--
ALTER TABLE `todo`
  MODIFY `IDItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FKeyUser` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FKeyUserE` FOREIGN KEY (`prod_name`) REFERENCES `producer` (`prodID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKeyVetE` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `FKeyUserM` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `producer`
--
ALTER TABLE `producer`
  ADD CONSTRAINT `FKeyUserP` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `suntagografisi`
--
ALTER TABLE `suntagografisi`
  ADD CONSTRAINT `FKUser` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKeyMed` FOREIGN KEY (`skeuasma`) REFERENCES `medicines` (`medicinesID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKeyPresc` FOREIGN KEY (`prodNameSuntagografisi`) REFERENCES `producer` (`prodID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `todo`
--
ALTER TABLE `todo`
  ADD CONSTRAINT `FKeyToDo` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
