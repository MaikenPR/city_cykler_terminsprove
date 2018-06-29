-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 29. 06 2018 kl. 12:35:57
-- Serverversion: 10.1.26-MariaDB
-- PHP-version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `city_cykler`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `navn` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `brand`
--

INSERT INTO `brand` (`id`, `navn`) VALUES
(1, 'Kildemoes'),
(2, 'MBK'),
(3, 'Mustang'),
(4, 'Jensen'),
(5, 'Bianchi'),
(6, 'Tårnby'),
(7, 'Winther'),
(8, 'MET'),
(9, 'Lazer'),
(10, 'VDO'),
(11, 'Tranz-x'),
(12, 'Michelin'),
(13, 'Lipu'),
(14, 'Sidi'),
(15, 'Nike'),
(16, 'Alessi Bianchi'),
(17, 'John D'),
(18, 'Hamax'),
(19, 'Shimano');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cykel_farve`
--

CREATE TABLE `cykel_farve` (
  `id` int(11) NOT NULL,
  `fk_cykel` int(11) NOT NULL,
  `fk_farve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cykler`
--

CREATE TABLE `cykler` (
  `id` int(11) NOT NULL,
  `billede` varchar(50) NOT NULL,
  `fk_brand` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `pris` int(5) NOT NULL,
  `beskrivelse` varchar(500) NOT NULL,
  `fk_kategori` int(11) NOT NULL,
  `dato` date DEFAULT NULL,
  `tilbudspris` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `cykler`
--

INSERT INTO `cykler` (`id`, `billede`, `fk_brand`, `model`, `pris`, `beskrivelse`, `fk_kategori`, `dato`, `tilbudspris`) VALUES
(6, 'racer3.jpg', 6, 'Tvb Racer', 8995, 'Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små og i farverne sølv, sort og rød og blå metalic.', 2, NULL, 7500),
(7, 'dame1.jpg', 6, 'City 3', 4295, 'Denne elegante cykel er en rigtig god og all-round cykel til den aktive cyklist. Den fås i flere størrelser og i farverne rød og sølv metalic. Cyklen har 7 indvendige gear, fodbremse og håndforbremse.', 3, NULL, NULL),
(8, 'dame2.jpg', 7, 'Classic 2', 3595, 'Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning.', 3, NULL, 3000),
(9, 'dame3.jpg', 7, 'Classic 2 Pink edition', 3999, 'Er man til nostalgi eller synes at de moderne cykler er forkerte, så har man muligheden for her at få en cykel, der ligner bedstemors. Men teknologien er forbedret, så du får en topmoderne cykel i forklædning. Synes man at de originale farver er for kedelige, kan den også fås i en lidt mere moderne udgave i farven pink.', 3, NULL, NULL),
(10, 'dame4.jpg', 6, 'Street', 4595, 'En god all-round cykel, som fås i flere farver og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr.', 3, NULL, 3500),
(11, 'herre1.jpg', 7, 'Classic', 5550, 'En god all-round herrecykel, som fås i sort og sort metallic og størrelser. På cyklen er der monteret et indvendigt Shimano-gearsystem med 7 gear. Så det er også nemt at komme op ad bakken. Cyklen er fabrikeret af aluminium med speciallakering, der kan tåle det danske vejr.', 4, NULL, NULL),
(12, 'herre2.jpg', 6, 'Katmandu', 4595, 'En let og elegant herrecykel til dig, der har brug for en god og solid cykel. Cyklen fås i flere størrelser og farver, bl.a. lys blå metalic, sort metalic og sølv metalic. På cyklen er der monteret et indvendigt Shimanogearsystem med 7 gear. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr.', 4, NULL, NULL),
(13, 'herre3.jpg', 7, 'City Limit', 3595, 'Denne cykel er for dig, der bare har brug for en cykel uden de store dikkedarer. Her får du en god all-round cykel, der kan holde til de mange gøremål, der er i dagligdagen. Cyklen er monteret med et indvendigt Shimano gearsystem med 5 gear. Cyklen har desuden bagagebærer og støttefod. Lakeringen er en speciallakering fremstillet til at modstå det danske vejr.', 4, NULL, 3000),
(14, 'barn1.jpg', 7, 'WB-1', 1495, 'Her er den første juniorcykel. Cyklen fås til både drenge og piger. Den fås i flere farver. Cyklen passer til aldersgruppen 3 – 6 år. Man kan få støttehjul til cyklen, så det bliver nemmere for barnet at lære at cykle selv.', 5, NULL, 1000),
(15, 'barn2.jpg', 7, 'WB-2', 2195, 'Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med gult og sort stel til drenge og orange og sort til piger. Cyklen har en sort bagagebærer.', 5, NULL, 1800),
(16, 'barn3.jpg', 7, 'WB-3', 2295, 'Når barnet når skolealderen er dette den perfekte cykel. Her får man en god gedigen cykel, der kan holde til at blive til at blive brugt hver dag. Cyklen har forbremser og fodbremser. Cyklen fås i et smart layout med rødt og hvidt stel til piger og blåt og hvidt stel til drenge. Cyklen har en sort bagagebærer.', 5, NULL, NULL),
(17, 'barn4.jpg', 7, 'WB-4', 1695, 'Denne smarte cykel er rigtig god, når barnet skal cykle til skole hver dag og også bruge cyklen i de øvrige hverdagssituationer. Cyklen leveres i smarte farver og findes til både drenge og piger.', 5, NULL, NULL),
(18, 'trehjulet1.jpg', 7, 'Mini', 548, 'Her får dit barn en god og solid cykel i nogle spændende farver. Lige til at tage sig en god cykeltur på. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 6, NULL, NULL),
(19, 'trehjulet2.jpg', 7, 'Midi', 548, 'Her får den gode velkendte røde trehjulede cykel, som gennem generationer har været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 6, NULL, NULL),
(20, 'trehjulet3.jpg', 7, 'Maxi', 548, 'Den trehjulede velkendte trehjulede cykel fås også i andre farver, f. eks. I pink og blå. Gennem generationer har været den trehjulede cykel altid været det første valg. Cyklen har tippelad. Cyklen er, som alle vore øvrige cykler, solidt bygget, så den kan holde til dagligt og solidt brug. Cyklen er konstrueret, så barnet får den største fornøjelse af cyklen.', 6, NULL, NULL),
(27, 'racer1.jpg', 4, 'Racer B29', 4995, 'Er man til fart og elegance, så er dette cyklen for dig. For her får du en smart, smuk og funktionel cykel, som bringer dig hurtigt frem til dit bestemmelsessted. Cyklen fås til både piger og drenge, store som små.', 2, NULL, NULL),
(28, 'racer2.jpg', 5, 'Race4', 9599, 'Er du til specialcykler med superudstyr og gode køreegenskaber, så er dette cyklen for dig. Her får du 21 gear med tre klinger. Bremsesystemet er et af de allerbedste på markedet. Cyklen fås i flere størrelser til både kvinder og mænd. Cyklen fås i sølv, sort og rød og blå metalic.', 2, NULL, NULL),
(36, 'MTB2.jpg', 2, 'Mont blanc', 2995, 'Dette er den ultimative cykel til bykørsel. For her får du en rigtig supersmart og elegant mountainbike. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser, farver og med forskelligt udstyr.', 1, NULL, 1600),
(37, 'MTB3.jpg', 3, 'Fun', 2595, 'Er du barn eller ung og gerne vil have en mountainbike kan vi selvfølgelig også magte det. Cyklen fås i hvid med blå eller rød dekoration. Cyklen en særdeles god til bykørsel, så det bliver en leg at cykle til skole.', 1, NULL, NULL),
(39, 'cykel2.jpg', 1, 'TEST TIL SLET', 2995, 'DETTE ER TIL TEST', 3, NULL, NULL),
(40, 'cykel3.jpg', 1, 'TIL TEST AF SLET', 1595, 'DETTE ER TIL TEST', 5, NULL, NULL),
(41, 'cykel1.jpg', 6, 'TIL TEST AF SLET', 1795, 'DETTE ER TIL TEST', 2, NULL, NULL),
(44, 'cykel3.jpg', 1, 'TIL TEST AF OPRET', 2456, 'DETTE ER EN TEST', 5, NULL, NULL),
(45, 'cykel1.jpg', 3, 'TIL TEST AF OPRET', 2456, 'DETTE ER EN TEST', 2, NULL, NULL),
(46, 'cykel2.jpg', 6, 'TIL TEST AF OPRET', 2456, 'DETTE ER EN TEST', 3, NULL, NULL),
(47, 'cykel2.jpg', 3, 'TIL TEST AF OPRET', 3333, 'Dette er en test', 3, NULL, NULL),
(48, 'MTB1.jpg', 1, 'Jala', 2195, 'Her er cyklen for dig, der skal være smart og hurtig. Du får her en supersmart mountainbike, der også er rigtig god til bykørsel. Cyklen har aerodynamisk facon, så vindmodstanden mindskes. Cyklen fås i flere størrelser og med forskelligt udstyr.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `farve`
--

CREATE TABLE `farve` (
  `id` int(11) NOT NULL,
  `navn` varchar(10) NOT NULL,
  `billede` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `farve`
--

INSERT INTO `farve` (`id`, `navn`, `billede`) VALUES
(1, 'rød', 'cykelfarve_1.jpg'),
(2, 'gul', 'cykelfarve_2.jpg'),
(3, 'mørkegrøn', 'cykelfarve_3.jpg'),
(4, 'lysegrøn', 'cykelfarve_4.jpg'),
(5, 'blå', 'cykelfarve_5.jpg'),
(6, 'lilla', 'cykelfarve_6.jpg'),
(7, 'pink', 'cykelfarve_7.jpg'),
(8, 'hvid', 'cykelfarve_8.jpg'),
(9, 'grå', 'cykelfarve_9.jpg'),
(10, 'sort', 'cykelfarve_10.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `navn` varchar(50) NOT NULL,
  `billede` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `kategori`
--

INSERT INTO `kategori` (`id`, `navn`, `billede`) VALUES
(1, 'Mountainbikes', 'mountainbikes.jpg'),
(2, 'Racercykler', 'racercykler.jpg'),
(3, 'Damecykler', 'damecykler.jpg'),
(4, 'Herrecykler', 'herrecykler.jpg'),
(5, 'Børnecykler', 'boernecykler.jpg'),
(6, 'Trehjulede', 'trehjulede.jpg'),
(7, 'Cykelhjelme', 'cykelhjelme.jpg'),
(8, 'Cykelcomputere', 'cykelcomputere.jpg'),
(9, 'Værktøj', 'vaerktoej.jpg'),
(10, 'Cykeltøj', 'cykeltoej.jpg'),
(11, 'Barnestole', 'barnestole.jpg'),
(12, 'Reservedele', 'reservedele.jpg');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `kontakt`
--

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL,
  `firmanavn` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `postnr` int(4) NOT NULL,
  `city` varchar(30) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `kontakt`
--

INSERT INTO `kontakt` (`id`, `firmanavn`, `adresse`, `postnr`, `city`, `telefon`, `fax`, `email`) VALUES
(1, 'City Cykler A/S', 'Nygade 65', 9000, 'Ålborg', '(+45) 98 10 10 11', '(+45) 98 10 10 12', 'contact@cc.dk');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `udstyr`
--

CREATE TABLE `udstyr` (
  `id` int(11) NOT NULL,
  `billede` varchar(30) NOT NULL,
  `fk_brand` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `pris` int(5) NOT NULL,
  `beskrivelse` varchar(500) NOT NULL,
  `fk_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `udstyr`
