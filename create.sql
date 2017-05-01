create table klient
(
    nr                          serial                    ,
    tytul                       char(4)                   ,
    imie                        varchar(16)               ,
    nazwisko                    varchar(32)       NOT NULL,
    kod_pocztowy                char(6)           NOT NULL,
    miasto                      varchar(32)               ,
    ulica_dom                   varchar(64)               ,
    telefon                     varchar(11)               ,
    CONSTRAINT                  klient_nr_pk PRIMARY KEY(nr),
    CONSTRAINT                  klient_telefon_un UNIQUE(telefon)
);
create table towar
(
    nr                          serial                    ,
    opis                        varchar(64)       NOT NULL,
    koszt                       numeric(7,2)      NOT NULL,
    cena                        numeric(7,2)              ,
    CONSTRAINT                  towar_nr_pk PRIMARY KEY(nr)
);
create table zamowienie
(
    nr                          serial                    ,
    klient_nr                   int           NOT NULL,
    data_zlozenia               date              NOT NULL,
    data_wysylki                date                      ,
    koszt_wysylki               numeric(7,2)              ,
    CONSTRAINT                  zamowienie_nr_pk PRIMARY KEY(nr)         ,
    CONSTRAINT                  klient_fk FOREIGN KEY(klient_nr)
                                   REFERENCES klient(nr),
    CONSTRAINT                  dates CHECK(data_zlozenia<=data_wysylki)
);
create table zapas
(
    towar_nr                    int               NOT NULL,
    ilosc                       int               NOT NULL  CHECK (ilosc>=0),
    CONSTRAINT                  zapas_towar_nr_pk PRIMARY KEY(towar_nr),
    CONSTRAINT                  towar_nr_fk FOREIGN KEY(towar_nr)
                                   REFERENCES towar(nr)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);
create table pozycja
(
    zamowienie_nr               int               NOT NULL,
    towar_nr                    int               NOT NULL,
    ilosc                       int               NOT NULL,
    CONSTRAINT                  pozycja_pk 
                                   PRIMARY KEY(zamowienie_nr, towar_nr),
    CONSTRAINT                  pozycja_zamowienie_nr_fk 
                                   FOREIGN KEY(zamowienie_nr)
                                   REFERENCES zamowienie(nr)
                                   ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT                  pozycja_towar_nr_fk 
                                   FOREIGN KEY(towar_nr)
                                   REFERENCES towar(nr)
);
create table kod_kreskowy
(
    kod                         char(13)              NOT NULL,
    towar_nr                    int                       ,
    CONSTRAINT                  kod_kreskowy_kod_pk PRIMARY KEY(kod),
    CONSTRAINT                  kod_kreskowy_towar_nr_fk 
                                   FOREIGN KEY(towar_nr)
                                   REFERENCES towar(nr)
                                   ON UPDATE CASCADE ON DELETE SET NULL
);

-- drop table kod_kreskowy;
-- drop table pozycja;
-- drop table zapas;
-- drop table zamowienie;
-- drop table towar;
-- drop table klient;
