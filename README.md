# postgresql

### Polecenia powłoki
* **psql** - uruchamia powłokę Postgresa
* **\?** - uruchamia pomoc powłoki
* **\h** - uruchamia pomoc SQL
* **\q** - wyjście z powłoki
* **\i** - wczytanie pliku zawierającego polecenia SQL np. \i drop.sql
* **psql -f test.sql** - bezpośrednie wywołanie powłoki wraz z plikiem .sql
* **pg_dump** - zrzucenie bazy do pliku
* **\dt** - sprawdza jakie tabele są dostępne w bazie
* **\d nazwa_tabeli** - wyświetla szczegóły tabeli

### Polecenia SQL
* **CREATE TABLE test** - tworzy tabelę o nazwie test
* **INSERT INTO test (atrybut1, atrybut2) VALUES ('wartość1','wartość2')** - wypełnia danymi tabelę test
* **DROP TABLE test** - usuwa tabelę test razem z danymi
* **SELECT * FROM test** - wyświetla/wyciąga wszystkie dane z tabeli test
* **SELECT * FROM test WHERE imie='Jan'** - wyświetla wszystkie dane z tabeli test gdzie atrybut *imie* ma wartość *Jan*