--

INSERT INTO `udstyr` (`id`, `billede`, `fk_brand`, `model`, `pris`, `beskrivelse`, `fk_kategori`) VALUES
(61, 'hjelm1.jpg', 8, 'Junior', 395, 'Alle bør have en cykelhjelm. Vi har derfor fundet denne smarte model til små piger, der gerne vil være prinsesser. Hjelmen er pink med hvide blomster og passer til piger i alderen 5 – 12 år.', 7),
(62, 'hjelm2.gif', 9, 'Mouse', 275, 'Alle bør have en cykelhjelm. Også når man sidder bagpå fars eller mors cykel Vi har derfor fundet denne smarte model til små piger og drenge. Hjelmen er designet, så den ligner en sød lille mus. Den passer til piger og drenge i alderen 1 - 5 år.', 7),
(63, 'hjelm3.gif', 9, 'Regular', 495, 'Cykelhjelme er for alle. Både børn og voksne. Vi har derfor fundet denne smarte model, som fås til både børn og voksne. Hjelmen fås i farverne rød og blå. Den fås i børnestørrelser fra 6 år og i voksenstørrelser op til 60 cm.', 7),
(64, 'hjelm4.jpg', 8, 'Blue', 995, 'For den professionelle rytter eller for hende, der gerne vil have den ultimative cykelhjelm har vi denne aerodynamiske model i hvid og blå.', 7),
(65, 'computer1.jpg', 2, 'Com3', 349, 'Her får man en god og gedigen cykelcomputer. Computeren har otte forskellige funktioner. Computeren har et stort display og den er nem at indstille.', 8),
(66, 'computer2.jpg', 10, 'CompuSpeed 1', 259, 'Her får man en trådløs og programmerbar cykelcomputer. Computeren har selvfølgelig et stort læsevenligt display. Der er femten indbyggede funktioner inklusiv kalorie- og fedtforbrænding, så man uden problemer kan følge med i fedtforbrændingen.', 8),
(67, 'computer3.jpg', 2, 'Com2', 299, 'Her får man en god og gedigen cykelcomputer. Computeren har ni forskellige funktioner, som f.eks. tidsmåler og temperatur måler. Computeren har et stort display og den er nem at indstille.', 8),
(68, 'computer4.jpg', 10, 'CompuSpeed 2', 399, 'Cykelcomputeren her har mange forskellige funktioner. F.eks. kan man måle den aktuelle hastighed, kørt tid, gennemsnitshastighed. Man kan også se den kørte distance for en eller to cykler.', 8),
(69, 'vaerktoej1.jpg', 11, 'Kædeadskiller', 89, 'Vil man holde sin cykel i en god stand, er man nødt til at have det rigtige værktøj. Så derfor bør denne flotte kædeadskiller med flere forskellige funktioner være i enhver handymans cykelværktøjskasse. Der er bl.a. unbracho nøgler og skruetrækker med stjernekærv og lige kærv.', 9),
(70, 'vaerktoej2.jpg', 12, 'Dækjern', 12, 'Det sker jo at selv det bedste dæk kan punktere. Derfor er et sæt dækjern uundværligt. Ellers bliver det at skifte dæk for besværligt.', 9),
(71, 'vaerktoej3.jpg', 13, 'Foldeværktøj', 45, 'Foldeværktøjet med 6 forskellige funktioner fås i rød. Her er bl.a. unbracho nøgler i forkellige størrelser. Skruetrækker med stjerne og lige kærv.', 9),
(72, 'toej1.jpg', 14, 'Cykelsko', 599, 'Cykler man meget på en racercykel, så kan det være en god ide, at investere i et par rigtige cykelsko. Så får du nemlig en meget større fornøjelse af din cykeltur. Her får du et rigtig godt par til en fornuftig pris.', 10),
(73, 'toej2.jpg', 15, 'Frakke', 899, 'En god sommerjakke til herrer. Der er en god ventilation i jakken, som er både vandtæt og åndbar.', 10),
(74, 'toej3.jpg', 16, 'Kasket', 89, 'Køb denne smarte cap fra Alessi Bianchi. Så er du med på moden. Cappen fås kun i en størrelse.', 10),
(75, 'toej4.jpg', 17, 'Cykelsæt', 999, 'Dette vintersæt med jakke og bukser er i vores sædvanlige gode kvalitet. Både jakke og bukser kan købes separat til følgende priser: Bukser 799 kr. og jakke 699 kr.', 10),
(76, 'toej5.jpg', 17, 'Bukser', 299, 'Cykler man meget og langt, kan man i det lange løb ikke undvære et par gode cykelbukser. Bukserne er med korte bukser og fremstillet af sort lycra.', 10),
(77, 'stol1.jpg', 18, 'Mini', 1595, 'Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, så benene ikke kan komme ind i cyklens hjul.', 11),
(78, 'stol2.gif', 18, 'Midi', 1795, 'Her får du en elegant barnestol med den største comfort til dit barn, når I cykler. Cyklen er fremstillet i formstøbt plastik med benforlængere, der ender som støtter til barnets fødder. Derved undgår man at barnets ben kommer ind i cyklens hjul.', 11),
(79, 'reserve1.jpg', 7, 'Kæde', 99, 'Skal cyklen have skiftet kæde, er denne kæde et godt valg. Kæden er rustfri og passer til 7 og 8 udvendige gear. Når du skifter kæde, bør du også skifte krans.', 12),
(80, 'reserve2.jpg', 7, 'Støtteben', 149, 'Støtteben til mountainbikes og citycyklen. Ja, det er ren rigtig god ting, da man jo ikke altid kan regne med at der er et cykelstativ, man kan placere sin cykel i. Støttebenet er blankt og kan justeres.', 12),
(81, 'reserve3.jpg', 3, 'Dæk', 299, 'Træt af at punktere i tide og utide. Så prøv dette punkterfrie dæk med kevlar. Så får du nedsat dine punkteringer med 90 procent. Dækket er meget nemt at montere.', 12),
(82, 'reserve4.jpg', 19, 'Deore Gear', 249, 'Her får du et godt og solidt baggear. Gearskiftet bliver derved til en leg.', 12);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `cykel_farve`
--
ALTER TABLE `cykel_farve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cykel` (`fk_cykel`),
  ADD KEY `fk_farve` (`fk_farve`);

