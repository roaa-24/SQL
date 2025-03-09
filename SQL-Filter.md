
## 1. Einrichten der Datenbank
Bevor du mit SQL-Filtern arbeitest, musst du die Datenbank einrichten. Dazu verwendest du die bereitgestellte SQL-Datei.

   - Führe die SQL-Datei aus, indem du sie in den Editor lädst oder per Befehl einfügst:
     ```sql
     SOURCE pfad/zur/daten.sql;
     ```
   - Dadurch wird die Datenbank `sp_datenbank` erstellt und die Tabellen `sp_benutzer` und `sp_artikel` vorbereitet.

## 1. Einrichten der Datenbank
Bevor du mit SQL-Filtern arbeitest, musst du die Datenbank einrichten. Dazu verwendest du die bereitgestellte SQL-Datei.

   - Führe die SQL-Datei aus, indem du sie in den Editor lädst oder per Befehl einfügst:
     ```sql
     SOURCE pfad/zur/daten.sql;
     ```
     ![Captcha](https://github.com/roaa-24/SQL/blob/main/captcha9.png?raw=true)
   - Dadurch wird die Datenbank `spiele_db` erstellt und die Tabelle `sp_spiele` vorbereitet.

## 2. SQL-Filter kennenlernen
Sobald die Datenbank eingerichtet ist, kannst du verschiedene SQL-Filter ausprobieren.

### 2.1 Gleichheit (`=`)
Zeige alle Spiele mit der ID 1:
```sql
SELECT * FROM sp_spiele WHERE spiel_id = 1;
```

### 2.2 Ungleichheit (`!=` oder `<>`)
Zeige alle Spiele, die nicht "Minecraft" heißen:
```sql
SELECT * FROM sp_spiele WHERE spiel_name != 'Minecraft';
```
![Captcha](https://github.com/roaa-24/SQL/blob/main/captcha10.png?raw=true)

### 2.3 Größer als (`>`)
Zeige alle Spiele, deren Preis über 30 liegt:
```sql
SELECT * FROM sp_spiele WHERE spiel_preis > 30;
```

### 2.4 Kleiner als (`<`)
Zeige alle Spiele, die vor dem Jahr 2000 erschienen sind:
```sql
SELECT * FROM sp_spiele WHERE spiel_erscheinungsdatum < '2000-01-01';
```

### 2.5 Größer gleich (`>=`)
Zeige alle Spiele mit mindestens 5 Stück auf Lager:
```sql
SELECT * FROM sp_spiele WHERE spiel_lagerbestand >= 5;
```

### 2.6 Kleiner gleich (`<=`)
Zeige alle Spiele mit einem Preis von maximal 20 Euro:
```sql
SELECT * FROM sp_spiele WHERE spiel_preis <= 20;
```

## 3. Fazit
Mit diesen grundlegenden SQL-Filtern kannst du Daten effizient aus der `sp_spiele`-Tabelle abfragen. Experimentiere mit verschiedenen Bedingungen, um ein besseres Verständnis für SQL-Filter zu entwickeln!


