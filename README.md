# postgresql

## Polecenia powłoki
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
```sql
    - INSERT INTO kod_kreskowy (kod, towar_nr) VALUES ('1234567891234', 14);
    - INSERT INTO kod_kreskowy (kod, towar_nr) VALUES (7894561234567, null);
    - INSERT INTO klient (nazwisko, kod_pocztowy) VALUES (E'O\'Hara', '84-200');
    - INSERT INTO zamowienie (klient_nr, data_zlozenia, koszt_wysylki) VALUES (1, '2017-04-25', '8.99');
```
###### Usuwanie tabel
* **DROP TABLE test** - usuwa tabelę test razem z danymi
```sql
    - DROP VIEW towar_zysk;
    - DROP TABLE kod_kreskowy;
    - DROP TABLE pozycja;
    - DROP TABLE zapas;
    - DROP TABLE zamowienie;
    - DROP TABLE towar;
    - DROP TABLE klient;
```
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
* **INNER JOIN tabela ON** - złączenie tabel
* **DISTINCT** - unikalne dane
```sql
    - SELECT imie, nazwisko
        FROM klient INNER JOIN zamowienie
        ON klient.nr=zamowienie.klient_nr
        ORDER BY nazwisko;
    - SELECT DISTINCT imie, nazwisko
        FROM klient INNER JOIN zamowienie
        ON klient.nr=zamowienie.klient_nr
        ORDER BY nazwisko;
```
* **GROUP BY** - złącza powtórzenia
* **HAVING count(nazwisko)>1** - wyświetli nazwiska mające powtórzenia
* **SELECT nazwisko, count(nazwisko) FROM klient GROUP BY nazwisko** - wyświetla listę nazwisk dodając nową kolumnę zliczającą ilość powtórzen danego nazwiska
```sql
    - SELECT cena FROM towar GROUP BY cena HAVING count (cena) > 1;
    - SELECT opis, cena FROM towar WHERE cena IN (SELECT cena FROM towar GROUP BY cena HAVING count (cena) > 1);
    - SELECT opis, koszt FROM towar WHERE koszt IN (SELECT koszt FROM towar GROUP BY koszt HAVING count (koszt) > 1);
```
* **WHERE EXISTS** - gdzie istnieje
```sql
    - SELECT nr, imie, nazwisko FROM klient K
        WHERE EXISTS (
        SELECT *
            FROM zamowienie Z INNER JOIN pozycja P
            ON K.nr=Z.klient_nr
            AND P.zamowienie_nr=Z.nr
      );
    - SELECT nr, imie, nazwisko FROM klient 
        WHERE nr IN (
        SELECT klient_nr
            FROM zamowienie 
            WHERE nr NOT IN (
                SELECT zamowienie_nr 
                FROM pozycja
            )
      );
    - SELECT nr, imie, nazwisko FROM klient 
        WHERE nr IN (
        SELECT klient_nr 
            FROM zamowienie Z 
            WHERE NOT EXISTS (
                SELECT *
                FROM pozycja P 
                WHERE Z.nr = P.zamowienie_nr
            )
      );
```
[WIĘCEJ PRZYKŁADÓW INNER JOIN](https://github.com/johnnyrock92/postgresql/blob/master/inner_join.sql)
* **min(atrybut)** - zwraca minimalną wartość kolumny
* **avg(atrybut)** - zwraca średnią wartość kolumny
* **max(atrybut)** - zwraca maksymalną wartość kolumny
```sql
    - SELECT imie, nazwisko,
        min(data_wysylki-data_zlozenia) AS min_czas_oczekiwania,
        round(avg(data_wysylki-data_zlozenia)) AS sredni_czas_oczekiwania,
        max(data_wysylki-data_zlozenia) AS max_czas_oczekiwania FROM 
      (klient INNER JOIN zamowienie ON klient.nr = zamowienie.klient_nr)
      GROUP BY imie, nazwisko;
```
* **sum(atrybut)** - sumuje atrybut dla poszczególnych wystąpien
```sql
    - SELECT imie, nazwisko,
        sum(ilosc) AS ilosc_szt,
        round(avg(data_wysylki-data_zlozenia)) AS sredni_czas_oczekiwania FROM
      (( klient INNER JOIN zamowienie ON klient.nr = zamowienie.klient_nr)
      INNER JOIN pozycja ON zamowienie.nr = pozycja.zamowienie_nr)
      INNER JOIN towar ON pozycja.towar_nr = towar.nr
      WHERE towar.opis LIKE 'chusteczki%'
      GROUP BY imie, nazwisko;

    - SELECT klient.nr, imie, nazwisko,
        sum(ilosc) AS szt_towarów, 
        sum(ilosc * cena) AS suma,
        sum(ilosc * (cena - koszt)) AS zysk
      FROM (  (  ( klient 
                   INNER JOIN zamowienie 
                      ON klient.nr = zamowienie.klient_nr
                 )
                 INNER JOIN pozycja
                    ON zamowienie.nr = pozycja.zamowienie_nr
              )
              INNER JOIN towar
                 ON pozycja.towar_nr = towar.nr
          )
      GROUP BY klient.nr, imie, nazwisko
      ORDER BY nazwisko;
```
* **UPDATE test SET imie='Piotr' WHERE id=1** - zmienia *imie* w tabeli test w wierszu o *id=1*
    - **SET opis = opis||' dodatkowy napis'** - dołącza dodatkowy napis
```sql
    - UPDATE towar SET opis = opis||'; brak kodu'
        WHERE NOT EXISTS (SELECT 1 FROM kod_kreskowy WHERE nr=towar_nr);
    - UPDATE towar SET opis = opis||'; KOD'
        WHERE EXISTS (SELECT 1 FROM kod_kreskowy WHERE nr=towar_nr);
    - UPDATE towar SET cena=(SELECT avg(cena) FROM towar)
        WHERE cena IS NULL;
```
* **DELETE FROM test** - usuwa wszystkie dane z tabeli test
```sql
    - DELETE FROM klient WHERE miasto LIKE 'Sopot';
    - DELETE FROM klient WHERE telefon IS NULL AND NOT EXISTS (SELECT 1 FROM zamowienie WHERE zamowienie.klient_nr=klient.nr);
    - DELETE FROM kod_kreskowy WHERE towar_nr IS NULL;
    - DELETE FROM klient WHERE nr NOT IN (SELECT klient_nr FROM zamowienie);
    - DELETE FROM zamowienie WHERE nr NOT IN (SELECT zamowienie_nr FROM pozycja);
    - DELETE FROM pozycja WHERE NOT EXISTS (SELECT * FROM kod_kreskowy WHERE pozycja.towar_nr=kod_kreskowy.towar_nr);
    - DELETE FROM towar WHERE NOT EXISTS (SELECT * FROM kod_kreskowy WHERE towar.nr=kod_kreskowy.towar_nr);
```
* **ALTER TABLE test ADD COLUMN data** - w tabeli test dodaj kolumnę o nazwie *data*
* **ALTER TABLE test DROP COLUMN adres** - w tabeli test usu kolumnę o nazwie *adres*
* **ALTER TABLE test RENAME COLUMN data TO urodzony** - w tabeli test zmie nazwę kolumny *data* na *urodzony*
* **DESC** - kolejność malejąca
* **ASC** - kolejność rosnąca