--
-- Indeks for tabel `cykler`
--
ALTER TABLE `cykler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand` (`fk_brand`),
  ADD KEY `fk_kategori` (`fk_kategori`);

--
-- Indeks for tabel `farve`
--
ALTER TABLE `farve`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `udstyr`
--
ALTER TABLE `udstyr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_brand` (`fk_brand`),
  ADD KEY `fk_kategori` (`fk_kategori`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Tilføj AUTO_INCREMENT i tabel `cykel_farve`
--
ALTER TABLE `cykel_farve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tilføj AUTO_INCREMENT i tabel `cykler`
--
ALTER TABLE `cykler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- Tilføj AUTO_INCREMENT i tabel `farve`
--
ALTER TABLE `farve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Tilføj AUTO_INCREMENT i tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Tilføj AUTO_INCREMENT i tabel `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Tilføj AUTO_INCREMENT i tabel `udstyr`
--
ALTER TABLE `udstyr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `cykel_farve`
--
ALTER TABLE `cykel_farve`
  ADD CONSTRAINT `cykel_farve_ibfk_1` FOREIGN KEY (`fk_cykel`) REFERENCES `cykler` (`id`),
  ADD CONSTRAINT `cykel_farve_ibfk_2` FOREIGN KEY (`fk_farve`) REFERENCES `farve` (`id`);

--
-- Begrænsninger for tabel `cykler`
--
ALTER TABLE `cykler`
  ADD CONSTRAINT `cykler_ibfk_1` FOREIGN KEY (`fk_brand`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `cykler_ibfk_2` FOREIGN KEY (`fk_kategori`) REFERENCES `kategori` (`id`);

--
-- Begrænsninger for tabel `udstyr`
--
ALTER TABLE `udstyr`
  ADD CONSTRAINT `udstyr_ibfk_1` FOREIGN KEY (`fk_brand`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `udstyr_ibfk_2` FOREIGN KEY (`fk_kategori`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
