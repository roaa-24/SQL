# 📌 SQL-Datentypen – Übersicht

Ein visuell ansprechendes und gut strukturiertes README für GitHub, das die wichtigsten SQL-Datentypen übersichtlich darstellt.

---

## 📊 Numerische Datentypen

| 🏷 Datentyp        | 📝 Beschreibung                                                                 | 🔢 Beispielwert       |
|--------------------|---------------------------------------------------------------------------------|-----------------------|
| `TINYINT`          | Ganzzahl (-128 bis 127 oder 0 bis 255)                                          | `127`                 |
| `SMALLINT`         | Ganzzahl (-32.768 bis 32.767)                                                   | `32000`               |
| `MEDIUMINT`        | Ganzzahl (-8.388.608 bis 8.388.607)                                             | `5000000`             |
| `INT` / `INTEGER`  | Ganzzahl (-2.147.483.648 bis 2.147.483.647)                                     | `100000`              |
| `BIGINT`           | Sehr große Ganzzahl                                                             | `9000000000`          |
| `DECIMAL(p,s)`     | Festkommazahl mit Präzision `p` und Skala `s`                                   | `1234.56`             |
| `FLOAT(m,d)`       | Gleitkommazahl mit `m` Ziffern und `d` Nachkommastellen                         | `12.34`               |
| `DOUBLE(m,d)`      | Doppelte Genauigkeit für Fließkommazahlen                                       | `123.4567`            |

---

## 🔤 Zeichen- und Textdatentypen

| 📌 Datentyp        | 📝 Beschreibung                                                                 | 🎭 Beispielwert       |
|--------------------|---------------------------------------------------------------------------------|-----------------------|
| `CHAR(n)`          | Feste Zeichenlänge (1 bis 255 Zeichen)                                          | `'A'`                 |
| `VARCHAR(n)`       | Variable Zeichenlänge (1 bis 65.535 Zeichen)                                    | `'Hallo Welt'`        |
| `TEXT`             | Textfeld für große Zeichenmengen                                                | `'Langer Text'`       |
| `TINYTEXT`         | Sehr kleiner Text (max. 255 Zeichen)                                            | `'Kurzer Text'`       |
| `MEDIUMTEXT`       | Mittellanger Text                                                               | `'Mehr Text'`         |
| `LONGTEXT`         | Sehr großer Text                                                                | `'Sehr langer Text'`  |

---

## 📆 Datums- und Zeitdatentypen

| ⏳ Datentyp        | 📝 Beschreibung                                                                 | 📅 Beispielwert       |
|--------------------|---------------------------------------------------------------------------------|-----------------------|
| `DATE`             | Datum (`YYYY-MM-DD`)                                                            | `'2025-03-03'`        |
| `DATETIME`         | Datum und Uhrzeit (`YYYY-MM-DD HH:MM:SS`)                                       | `'2025-03-03 14:30:00'` |
| `TIMESTAMP`        | UNIX-Zeitstempel                                                                | `'2025-03-03 14:30:00'` |
| `TIME`             | Zeit (`HH:MM:SS`)                                                               | `'14:30:00'`          |
| `YEAR`             | Jahr (`YYYY`)                                                                   | `'2025'`              |

---

## 🔘 Boolesche Werte

| 📌 Datentyp        | 📝 Beschreibung                                                                 | ✅ Beispielwert       |
|--------------------|---------------------------------------------------------------------------------|-----------------------|
| `BOOLEAN`          | Wahrheitswert (`TINYINT(1)`)                                                    | `TRUE` oder `FALSE`   |

---

## 🛠 Sonstige Datentypen

| 📌 Datentyp        | 📝 Beschreibung                                                                 | 🔗 Beispielwert       |
|--------------------|---------------------------------------------------------------------------------|---------------------- - |
| `BLOB`             | Binäre große Datenobjekte (max. 64 KB)                                          | Binärdaten              |
| `TINYBLOB`         | Kleines BLOB (max. 255 Byte)                                                    | Binärdaten              |
| `MEDIUMBLOB`       | Mittleres BLOB (max. 16 MB)                                                     | Binärdaten              |
| `LONGBLOB`         | Sehr großes BLOB (max. 4 GB)                                                    | Binärdaten              |
| `ENUM`             | Vordefinierte Werte                                                             | `'rot'`, `'blau'`, `'grün'` |
| `SET`              | Mehrfachauswahl aus vordefinierten Werten                                       | `'Apfel'`, `'Banane'` |

---

✅ **Dieses README wurde mit Farben, Icons und Tabellen gestaltet, um es auf GitHub ansprechend und übersichtlich zu präsentieren!** 🎨🚀

---

### 💡 Tipps zur Verwendung:
- **Numerische Datentypen**: Wähle den passenden Datentyp basierend auf dem Wertebereich, den du speichern möchtest.
- **Textdatentypen**: Verwende `VARCHAR` für variable Längen und `TEXT` für große Textmengen.
- **Datums- und Zeitdatentypen**: Achte auf die richtige Formatierung, um Fehler zu vermeiden.
- **Boolesche Werte**: Nutze `BOOLEAN` für einfache Wahrheitswerte.
- **Sonstige Datentypen**: `BLOB` eignet sich für binäre Daten, während `ENUM` und `SET` für vordefinierte Werte nützlich sind.

---

📌 **Hinweis**: Die genauen Spezifikationen können je nach Datenbanksystem (z. B. MySQL, PostgreSQL, SQL Server) variieren. Überprüfe die Dokumentation deines Datenbanksystems für Details.
