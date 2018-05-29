-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2016. Nov 27. 20:22
-- Kiszolgáló verziója: 10.1.16-MariaDB
-- PHP verzió: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `guide`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csatorna`
--

CREATE TABLE `csatorna` (
  `csid` int(11) NOT NULL,
  `nev` varchar(32) NOT NULL DEFAULT 'ismeretlen csatorna'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `csatorna`
--

INSERT INTO `csatorna` (`csid`, `nev`) VALUES
(1, 'Tv2'),
(2, 'Film+'),
(3, 'Mozi+'),
(4, 'Nat Geo'),
(5, 'MuzsikaTv'),
(6, 'HBO'),
(7, 'ComedyCentral'),
(8, 'Discovery');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film`
--

CREATE TABLE `film` (
  `mid` int(11) NOT NULL,
  `minosites` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyarto`
--

CREATE TABLE `gyarto` (
  `mid` int(11) NOT NULL,
  `cegnev` varchar(32) NOT NULL,
  `nemzetiseg` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatszik`
--

CREATE TABLE `jatszik` (
  `szid` int(11) NOT NULL,
  `mid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `jatszik`
--

INSERT INTO `jatszik` (`szid`, `mid`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(1, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 5),
(9, 5),
(10, 6),
(11, 6),
(12, 7),
(13, 8),
(14, 9),
(15, 9),
(16, 9),
(17, 10),
(18, 10),
(2, 20),
(64, 19),
(76, 12),
(12, 6),
(116, 8),
(49, 25),
(14, 23),
(29, 14),
(112, 19),
(23, 27),
(55, 14),
(111, 12),
(51, 2),
(93, 29),
(94, 2),
(5, 3),
(60, 17),
(34, 1),
(116, 24),
(66, 16),
(72, 30),
(114, 4),
(101, 14),
(64, 20),
(98, 22),
(27, 4),
(8, 22),
(42, 1),
(93, 18),
(31, 14),
(99, 19),
(29, 29),
(16, 22),
(105, 21),
(75, 4),
(55, 23),
(66, 28),
(101, 23),
(118, 29),
(68, 16),
(14, 8),
(23, 4),
(101, 13),
(70, 24),
(85, 22),
(85, 5),
(10, 6),
(4, 27),
(103, 6),
(80, 1),
(92, 10),
(68, 16),
(103, 10),
(76, 16),
(81, 15),
(99, 13),
(92, 28),
(119, 21),
(70, 18),
(54, 12),
(53, 23),
(8, 2),
(83, 14),
(81, 5),
(3, 11),
(32, 4),
(39, 10),
(95, 8),
(10, 17),
(19, 29),
(102, 8),
(4, 26),
(108, 20),
(49, 1),
(108, 12),
(20, 13),
(103, 5),
(108, 6),
(87, 9),
(88, 11),
(42, 20),
(111, 8),
(43, 5),
(55, 25),
(48, 30),
(24, 19),
(59, 3),
(29, 14),
(108, 28),
(101, 30),
(89, 25),
(14, 24),
(30, 22),
(12, 16),
(38, 14),
(101, 21),
(70, 15),
(87, 12),
(28, 4),
(86, 24);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kozerdeku`
--

CREATE TABLE `kozerdeku` (
  `mid` int(11) NOT NULL,
  `tema` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `media`
--

CREATE TABLE `media` (
  `mid` int(11) NOT NULL,
  `cim` varchar(32) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `ev` int(4) DEFAULT NULL,
  `korhatar` int(2) NOT NULL,
  `leiras` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `media`
--

INSERT INTO `media` (`mid`, `cim`, `ev`, `korhatar`, `leiras`) VALUES
(1, 'Szovetsegesek', 2016, 16, 'Director: Robert Zemeckis\r\nWriter: Steven Knight'),
(2, 'Z Vilaghaboru', 2013, 18, 'Director: Marc Forster\r\nWriters: Matthew Michael Carnahan'),
(3, 'Doctor Strange', 2016, 12, 'Director: Scott Derrickson\r\nWriters: Jon Spaihts, Scott Derrickson'),
(4, 'Kodjatszma', 2014, 12, NULL),
(5, 'A remeny rabjai', 1994, 16, NULL),
(6, 'A keresztapa', 1972, 16, 'Director: Francis Ford Coppola'),
(7, 'A sotet lovag', 2008, 16, 'Director: Christopher Nolan\r\nWriters: Jonathan Nolan'),
(8, 'Tizenket duhos ember', 1957, 12, NULL),
(9, 'Matrix', 1999, 16, NULL),
(10, 'Kemek Hidja', 2015, 16, NULL),
(11, 'Szomszedsag', 2001, 12, NULL),
(12, 'Meno manok', 2010, 6, 'mese'),
(13, 'Rossz napok', 1986, 16, ''),
(14, 'Valami mas', 1993, 12, ''),
(15, 'Utolso esely', 2003, 16, ''),
(16, 'Lany a vonaton', 2016, 16, ''),
(17, 'Vak sotet', 2016, 18, ''),
(18, 'Vissza a jovobe', 2000, 16, ''),
(19, 'Utolsok', 2006, 12, ''),
(20, 'K-pax', 2000, 12, ''),
(21, 'Akarlak teged', 1975, 12, ''),
(22, '22 jump street', 2015, 12, ''),
(23, 'A negy lovas', 1994, 12, ''),
(24, 'A szellemlovas', 2008, 16, ''),
(25, 'Wanted', 2008, 16, ''),
(26, 'Az istenit', 1956, 12, ''),
(27, 'Mennyi van meg', 2009, 16, ''),
(28, 'Hatra', 2015, 18, ''),
(29, 'Nem hiszem el', 1978, 12, ''),
(30, 'Na vegre', 1997, 12, '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sorozat`
--

CREATE TABLE `sorozat` (
  `mid` int(11) NOT NULL,
  `epizod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sugaroz`
--

CREATE TABLE `sugaroz` (
  `csid` int(11) NOT NULL,
  `mid` int(11) NOT NULL,
  `mikor` time NOT NULL,
  `meddig` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `sugaroz`
--

INSERT INTO `sugaroz` (`csid`, `mid`, `mikor`, `meddig`) VALUES
(1, 1, '08:00:00', '10:30:00'),
(2, 2, '08:00:00', '11:00:00'),
(2, 3, '11:00:00', '13:40:00'),
(2, 4, '13:40:00', '16:00:00'),
(2, 5, '16:00:00', '18:30:00'),
(2, 6, '18:30:00', '21:00:00'),
(3, 7, '08:30:00', '11:00:00'),
(3, 8, '11:00:00', '14:00:00'),
(3, 9, '14:00:00', '16:25:00'),
(3, 10, '16:25:00', '18:30:00'),
(3, 11, '18:30:00', '21:00:00'),
(4, 11, '08:00:00', '10:20:00'),
(4, 12, '10:20:00', '12:00:00'),
(4, 13, '12:00:00', '14:40:00'),
(4, 14, '14:40:00', '17:00:00'),
(4, 15, '17:00:00', '19:30:00'),
(4, 16, '19:30:00', '22:00:00'),
(5, 17, '07:00:00', '11:00:00'),
(5, 18, '11:00:00', '13:30:00'),
(5, 19, '13:30:00', '16:00:00'),
(5, 19, '16:00:00', '19:10:00'),
(5, 20, '19:10:00', '21:00:00'),
(6, 21, '06:00:00', '10:00:00'),
(6, 22, '10:00:00', '12:20:00'),
(6, 23, '12:20:00', '15:00:00'),
(6, 24, '15:00:00', '18:00:00'),
(6, 25, '18:00:00', '21:00:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szereplok`
--

CREATE TABLE `szereplok` (
  `szid` int(11) NOT NULL,
  `nev` varchar(32) NOT NULL,
  `szulev` date NOT NULL DEFAULT '2000-01-01'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `szereplok`
--

INSERT INTO `szereplok` (`szid`, `nev`, `szulev`) VALUES
(1, 'Brad Pitt', '1980-08-08'),
(2, 'Vincent Ebrahim', '2000-01-01'),
(3, 'Xavier De Guillebon', '2000-01-01'),
(4, 'Mireille Enos', '1878-03-03'),
(5, 'Daniella Kertesz', '2000-01-01'),
(6, 'Chiwetel Ejiofor', '2000-01-01'),
(7, 'Benedict Cumberbatch', '2000-01-01'),
(8, 'Tim Robbins', '2000-01-01'),
(9, 'Morgan Freeman', '2000-01-01'),
(10, 'Marlon Brando', '2000-01-01'),
(11, 'Al Pacino', '1952-03-01'),
(12, 'Christian Bale', '2000-01-01'),
(13, 'Heath Ledger', '2000-01-01'),
(14, 'Henry Fonda', '2000-01-01'),
(15, 'Lee J. Cobb', '2000-01-01'),
(16, 'Martin Balsam', '2000-01-01'),
(17, 'Keanu Reeves', '2000-01-01'),
(18, 'Laurence Fishburne', '2000-01-01'),
(19, 'Tom Cruise', '1987-12-01'),
(20, 'Diana Cook', '2012-08-14'),
(21, 'Raymond Cruz', '2010-03-10'),
(22, 'Cheryl Wallace', '1958-12-04'),
(23, 'Thomas Cunningham', '1961-04-02'),
(24, 'Gloria Peters', '1993-08-18'),
(25, 'Cynthia Black', '2016-04-06'),
(26, 'Jean Reyes', '1990-01-01'),
(27, 'Billy Foster', '2011-08-26'),
(28, 'Sharon Sims', '1959-10-14'),
(29, 'Keith Foster', '1990-08-03'),
(30, 'Henry Nichols', '1998-01-20'),
(31, 'Kimberly Baker', '2013-06-11'),
(32, 'Kathryn Armstrong', '1972-02-20'),
(33, 'Timothy Bishop', '1977-07-21'),
(34, 'Christopher Sanders', '1998-09-05'),
(35, 'Anna Lawrence', '1965-10-11'),
(36, 'Russell Payne', '1982-06-18'),
(37, 'Ronald Mcdonald', '1973-10-20'),
(38, 'Stephen Roberts', '1983-08-16'),
(39, 'Deborah Bishop', '1960-05-27'),
(40, 'Jimmy Davis', '1997-06-20'),
(41, 'Norma Rogers', '1961-10-16'),
(42, 'John Lewis', '2005-03-03'),
(43, 'Nicole Lane', '1986-05-27'),
(44, 'Christine Martin', '1968-05-03'),
(45, 'Margaret Cole', '1954-11-01'),
(46, 'Rebecca Hunt', '1977-01-03'),
(47, 'Ralph Ross', '1951-04-02'),
(48, 'Peter Torres', '1974-06-11'),
(49, 'Lawrence Richards', '1990-01-22'),
(50, 'Jonathan Reed', '1984-01-26'),
(51, 'Sean Meyer', '2012-09-16'),
(52, 'Louis Fernandez', '2014-05-10'),
(53, 'Christine Adams', '1960-07-26'),
(54, 'Lori Richards', '1954-11-16'),
(55, 'Todd Webb', '1965-06-23'),
(56, 'Raymond Carpenter', '1968-10-15'),
(57, 'Anthony Watson', '1990-09-26'),
(58, 'Jennifer Hunt', '2007-08-19'),
(59, 'Adam Turner', '2013-05-07'),
(60, 'Lois Hayes', '1972-05-12'),
(61, 'Norma Dean', '1982-08-22'),
(62, 'Christine Matthews', '2008-06-29'),
(63, 'Ronald Lawson', '1970-02-24'),
(64, 'William Bennett', '1958-03-07'),
(65, 'Julie Jacobs', '1975-01-01'),
(66, 'Susan Williams', '2012-05-30'),
(67, 'Linda Burton', '1968-11-05'),
(68, 'Judy Day', '1955-05-20'),
(69, 'Louise Castillo', '1995-11-06'),
(70, 'Sean Butler', '1964-09-03'),
(71, 'Sharon Greene', '1988-07-22'),
(72, 'Denise Allen', '1971-05-04'),
(73, 'Eric Reed', '2006-02-16'),
(74, 'Mildred Garrett', '1973-09-17'),
(75, 'Ruth Turner', '1980-05-05'),
(76, 'Frank Weaver', '1997-07-29'),
(77, 'Joe Torres', '1987-10-11'),
(78, 'Deborah Harper', '1985-04-14'),
(79, 'Jeffrey Bailey', '1978-11-06'),
(80, 'Jason Spencer', '1970-11-05'),
(81, 'Justin Franklin', '2000-01-07'),
(82, 'Cheryl Franklin', '2002-04-25'),
(83, 'Angela Lee', '1959-11-21'),
(84, 'Kathleen Sims', '1993-11-22'),
(85, 'Douglas Harrison', '1975-01-04'),
(86, 'Julia West', '1994-12-07'),
(87, 'Phyllis Greene', '1953-01-02'),
(88, 'Nicole Chapman', '2008-06-10'),
(89, 'Kenneth Weaver', '1987-04-08'),
(90, 'Nicole Harper', '1951-02-26'),
(91, 'Sandra Collins', '1994-06-06'),
(92, 'Katherine Perez', '1999-11-25'),
(93, 'Raymond Ford', '2012-07-22'),
(94, 'Joseph Gibson', '1974-07-14'),
(95, 'Thomas Butler', '1960-04-07'),
(96, 'Barbara Fuller', '2010-07-29'),
(97, 'Johnny Wright', '1969-06-26'),
(98, 'Andrew Ross', '1956-10-17'),
(99, 'Nicholas Baker', '1956-05-12'),
(100, 'Kathy Dean', '1996-12-24'),
(101, 'Carlos Martin', '2003-01-19'),
(102, 'Daniel Howell', '2008-09-24'),
(103, 'Evelyn Little', '1974-10-01'),
(104, 'Adam Wallace', '2010-01-08'),
(105, 'Heather White', '1991-05-05'),
(106, 'Sean Harrison', '1951-11-12'),
(107, 'Christopher Wallace', '1994-02-19'),
(108, 'Ann Mitchell', '1993-02-04'),
(109, 'Roger Spencer', '2013-08-30'),
(110, 'Joe Lawrence', '1964-04-02'),
(111, 'Phillip Gonzalez', '1984-02-21'),
(112, 'Raymond Gonzales', '2007-11-22'),
(113, 'Diane Reynolds', '2001-06-11'),
(114, 'Cheryl Rice', '1962-07-16'),
(115, 'Frank Lane', '1951-08-24'),
(116, 'Paul Kelley', '1994-11-23'),
(117, 'Ryan Griffin', '1998-12-27'),
(118, 'Ashley Adams', '1973-12-10'),
(119, 'Katherine Holmes', '1967-10-01'),
(120, 'PistaBÃ¡csi', '1999-09-09'),
(121, 'Kis Pisti', '1830-02-01');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csatorna`
--
ALTER TABLE `csatorna`
  ADD PRIMARY KEY (`csid`);

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD KEY `mid` (`mid`);

--
-- A tábla indexei `gyarto`
--
ALTER TABLE `gyarto`
  ADD KEY `mid` (`mid`);

--
-- A tábla indexei `jatszik`
--
ALTER TABLE `jatszik`
  ADD KEY `szid` (`szid`),
  ADD KEY `mid` (`mid`);

--
-- A tábla indexei `kozerdeku`
--
ALTER TABLE `kozerdeku`
  ADD KEY `mid` (`mid`);

--
-- A tábla indexei `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mid`);

--
-- A tábla indexei `sorozat`
--
ALTER TABLE `sorozat`
  ADD KEY `mid` (`mid`);

--
-- A tábla indexei `sugaroz`
--
ALTER TABLE `sugaroz`
  ADD KEY `csid` (`csid`),
  ADD KEY `mid` (`mid`);

--
-- A tábla indexei `szereplok`
--
ALTER TABLE `szereplok`
  ADD PRIMARY KEY (`szid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csatorna`
--
ALTER TABLE `csatorna`
  MODIFY `csid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT a táblához `szereplok`
--
ALTER TABLE `szereplok`
  MODIFY `szid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `media` (`mid`);

--
-- Megkötések a táblához `gyarto`
--
ALTER TABLE `gyarto`
  ADD CONSTRAINT `gyarto_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `media` (`mid`);

--
-- Megkötések a táblához `jatszik`
--
ALTER TABLE `jatszik`
  ADD CONSTRAINT `jatszik_ibfk_1` FOREIGN KEY (`szid`) REFERENCES `szereplok` (`szid`),
  ADD CONSTRAINT `jatszik_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `media` (`mid`);

--
-- Megkötések a táblához `kozerdeku`
--
ALTER TABLE `kozerdeku`
  ADD CONSTRAINT `kozerdeku_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `media` (`mid`);

--
-- Megkötések a táblához `sorozat`
--
ALTER TABLE `sorozat`
  ADD CONSTRAINT `sorozat_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `media` (`mid`);

--
-- Megkötések a táblához `sugaroz`
--
ALTER TABLE `sugaroz`
  ADD CONSTRAINT `sugaroz_ibfk_1` FOREIGN KEY (`csid`) REFERENCES `csatorna` (`csid`),
  ADD CONSTRAINT `sugaroz_ibfk_2` FOREIGN KEY (`mid`) REFERENCES `media` (`mid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
