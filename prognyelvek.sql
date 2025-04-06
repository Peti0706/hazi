-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 06. 20:55
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `prognyelvek`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoriak`
--

CREATE TABLE `kategoriak` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoriak`
--

INSERT INTO `kategoriak` (`id`, `nev`) VALUES
(1, 'Webfejlesztés'),
(2, 'Mobilfejlesztés'),
(3, 'Adatfeldolgozás és tudomány'),
(4, 'Rendszerprogramozás'),
(5, 'Játékfejlesztés');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nyelvek`
--

CREATE TABLE `nyelvek` (
  `id` int(11) NOT NULL,
  `nev` varchar(255) NOT NULL,
  `leiras` text NOT NULL,
  `kategoriaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `nyelvek`
--

INSERT INTO `nyelvek` (`id`, `nev`, `leiras`, `kategoriaid`) VALUES
(1, 'JavaScript', 'Egy magas szintű, értelmezett nyelv, amelyet főként webfejlesztésre használnak. Dinamikus, kliensoldali interakciókat (pl. animációk, űrlapkezelés) tesz lehetővé böngészőkben, de a Node.js-nek köszönhetően szerveroldalon is népszerű. Rugalmas, de a laza típuskezelése miatt figyelmet igényel.', 1),
(2, 'Python', 'Magas szintű, értelmezett nyelv, amelyet egyszerű szintaxisa és olvashatósága miatt kedvelnek. Sokoldalú: adatfeldolgozásra, mesterséges intelligenciára, webfejlesztésre (pl. Django) és automatizálásra is használják. Kezdőknek és profiknak egyaránt ideális.', 3),
(3, 'C', 'Alacsony szintű, fordított nyelv, amely nagy kontrollt biztosít a hardver felett. Gyors és hatékony, ezért operációs rendszerek (pl. Unix), beágyazott rendszerek és teljesítménykritikus alkalmazások fejlesztésére használják. Manuális memóriakezelést igényel.', 4),
(4, 'Kotlin', 'Magas szintű, fordított nyelv, amelyet a Java alternatívájaként fejlesztettek ki. Főként Android-alkalmazások készítésére használják, de más területeken is terjed. Tömör, biztonságos (pl. null pointer hibák csökkentése), és jól működik együtt a Javával.', 2),
(5, 'C++', 'A C objektumorientált kiterjesztése, fordított nyelv. Nagy teljesítményű, ezért játékfejlesztésben (pl. Unreal Engine), rendszerprogramozásban és nagy szoftverekben (pl. böngészők) alkalmazzák. Komplex, de rendkívül hatékony.', 5),
(6, 'C#', 'Magas szintű, fordított nyelv, amelyet a Microsoft fejlesztett. Objektumorientált, és főként Windows-alkalmazásokhoz, játékfejlesztéshez (pl. Unity) és vállalati szoftverekhez használják. A .NET keretrendszerrel szoros kapcsolatban áll, szintaxisa a C++-ra és a Javára hasonlít.', 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kategoriak`
--
ALTER TABLE `kategoriak`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `nyelvek`
--
ALTER TABLE `nyelvek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kategoriak`
--
ALTER TABLE `kategoriak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `nyelvek`
--
ALTER TABLE `nyelvek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
