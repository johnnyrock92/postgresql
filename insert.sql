SET DATESTYLE TO 'European,German';
SET client_encoding='utf-8';

insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Kuśmierek','Małgorzata','81-124','Gdynia',NULL,'5056252840');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Chodkiewicz','Jan','81-737','Gdynia','Chwarznieńska 33/5','6126240860');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Szczęsna','Jadwiga','81-444','Gdynia','Bema 41a/12','6936243741');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Łukowski','Bernard','81-620','Gdynia','Górnicza 29','586230799');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Soroczyński','Jan','80-230','Gdańsk','Al. Hallera','5053090788');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Niezabitowska-Nasiadko','Marzena','80-619','Gdańsk','Focha 39-41 m.66','6123099102');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Kołak','Agnieszka','80-832','Gdańsk','Wąwóz 4',NULL);
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Kołak','Agnieszka','81-234','Kielno','4',NULL);
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values(NULL,'Hałasa','Ewa','80-511','Gdańsk','Dywizjonu 303/303','583483240');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Sosnowy','Andrzej','80-266','Gdańsk','Leśna Góra 41h/088','583467184');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Songin','Barbara','80-376','Gdańsk','Grunwaldzka 1024/128','5055528743');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Wróblewicz-Terlecka','Urszula','81-831','Sopot','Malczewskiego 99 m.34a','6935503001');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Soroczyński','Bogdan','81-825','Tczew','Małopolska 12','585553161');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Lutomska-Cudny','Wiesława','81-405','Gdańsk','Legionów 142 lok. 13','601622788');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values(NULL,'Miszke','Wojciech','81-831','Sopot','Mazowiecka 73/44','6125510353');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Zaorski','Marcin','89-534','Dziewięć Włók',NULL,NULL);
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Wiśniewska','Grażyna','84-586','Gdakowo','44','58');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Wierciński','Henryk','83-400','Gardeja Pierwsza','11','5055362237');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pan','Bazior','Gerard','87-109','Kwidzyn','Odrowskiego','582616374');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Nowak-Dybicka','Grażyna','89-794','Prabuty',NULL,'6932781431');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values(NULL,'Klub Spatif','','81-759','Sopot','Bohaterów Monte Cassino 52/54','585502683');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   values('Pani','Lutomska-Cudny','Wiesława','81-574','Gdynia','Stolemów 14','692286630');
insert into klient(tytul, nazwisko, imie, kod_pocztowy, miasto, ulica_dom, telefon)
   Values('Pan','Szymański','Wiesław','81-543','Gdynia','Światowida 135',NULL);

insert into towar(opis, koszt, cena) values('układanka drewniana', 15.23, 21.95);
insert into towar(opis, koszt, cena) values('układanka typu puzzle', 16.43, 19.99);
insert into towar(opis, koszt, cena) values('kostka Rubika', 7.45, 11.49);
insert into towar(opis, koszt, cena) values('Linux CD', 1.99, 2.49);
insert into towar(opis, koszt, cena) values('chusteczki higieniczne', 2.11, 3.99);
insert into towar(opis, koszt, cena) values(E'ramka do fotografii 4\'x6\'', 7.54, 9.95);
insert into towar(opis, koszt, cena) values('wentylator', 7.45, 15.75);
insert into towar(opis, koszt, cena) values(E'ramka do fotografii 3\'x4\'', 13.36, 19.95);
insert into towar(opis, koszt, cena) values('szczotka do zębów', 0.75, 1.45);
insert into towar(opis, koszt, cena) values('moneta srebrna z Papieżem', 20.00, 20.00);
insert into towar(opis, koszt, cena) values('torba plastikowa', 0.01, 0.0);
insert into towar(opis, koszt, cena) values('nożyczki drewniane', 8.18, NULL);
insert into towar(opis, koszt, cena) values('kompas wielofunkcyjny', 22.1, NULL);
insert into towar(opis, koszt, cena) values('obciążniki do obrusa', 0.78, NULL);
insert into towar(opis, koszt, cena) values('donica mała', 13.36, NULL);
insert into towar(opis, koszt, cena) values('donica średnia', 17.12, 19.99);
insert into towar(opis, koszt, cena) values('donica duża', 26.43, NULL);
insert into towar(opis, koszt, cena) values('zegarek damski', 14.89, NULL);
insert into towar(opis, koszt, cena) values('zegarek męski', 26.43, NULL);

insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(3,'13-03-2017','17-03-2017', 2.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(8,'12-01-2017','22-01-2017', 0.00);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(14,'31-01-2017','09-02-2017', 3.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(13,'27-02-2017','09-03-2017', 2.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(8,'07-01-2017','07-01-2017', 0.00);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(3,'23-03-2017','28-03-2017', 1.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(5,'4-02-2017',NULL, 2.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(13,'11-01-2017',NULL, 5.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(4,'22-03-2017','27-03-2017', 6.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(4,'1-02-2017','12-02-2017', 0.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(22,'13-01-2017','27-01-2017', 0.99);
insert into zamowienie(klient_nr, data_zlozenia, data_wysylki, koszt_wysylki)
       values(3,'21-02-2017','11-03-2017', 0.99);

insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(1, 4, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(1, 7, 5);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(1, 9, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(2, 1, 12);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(2, 10, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(2, 7, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(2, 4, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(3, 2, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(3, 1, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(4, 5, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(5, 1, 3);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(5, 3, 4);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(6, 15, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(6, 5, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(6, 13, 6);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(8, 13, 3);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(8, 3, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(9,14 , 4);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(9, 5, 4);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(9, 7, 5);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(9, 11, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(10, 7, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(11, 3, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(11, 5, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(12, 15, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(12, 5, 2);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(12, 19, 1);
insert into pozycja(zamowienie_nr, towar_nr, ilosc) values(12, 8, 3);

insert into zapas(towar_nr, ilosc) values(1,12);
insert into zapas(towar_nr, ilosc) values(2,2);
insert into zapas(towar_nr, ilosc) values(4,8);
insert into zapas(towar_nr, ilosc) values(5,3);
insert into zapas(towar_nr, ilosc) values(7,8);
insert into zapas(towar_nr, ilosc) values(8,18);
insert into zapas(towar_nr, ilosc) values(10,1);
insert into zapas(towar_nr, ilosc) values(12,8);
insert into zapas(towar_nr, ilosc) values(13,5);
insert into zapas(towar_nr, ilosc) values(15,14);
insert into zapas(towar_nr, ilosc) values(16,11);
insert into zapas(towar_nr, ilosc) values(18,9);
insert into zapas(towar_nr, ilosc) values(19,1);

insert into kod_kreskowy(kod, towar_nr) values('6241527836173', 1);
insert into kod_kreskowy(kod, towar_nr) values('6241574635234', 2);
insert into kod_kreskowy(kod, towar_nr) values('6264537836173', 3);
insert into kod_kreskowy(kod, towar_nr) values('6241527746363', 3);
insert into kod_kreskowy(kod, towar_nr) values('7465743843764', 4);
insert into kod_kreskowy(kod, towar_nr) values('3453458677628', 5);
insert into kod_kreskowy(kod, towar_nr) values('6434564564544', 6);
insert into kod_kreskowy(kod, towar_nr) values('8476736836876', 7);
insert into kod_kreskowy(kod, towar_nr) values('6241234586487', 8);
insert into kod_kreskowy(kod, towar_nr) values('9473625532534', 8);
insert into kod_kreskowy(kod, towar_nr) values('9473627464543', 8);
insert into kod_kreskowy(kod, towar_nr) values('4587263646878', 9);
insert into kod_kreskowy(kod, towar_nr) values('9879879837489', 11);
insert into kod_kreskowy(kod, towar_nr) values('2239872376872', 11);
insert into kod_kreskowy(kod, towar_nr) values('5229767712406', 12);
insert into kod_kreskowy(kod, towar_nr) values('1438568924292', 13);
insert into kod_kreskowy(kod, towar_nr) values('1969299228848', NULL);
insert into kod_kreskowy(kod, towar_nr) values('4335732187300', NULL);
insert into kod_kreskowy(kod, towar_nr) values('8198701673279', 15);
insert into kod_kreskowy(kod, towar_nr) values('1839494766592', 16);
insert into kod_kreskowy(kod, towar_nr) values('4892840112975', 17);
insert into kod_kreskowy(kod, towar_nr) values('8444435195272', 18);
insert into kod_kreskowy(kod, towar_nr) values('5892327956805', 18);
