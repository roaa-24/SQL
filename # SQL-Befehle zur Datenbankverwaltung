# SQL-Befehle zur Datenbankverwaltung

## Kommentare in SQL
- `-- Kommentar auf einer Zeile`
- `# Kommentar auf einer Zeile`
- `/* Kommentar über mehrere Zeilen */`

## Datenbanken anzeigen und verwalten
```sql
SHOW DATABASES; -- Zeigt alle vorhandenen Datenbanken an
SHOW TABLES FROM rourou; -- Zeigt alle Tabellen der Datenbank 'rourou' an
```

## Datenbank erstellen
```sql
CREATE DATABASE IF NOT EXISTS 'datenbankname'; -- Erstellt eine Datenbank, falls sie noch nicht existiert
USE test; -- Wechselt zur Datenbank 'test'
```

## Tabellen anzeigen und erstellen
```sql
SHOW TABLES; -- Zeigt alle Tabellen in der aktuellen Datenbank an

CREATE TABLE rourou (
    id_user INT,
    username VARCHAR(65),
    userbirthday DATE
);
```

## Tabellenstruktur anzeigen
```sql
DESCRIBE Kunde; -- Zeigt die Struktur der Tabelle 'Kunde'
EXPLAIN rourou; -- Zeigt detaillierte Informationen zur Tabelle 'rourou'
```

## Tabelle `t_users` erstellen
```sql
CREATE TABLE `t_users` (
    `id_user` SMALLINT,
    `user_name` VARCHAR(30) NOT NULL,
    `user_email` VARCHAR(100) NOT NULL,
    `user_registration` DATE NOT NULL,
    `user_admin` BOOLEAN,
    `user_birthday` DATE
);
```

## Änderungen an einer Tabelle vornehmen
```sql
ALTER TABLE `t_users`
CHANGE `user_birthday` `userbirth` DATE; -- Spaltenname ändern

ALTER TABLE `t_users`
ADD `user_points` TINYINT(2); -- Neue Spalte hinzufügen

ALTER TABLE `t_users`
DROP `user_points`; -- Spalte entfernen

ALTER TABLE `t_users`
MODIFY `id_user` SMALLINT; -- Datentyp einer Spalte ändern

ALTER TABLE `t_users`
MODIFY `user_name` VARCHAR(30) NOT NULL; -- Setzt die Spalte als NOT NULL (Pflichtfeld)
```

## Tabelle löschen
```sql
DROP TABLE `t_users`; -- Löscht die Tabelle 't_users'
```

## Tabellenstatus anzeigen
```sql
SHOW TABLE STATUS; -- Zeigt Informationen zu allen Tabellen in der aktuellen Datenbank an
```

## Wichtige Hinweise
- `NOT NULL` bedeutet, dass eine Spalte nicht leer sein darf (Pflichtfeld).
- `IF NOT EXISTS` stellt sicher, dass eine Datenbank oder Tabelle nur erstellt wird, wenn sie nicht bereits existiert.
- `DESCRIBE` oder `EXPLAIN` können verwendet werden, um die Struktur einer Tabelle anzuzeigen.

