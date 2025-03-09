📂 SQL-Datei als Quelle ausführen

In MySQL (über die Kommandozeile)

Öffne die MySQL-Konsole und melde dich an:

```sql
mysql -u root -p
```

Lade das SQL-Skript mit:

```sql
SOURCE /pfad/zu/Da1.sql;
```


⚠️ Achtung: Falls du von Windows auf Linux/macOS kopierst, achte darauf, dass du die Schrägstriche (\ zu /) anpasst.

### 🔍 1. Wiederherstellung der Datenbank
```sql
DROP TABLE IF EXISTS `fv_nutzer`;
DROP TABLE IF EXISTS `fv_produkte`;
DROP DATABASE IF EXISTS `fv_datenbank`;
CREATE DATABASE IF NOT EXISTS `fv_datenbank`;
USE `fv_datenbank`;
```
🔹 Diese Abfragen löschen bestehende Tabellen und die Datenbank, falls sie existieren, und erstellen eine neue Datenbank `fv_datenbank`.

### 🏗️ 2. Erstellung der Tabellen
```sql
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
```
🔹 Erstellt die Tabellen `fv_nutzer` für Benutzer und `fv_produkte` für Produkte.
🔹 `AUTO_INCREMENT` sorgt für eine automatische ID-Vergabe.
🔹 `NOT NULL` stellt sicher, dass keine leeren Werte erlaubt sind.
🔹 `DEFAULT` setzt Standardwerte für Felder.

### 📝 3. Einfügen von Testdaten
```sql
INSERT INTO `fv_nutzer` (`vorname`, `nachname`, `geburtsdatum`, `telefonnummer`, `einkaeufe`)
VALUES ('Maximilian', 'Müller', '1985-04-12', '0151123456', 5),
       ('Sophie', 'Schneider', '1992-07-30', '0172123456', 0),
       ('Lukas', 'Fischer', '2000-11-15', NULL, 8),
       ('Hannah', 'Weber', '1998-05-22', '0163123456', 3),
       ('Felix', 'Hoffmann', '1976-09-05', '0155123456', 12);

INSERT INTO `fv_produkte` (`produktname`, `lagerbestand`, `preis`)
VALUES ('Gaming-Laptop ProX', 10, 1499.99),
       ('Kochbuch - Deutsche Küche', 50, 19.95),
       ('Premium-Burger - mit Salat und Käse', 20, 14.90),
       ('Roman - Die verborgene Welt', 35, 12.95),
       ('Buttercroissant', 5, 1.50),
       ('Tragbare Kaffeemaschine', 100, 89.00),
       ('Wasserflasche (1L)', 300, 1.20),
       ('Amazon-Geschenkkarte', 50000, 25.00);
```
🔹 Fügt verschiedene Nutzer und Produkte mit Testwerten ein.
🔹 `NULL` kann verwendet werden, wenn keine Telefonnummer angegeben ist.
🔹 `DEFAULT` Werte greifen, falls Felder fehlen.

### 💡 Fazit
- Mit diesen SQL-Abfragen kann eine einfache Shop-Datenbank erstellt werden.
- Nutzer- und Produktdaten können leicht hinzugefügt und verwaltet werden.
- `NULL` und `DEFAULT` helfen, Fehler zu vermeiden.

🔥 Bereit für die Arbeit mit Datenbanken? Leg los! 🚀🎉

