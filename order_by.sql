SELECT * FROM klient ORDER BY miasto;
SELECT * FROM towar ORDER BY opis;

SELECT * FROM zamowienie ORDER BY koszt_wysylki;
SELECT * FROM kod_kreskowy ORDER BY kod;

SELECT nazwisko, kod_pocztowy, miasto, ulica_dom FROM klient;
SELECT nr, data_zlozenia FROM zamowienie ORDER BY nr;