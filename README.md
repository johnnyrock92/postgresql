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
* **ON DELETE CASCADE** - usuwając pewien element w innej tabeli, usuwa też dane w tej gdzie zostało to zadeklarowane
* **REFERENCES test(id)** - tworzy powiązanie aktualnej tabeli z id w tabeli test
* **UNIQUE (id)** - używamy gdy chcemy , aby atrybut był unikatowy, niepowtarzalny np. id, pesel, nr dowodu osobistego

* **SELECT * FROM test** - wyświetla/wyciąga wszystkie dane z tabeli test
* **SELECT * FROM test WHERE imie='Jan'** - wyświetla wszystkie dane z tabeli test gdzie atrybut *imie* ma wartość *Jan*
* **DELETE FROM test** - usuwa wszystkie dane z tabeli test
* **UPDATE test SET imie='Piotr' WHERE id=1** - zmienia *imie* w tabeli test w wierszu o *id=1*
* **ALTER TABLE test ADD COLUMN data** - w tabeli test dodaj kolumnę o nazwie *data*
* **ALTER TABLE test DROP COLUMN adres** - w tabeli test usu kolumnę o nazwie *adres*
* **ALTER TABLE test RENAME COLUMN data TO urodzony** - w tabeli test zmie nazwę kolumny *data* na *urodzony*
* **ORDER BY** - sortowanie
* **DESC** - kolejność malejąca
* **ASC** - kolejność rosnąca
* **AS** - tworzy nową kolumnę w której przechowuje np. wynik odejmowania lub dodawania innych kolumn
* **DISTINCT** - unikalne dane
* **INNER JOIN tabela ON** - złączenie
* **SELECT nazwisko, count(nazwisko) FROM klient GROUP BY nazwisko** - wyświetla listę nazwisk dodając nową kolumnę zliczającą ilość powtórzen danego nazwiska
* **GROUP BY** - złącza powtórzenia
* **HAVING count(nazwisko)>1** - wyświetli nazwiska mające powtórzenia