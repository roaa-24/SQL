# MySQL: UTF-8 Unterstützung einrichten

Diese Anleitung zeigt, wie du MySQL für die Nutzung von UTF-8 (utf8mb4) einrichtest, um sicherzustellen, dass alle Zeichen, inklusive Emojis und Sonderzeichen, korrekt gespeichert werden.

## 📄 1. Konfigurationsdatei `my.ini` erstellen

1. 📁 Navigiere zum MySQL-Installationsordner.
2. 📝 Erstelle eine neue Datei mit dem Namen **my.ini**.
3. ✏️ Öffne die Datei mit einem Texteditor (z. B. Notepad++).
4. ➕ Füge folgende Zeilen hinzu:

   ```ini
   [mysqld]
   character-set-server=utf8mb4
   collation-server=utf8mb4_unicode_ci
   ```

## 🚀 2. MySQL-Server starten

Starte den MySQL-Server mit folgendem Befehl:

```sh
mysqld --console
```
![Captcha](https://github.com/roaa-24/SQL/blob/main/captcha.png?raw=true)



💡 Der Server läuft jetzt im Terminal und darf nicht geschlossen werden.

## 🔑 3. MySQL-Konsole starten (ohne Passwort)

Öffne die MySQL-Konsole mit:

```sh
mysql -u root
```
![Captcha](https://github.com/roaa-24/SQL/blob/main/captcha2.png?raw=true)
Falls der Befehl nicht gefunden wird, füge das `bin`-Verzeichnis von MySQL zum `PATH` hinzu:

1. ⚙️ Drücke `Win + R`, gib **sysdm.cpl** ein und bestätige mit **Enter**.
2. ⚡ Wechsle zum Tab **Erweitert** und klicke auf **Umgebungsvariablen**.
3. 📌 Wähle die Variable **Path** aus und klicke auf **Bearbeiten**.
4. ➕ Füge den Pfad zu deinem MySQL-`bin`-Verzeichnis hinzu, z. B.:
   
   ```
   D:\Programme\MySQL\mysql-8.0\bin
   ```

## 🔍 4. Zeichensatz-Einstellungen überprüfen

Nachdem die MySQL-Konsole gestartet wurde, überprüfe die Zeichensatz-Konfiguration mit:

```sql
SHOW VARIABLES LIKE 'character\_set\_%';
SHOW VARIABLES LIKE 'collation%';
```

### ✅ Erwartete Ergebnisse
- `character_set_server` sollte auf **utf8mb4** gesetzt sein.
- `collation_server` sollte auf **utf8mb4_unicode_ci** stehen.
![Captcha](https://github.com/roaa-24/SQL/blob/main/captcha3.png?raw=true)
Mit dieser Konfiguration ist sichergestellt, dass MySQL alle Zeichen, inklusive Emojis und Sonderzeichen, korrekt verarbeitet.

