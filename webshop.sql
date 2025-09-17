CREATE DATABASE IF NOT EXISTS `webshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `webshop`;

CREATE TABLE `album` (
  `ID` smallint(6) NOT NULL,
  `titel` varchar(45) NOT NULL,
  `artiest` varchar(45) NOT NULL,
  `genre` varchar(15) NOT NULL,
  `prijs` decimal(4,2) NOT NULL,
  `voorraad` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `album` (`ID`, `titel`, `artiest`, `genre`, `prijs`, `voorraad`) VALUES
(1, 'Cafe Atlantico', 'Cesarie Evora', 'World', '3.00', 100),
(2, 'Rumba Azul', 'Caetano Veloso', 'Latin', '4.90', 50),
(3, 'Survivor', 'Destiny\'s Child', 'R&B', '3.00', 789),
(4, 'Oh Girl', 'The Chi-lites', 'Pop', '3.00', 2),
(5, 'Der Herr ist mein getre', 'Ton Koopman', 'Klassiek', '5.50', 30),
(6, 'Closing Time', 'Tom Waits', 'Rock', '3.00', 0),
(7, 'Irresistible', 'Celia Cruz', 'Latin', '3.50', 23),
(8, 'Marvin Gaye II', 'Marvin Gaye', 'R&B', '4.00', 154),
(9, 'Mi Sangre', 'Juanes', 'Latin', '3.90', 123),
(10, 'Greatest Hits 2', 'Queen', 'Rock', '3.00', 0),
(11, '3121', 'Prince', 'Rock', '3.45', 0),
(12, 'Antologia I', 'Paco de Lucia', 'World', '3.00', 320);


CREATE TABLE `item` (
  `ID` int(11) NOT NULL,
  `weborder_ID` int(11) NOT NULL,
  `klant_ID` int(11) NOT NULL,
  `album_ID` int(11) NOT NULL,
  `aantal` int(11) NOT NULL,
  `prijs_eenheid` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `item` (`ID`, `weborder_ID`, `klant_ID`, `album_ID`, `aantal`, `prijs_eenheid`) VALUES
(1, 1, 1, 1, 1, '3.00'),
(2, 1, 1, 5, 2, '5.50'),
(3, 2, 5, 8, 1, '4.00'),
(4, 2, 5, 10, 2, '3.00'),
(5, 3, 3, 1, 1, '3.00'),
(6, 4, 2, 5, 1, '5.50'),
(7, 4, 2, 8, 1, '4.00'),
(8, 4, 2, 6, 1, '3.00'),
(9, 5, 6, 4, 2, '3.00'),
(10, 5, 6, 6, 1, '3.00'),
(11, 5, 6, 1, 1, '3.00'),
(12, 5, 6, 9, 1, '3.90'),
(13, 5, 6, 10, 3, '3.00');


CREATE TABLE `klant` (
  `ID` int(11) NOT NULL,
  `voornaam` varchar(45) NOT NULL,
  `achternaam` varchar(45) NOT NULL,
  `straat` varchar(45) NOT NULL,
  `postcode` varchar(45) NOT NULL,
  `woonplaats` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `klant` (`ID`, `voornaam`, `achternaam`, `straat`, `postcode`, `woonplaats`, `email`) VALUES
(1, 'Dylan', 'Huisden', 'Middenweg 11', '1088 VV', 'Amsterdam', 'dhuisden@roc.nl'),
(2, 'Nitin', 'Bosman', 'Leidseweg 22', '9900 BB', 'Amsterdam', 'nbosman@roc.nl'),
(3, 'Joseph', 'Demirel', 'Leidseplein 33', '9988 BB', 'Utrecht', 'josdem@hotmail.com'),
(4, 'Franco', 'Tasiyan', 'Kruislaan 444', '3300 VV', 'Utrecht', 'frantas@wanadoo.nl'),
(5, 'Akash', 'Kabil', 'Galileiplantsoen 111', '1010RR', 'Amstelveen', 'aka@hetnet.nl'),
(6, 'Tamara', 'Kabil', 'Mozartstraat 22', '3388 XX', 'Amsterdam', 'tamka@hotmail.com'),
(7, 'Arnold', 'Shaw', 'Kruislaan 1', '9876 FF', 'Rotterdam', 'asha@roc.nl');


CREATE TABLE `weborder` (
  `ID` int(11) NOT NULL,
  `klant_ID` int(11) NOT NULL,
  `datum` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `weborder` (`ID`, `klant_ID`, `datum`) VALUES
(1, 1, '2015-01-01 00:00:00'),
(2, 1, '2015-01-01 00:00:00'),
(3, 2, '2015-02-15 00:00:00'),
(4, 3, '2015-02-20 00:00:00'),
(5, 3, '2015-03-13 00:00:00');


-- Indexes
ALTER TABLE `album`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `item`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `klant`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `weborder`
  ADD PRIMARY KEY (`ID`);

ALTER TABLE `album`
  MODIFY `ID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `weborder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
