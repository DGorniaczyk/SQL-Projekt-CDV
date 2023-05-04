create table Port(
	Nazwa_Portu varchar(50) primary key,
	Typ_Transportu_Wodnego char(1) not null
		check(Typ_Transportu_Wodnego in ('Z', 'W')));	

	
create table Kontener(
	Nr_Kontenera varchar(10) primary key,
	Plomba varchar(10),
	PIN numeric(10) not null);

create table Statek(
	Nazwa_Statku varchar(20) primary key,
	Gestia varchar(20) not null,
	Port_Docelowy varchar(50) not null
		references Port(Nazwa_Portu),
	Numer_Kontenera varchar(10) not null
		references Kontener(Nr_Kontenera));


create table Przewoźnik(
	Nazwa_Przewoźnika varchar(50) primary key);

create table Dowód_Osobisty (
	Pesel numeric(10) primary key,
	Nr_Dowodu varchar(15) not null);

create table Kierowca (
	Imię varchar(30) not null,
	Nazwisko varchar(30) not null,
	Nr_Telefonu numeric(15) not null,
	Nr_Pesel numeric(10) primary key
		references Dowód_Osobisty(Pesel));

create table Auta (
	Nr_Pojazdu varchar(20) primary key,
	Nr_Naczepy varchar(20) not null,
	Kontener_Numer varchar(10) not null
		references Kontener(Nr_Kontenera),
	Przewoźnik_Nazwa varchar(50) 
		references Przewoźnik(Nazwa_Przewoźnika),
	Pesel numeric(10) not null
		references Kierowca(Nr_Pesel))
	;

create table Miejsce (
	Ulica	varchar(100) not null,
	Miasto varchar(50) not null,
	Kod_Pocztowy numeric(10) primary key,
	typ_transportu char(1) not null  
		check(typ_transportu in ('Z', 'W')),
	pojazd varchar(20) not null
		references Auta(Nr_Pojazdu));

	