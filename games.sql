

CREATE TABLE IF NOT EXISTS `sp_spiele`
(
	`spiel_id` INT NOT NULL AUTO_INCREMENT, 
	`spiel_name` VARCHAR(100) NOT NULL, 
	`spiel_erscheinungsdatum` DATE NOT NULL, 
	`spiel_preis` FLOAT NOT NULL, 
	`spiel_lagerbestand` INT NOT NULL, 
	PRIMARY KEY(`spiel_id`)
);

/*
----------------------------------------------------------------------------------------------------------------
-- Einfügen einiger Datensätze --------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
INSERT INTO `sp_spiele`(`spiel_name`, `spiel_erscheinungsdatum`, `spiel_preis`, `spiel_lagerbestand`)
VALUES
('Endgültige Fantasie Sieben', '1997-11-17', 12.99, 7), 
('Gott des Krieges: Aufstieg', '2013-03-13', 22.75, 1), 
('Große Tour 5', '2010-11-24', 25.00, 1), 
('Schlagkampf', '1995-11-03', 59.90, 1), 
('Europa LKW Simulator 2', '2012-10-19', 8.99, 5), 
('Professor Denkspiel und das Vermächtnis der Alten', '2013-11-08', 74.99, 3), 
('Taschenmonster Los, Pikachu', '2018-11-16', 44.39, 2), 
('Taschenmonster Los, Evoli', '2018-11-16', 44.39, 2), 
('Meer der Diebe', '2018-03-20', 34.99, 10), 
('Festungskampf Königliche Schlacht', '2017-09-28', 0.0, 7), 
('Welt des Kriegshandwerks', '2005-02-11', 14.51, 15), 
('Schlagkampf Drei', '1998-09-12', 89.90, 1), 
('Raketenliga', '2015-07-07', 21.99, 6), 
('Die Legende von Zelda: Okarina der Zeit', '1998-12-11', 14.90, 4), 
('Mein Bauwerk', '2011-11-18', 18.48, 2), 
('Leben ist merkwürdig - Teil 1', '2015-01-30', 0.0, 1), 
('Teufel darf weinen 2', '2003-04-03', 57.00, 3), 
('Himmelsland: Spiros Abenteuer', '2011-10-14', 19.95, 4), 
('Rennhorizont 4', '2018-10-02', 35.99, 4), 
('Großer Autodiebstahl: Heilige Andreas', '2004-10-29', 6.58, 1);
