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
###### Tworzenie tabel
* **CREATE TABLE test** - tworzy tabelę o nazwie test
* **ON DELETE CASCADE** - usuwając pewien element w innej tabeli, usuwa też dane w tej gdzie zostało to zadeklarowane
* **REFERENCES test(id)** - tworzy powiązanie aktualnej tabeli z id w tabeli test
* **UNIQUE (id)** - używamy gdy chcemy , aby atrybut był unikatowy, niepowtarzalny np. id, pesel, nr dowodu osobistego
###### Dodawanie danych
* **INSERT INTO test (atrybut1, atrybut2) VALUES ('wartość1','wartość2')** - wypełnia danymi tabelę test
###### Usuwanie tabel
* **DROP TABLE test** - usuwa tabelę test razem z danymi
###### Tworzenie zapytań
* **SELECT * FROM test** - wyświetla/wyciąga wszystkie dane z tabeli test
* **ORDER BY** - sortowanie
```sql
    - SELECT nazwisko, kod_pocztowy, miasto, ulica_dom FROM klient;
    - SELECT * FROM klient ORDER BY miasto;
    - SELECT * FROM towar ORDER BY opis;
    - SELECT * FROM zamowienie ORDER BY koszt_wysylki;
    - SELECT * FROM kod_kreskowy ORDER BY kod;
    - SELECT nr, data_zlozenia FROM zamowienie ORDER BY nr;
```
* **AS** - tworzy alias (przyjazna nazwa) do kolumny w której przechowuje np. wynik odejmowania lub dodawania innych kolumn
* **ROUND(cena, 2)** - zaokrągli do dwóch miejsc po przecinku
```sql
    - SELECT *, ROUND((cena-koszt)/koszt*100, 2) || '%' AS procent FROM towar;
    - SELECT *, (data_wysylki-data_zlozenia) AS czas_realizacji FROM zamowienie;
```
* **SELECT * FROM test WHERE imie='Jan'** - wyświetla wszystkie dane z tabeli test gdzie atrybut *imie* ma wartość *Jan*
    - **WHERE telefon IS NULL** - wyświetli wszystkie wiersze z tabeli test gdzie atrybut *telefon* jest pusty
    - **WHERE opis LIKE '%piłka%'** - wyświetli wszystkie wiersze z tabeli test gdzie atrybut *opis* zawiera w zdaniu słowo *piłka*
    - **WHERE NOT miasto='Gdańsk'** - wyświetli wszystkie wiersze z tabeli test gdzie nie występuje w atrybucie *miasto* słowo *Gdansk*
    - **WHERE data_wysylki BETWEEN '2017/04/01' AND '2017/05/01'** - wyświetli wszystkie wiersze z tabeli zamowienie gdzie atrybut *data_wysylki* to zakres dat od do
```sql
    - SELECT * FROM klient WHERE NOT miasto='Gdańsk';
    - SELECT * FROM klient WHERE telefon IS NULL;
    - SELECT * FROM klient WHERE NOT miasto='Gdańsk' AND telefon IS NULL;
    - SELECT * FROM towar WHERE opis LIKE '%układanka%';
    - SELECT * FROM zamowienie WHERE data_wysylki IS NULL;
    - SELECT * FROM zamowienie WHERE data_wysylki BETWEEN '2017/02/01' AND '2017/02/28';
    - SELECT *, (data_wysylki-data_zlozenia) AS czas_realizacji FROM zamowienie WHERE data_wysylki IS NOT NULL;
```

* **DELETE FROM test** - usuwa wszystkie dane z tabeli test
* **UPDATE test SET imie='Piotr' WHERE id=1** - zmienia *imie* w tabeli test w wierszu o *id=1*
* **ALTER TABLE test ADD COLUMN data** - w tabeli test dodaj kolumnę o nazwie *data*
* **ALTER TABLE test DROP COLUMN adres** - w tabeli test usu kolumnę o nazwie *adres*
* **ALTER TABLE test RENAME COLUMN data TO urodzony** - w tabeli test zmie nazwę kolumny *data* na *urodzony*
* **DESC** - kolejność malejąca
* **ASC** - kolejność rosnąca
* **DISTINCT** - unikalne dane
* **INNER JOIN tabela ON** - złączenie
* **SELECT nazwisko, count(nazwisko) FROM klient GROUP BY nazwisko** - wyświetla listę nazwisk dodając nową kolumnę zliczającą ilość powtórzen danego nazwiska
* **GROUP BY** - złącza powtórzenia
* **HAVING count(nazwisko)>1** - wyświetli nazwiska mające powtórzenia



