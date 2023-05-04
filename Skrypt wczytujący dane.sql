insert into kontener (Nr_Kontenera, Plomba, PIN)
values 
	('TCWB232961', 'RST3577', 1325687935),
	('TCGB234521', 'STT4567', 4325677893),
	('WCCB334221', 'RDT4627', 5225647852),
	('UHGB212671', 'KST6227', 7415427196),
	('ACSB582131', 'DGT1667', 9221654821);

insert into port (Nazwa_Portu, typ_transportu_wodnego)
values
	('BCT', 'W'),
	('GCT', 'W'),
	('DCT', 'W'),
	('SIGP', 'Z'),
	('ROTTERDAM', 'Z');

insert into statek (Nazwa_statku, Gestia, numer_kontenera, port_docelowy)
values
	('Santa Maria', 'HAPAG', 'TCWB232961', 'BCT'),
	('Gustloff', 'EVERGREEN', 'TCGB234521', 'GCT'),
	('USS Arizona', 'OOCL', 'WCCB334221', 'DCT'),
	('Bounty', 'COSCO', 'UHGB212671', 'SIGP'),
	('USS Missouri', 'MAERSK', 'ACSB582131', 'ROTTERDAM');


insert into przewoźnik (Nazwa_Przewoźnika)
values
	('Eurotrans'),
	('Driveru'),
	('Kangur'),
	('Marktransport'),
	('Poldrive');

insert into dowód_Osobisty (Pesel, Nr_Dowodu)
values
	(464111251, 'SPY6474752'),
	(526588837, 'XQE6319614'),
	(182757336, 'PDP2657128'),
	(744273545, 'HDF3209428'),
	(628579483, 'YCW3243079');

insert into kierowca (Imię, Nazwisko, Nr_Telefonu, nr_pesel)
values
	('Jan','Nowak','789682458', 464111251),
  	('Wojciech','Kowalski','013446525', 526588837),
  	('Dawid','Bębynek','248327454', 182757336),
  	('Filip','Krasicki','184866727', 744273545),
  	('Kacper','Stanecki','657732386', 628579483);


insert into auta (Nr_Pojazdu, Nr_Naczepy, kontener_numer, przewoźnik_nazwa, pesel)
values
	('PCT25431', 'PCT23456', 'TCWB232961', 'Eurotrans', 464111251),
	('PCT53421', 'PCT31156', 'TCGB234521', 'Driveru', 526588837),
	('PSZ14471', 'PSZ83252', 'WCCB334221', 'Kangur', 182757336),
	('PSZ71231', 'PSZ91216', 'UHGB212671', 'Marktransport', 744273545),
	('PO33187', 'PO13662', 'ACSB582131', 'Poldrive', 628579483);




insert into miejsce (Ulica, Miasto, Kod_Pocztowy, Typ_Transportu, pojazd)
values
	('ul. 1 Maja 16','Suwałki','02670','Z', 'PCT25431'),
  	('ul. 11 Listopada 44','Białystok','14735','W', 'PCT53421'),
  	('ul. Adama Mickiewicza 21','Tomaszów Mazowiecki','80638','W', 'PSZ14471'),
  	('ul. 6 Sierpnia 17','Mielec','73836','Z', 'PSZ71231'),
  	('ul. 28 Pułku Strzelców Kaniowskich 59','Łódź','43686','W', 'PO33187');



