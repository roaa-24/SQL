 Tabellen erstellen und modifizieren


## 📌 Grundlegende SQL-Constraints

### 1. **`NOT NULL`**
   - Stellt sicher, dass eine Spalte keinen `NULL`-Wert enthalten darf.
   ```sql
   `user_name` VARCHAR(30) NOT NULL
2. DEFAULT
Legt einen Standardwert für eine Spalte fest, falls kein Wert angegeben wird.

sql

`user_admin` BOOLEAN DEFAULT 0
3. CHECK
Überprüft, ob ein Wert eine bestimmte Bedingung erfüllt.

sql

ADD CHECK (`id_user` <= 10000)
4. UNIQUE
Stellt sicher, dass alle Werte in einer Spalte eindeutig sind.

sql

UNIQUE (`user_name`)
5. PRIMARY KEY
Definiert einen eindeutigen Identifikator für jede Zeile in der Tabelle.

sql

PRIMARY KEY (`id_user`)
6. AUTO_INCREMENT
Erhöht den Wert einer Spalte automatisch bei jedem neuen Eintrag.

sql
Copy
`id_user` SMALLINT(6) NOT NULL AUTO_INCREMENT
7. FOREIGN KEY
Verknüpft eine Spalte mit einer Spalte in einer anderen Tabelle.

sql

FOREIGN KEY (`news_author`) REFERENCES `t_users` (`id_user`)
8. INDEX
Verbessert die Leistung bei Abfragen, indem eine Spalte indiziert wird.

sql

CREATE INDEX `idx_users` ON `t_users` (`user_name`)
🛠 Tabellen erstellen und modifizieren
1. Tabelle t_users erstellen
sql

CREATE TABLE `t_users` (
    `id_user` SMALLINT(6) NOT NULL AUTO_INCREMENT,
    `user_name` VARCHAR(30) NOT NULL,
    `user_email` VARCHAR(100) NOT NULL,
    `user_registration` DATE NOT NULL,
    `user_admin` BOOLEAN DEFAULT 0,
    PRIMARY KEY (`id_user`),
    UNIQUE (`user_name`)
);
2. Tabelle t_news erstellen
sql

CREATE TABLE `t_news` (
    `id_news` SMALLINT(6) NOT NULL AUTO_INCREMENT,
    `news_title` VARCHAR(80) NOT NULL,
    `news_content` TEXT NOT NULL,
    `news_author` SMALLINT(6) NOT NULL,
    PRIMARY KEY (`id_news`),
    FOREIGN KEY (`news_author`) REFERENCES `t_users` (`id_user`)
);
3. Tabelle t_users modifizieren
Primary Key hinzufügen:

sql

ALTER TABLE `t_users`
ADD PRIMARY KEY (`id_user`);
Unique Constraint hinzufügen:

sql
Copy
ALTER TABLE `t_users`
ADD CONSTRAINT `UC_userid` UNIQUE (`id_user`, `user_name`);
Check Constraint hinzufügen:

sql

ALTER TABLE `t_users`
ADD CHECK (`id_user` <= 10000);
Default-Wert ändern:

sql

ALTER TABLE `t_users`
ALTER `user_admin` SET DEFAULT 0;
Default-Wert entfernen:

sql

ALTER TABLE `t_users`
ALTER `user_admin` DROP DEFAULT;
4. Tabelle t_news modifizieren
Fremdschlüssel hinzufügen:

sql

ALTER TABLE `t_news`
ADD CONSTRAINT `FK` FOREIGN KEY (`news_author`) REFERENCES `t_users` (`id_user`);
Fremdschlüssel entfernen:

sql

ALTER TABLE `t_news`
DROP FOREIGN KEY `FK`;


