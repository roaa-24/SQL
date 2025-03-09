

## 1. Einrichten der Datenbank
Bevor du mit SQL-Filtern arbeitest, musst du die Datenbank einrichten. Dazu verwendest du die bereitgestellte SQL-Datei.

### Schritte:
1. **SQL-Datenbank erstellen**
   - Öffne eine MySQL-Konsole oder einen SQL-Editor (z. B. MySQL Workbench, phpMyAdmin).
   - Führe die SQL-Datei aus, indem du sie in den Editor lädst oder per Befehl einfügst:
     ```sql
     SOURCE pfad/zur/daten.sql;
     ```
   - Dadurch wird die Datenbank `sp_datenbank` erstellt und die Tabellen `sp_benutzer` und `sp_artikel` vorbereitet.

2. **Datenbank verwenden**
   ```sql
   USE sp_datenbank;
   ```

## 2. SQL-Filter kennenlernen
Sobald die Datenbank eingerichtet ist, kannst du verschiedene SQL-Filter ausprobieren.

### 2.1 Gleichheit (`=`)
Zeige alle Benutzer mit der ID 1:
```sql
SELECT * FROM sp_benutzer WHERE id = 1;
```

### 2.2 Ungleichheit (`!=` oder `<>`)
Zeige alle Artikel, die nicht die Kategorie „Elektronik“ haben:
```sql
SELECT * FROM sp_artikel WHERE kategorie != 'Elektronik';
```

### 2.3 Größer als (`>`)
Zeige alle Artikel, deren Preis über 100 liegt:
```sql
SELECT * FROM sp_artikel WHERE preis > 100;
```

### 2.4 Kleiner als (`<`)
Zeige alle Benutzer unter 30 Jahren:
```sql
SELECT * FROM sp_benutzer WHERE alter < 30;
```

### 2.5 Größer gleich (`>=`)
Zeige alle Artikel mit mindestens 50 Stück auf Lager:
```sql
SELECT * FROM sp_artikel WHERE bestand >= 50;
```

### 2.6 Kleiner gleich (`<=`)
Zeige alle Benutzer mit einem Alter von maximal 25 Jahren:
```sql
SELECT * FROM sp_benutzer WHERE alter <= 25;
```

## 3. Fazit
Mit diesen grundlegenden SQL-Filtern kannst du Daten effizient aus Tabellen abfragen. Experimentiere mit verschiedenen Bedingungen, um ein besseres Verständnis für SQL-Filter zu entwickeln!

