SELECT imie, nazwisko, opis, ilosc,
       ilosc * (cena - koszt) AS zysk
   FROM  (( klient 
             INNER JOIN zamowienie 
                ON klient.nr = zamowienie.klient_nr
          ) INNER JOIN pozycja
              ON zamowienie.nr = pozycja.zamowienie_nr
         ) INNER JOIN towar 
           ON pozycja.towar_nr = towar.nr
           ORDER BY nazwisko
;

SELECT imie, nazwisko, opis, ilosc, ilosc * (cena - koszt) AS zysk
    FROM (
        (klient INNER JOIN zamowienie ON klient.nr = zamowienie.klient_nr) 
        INNER JOIN pozycja ON zamowienie.nr = pozycja.zamowienie_nr) 
        INNER JOIN towar ON pozycja.towar_nr = towar.nr
WHERE cena IS NOT NULL 
ORDER BY nazwisko
;