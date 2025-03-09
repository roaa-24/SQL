
DROP TABLE IF EXISTS `fv_nutzer`;
DROP TABLE IF EXISTS `fv_produkte`;
DROP DATABASE IF EXISTS `fv_datenbank`;
CREATE DATABASE IF NOT EXISTS `fv_datenbank`;
USE `fv_datenbank`;

/*
----------------------------------------------------------------------------------------------------------------
-- Erstellung der Tabellen -------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
CREATE TABLE IF NOT EXISTS `fv_nutzer`
(
	`id_nutzer` INT NOT NULL AUTO_INCREMENT, 
	`vorname` VARCHAR(65) NOT NULL, 
	`nachname` VARCHAR(65) NOT NULL, 
	`geburtsdatum` DATE NOT NULL, 
	`telefonnummer` CHAR(10), 
	`einkaeufe` INT(11) NOT NULL DEFAULT '0', 
	PRIMARY KEY(`id_nutzer`)
);

CREATE TABLE IF NOT EXISTS `fv_produkte`
(
	`id_produkt` INT NOT NULL AUTO_INCREMENT, 
	`produktname` VARCHAR(100) NOT NULL, 
	`lagerbestand` INT NOT NULL DEFAULT '1', 
	`preis` FLOAT NOT NULL, 
	PRIMARY KEY(`id_produkt`)
);

/*
----------------------------------------------------------------------------------------------------------------
-- Einfügen einiger Datensätze --------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
*/
INSERT INTO `fv_nutzer` (`vorname`, `nachname`, `geburtsdatum`, `telefonnummer`, `einkaeufe`)
VALUES ('Maximilian', 'Müller', '1985-04-12', '0151123456', 5);
INSERT INTO `fv_nutzer` (`vorname`, `nachname`, `geburtsdatum`, `telefonnummer`)
VALUES ('Sophie', 'Schneider', '1992-07-30', '0172123456');
INSERT INTO `fv_nutzer` (`vorname`, `nachname`, `geburtsdatum`, `einkaeufe`)
VALUES ('Lukas', 'Fischer', '2000-11-15', 8);
INSERT INTO `fv_nutzer` (`vorname`, `nachname`, `geburtsdatum`, `telefonnummer`, `einkaeufe`)
VALUES ('Hannah', 'Weber', '1998-05-22', '0163123456', 3);
INSERT INTO `fv_nutzer` (`vorname`, `nachname`, `geburtsdatum`, `telefonnummer`, `einkaeufe`)
VALUES ('Felix', 'Hoffmann', '1976-09-05', '0155123456', 12);

INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Gaming-Laptop ProX', 10, 1499.99);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Kochbuch - Deutsche Küche', 50, 19.95);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Premium-Burger - mit Salat und Käse', 20, 14.90);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Premium-Burger - mit Salat und Käse', 20, 14.90);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Roman - Die verborgene Welt', 35, 12.95);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Buttercroissant', 5, 1.50);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Tragbare Kaffeemaschine', 100, 89.00);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Wasserflasche (1L)', 300, 1.20);
INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Amazon-Geschenkkarte', 50000, 25.00);
