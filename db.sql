create database progettoweb collate utf8_general_ci;

use progettoweb;

create table categorie (
  Nome varchar(50) not null PRIMARY KEY,
  Descrizione varchar(255)
);
create table utente (
  IdUtente int AUTO_INCREMENT primary key,
  UserName varchar(50) not null,
  Password varchar(64) not null,
  Nome varchar(50) not null,
  Cognome varchar(50) not null,
  Email varchar(100) not null,
  DataNascita Date,
  Tipo enum('Administrator', 'User', 'Seller') not null,
  Validato enum('true', 'false')not null,
  validationhash varchar(64) not null,
  UNIQUE(UserName)
);
create table sessionUser(
  IdSession int AUTO_INCREMENT primary key,
  utente int not null,
  dataSession date,
  hashcode varchar(64),
  foreign key (utente) references utente(IdUtente)
);
create table venditore (
  IdVenditore int AUTO_INCREMENT primary key,
  IdUtente int not null,
  NomeNegozio varchar(50),
  RagioneSociale varchar(50),
  PartitaIva varchar(11),
  Iban varchar(12),
  Indirizzo varchar(100),
  Valutazione double,
  foreign key (IdUtente) references utente(IdUtente)
);
create table articolo (
  IdArticolo int AUTO_INCREMENT primary key,
  Nome varchar(100) not null,
  Descrizione varchar(10000) not null,
  IdVenditore int not null,
  Prezzo float,
  Categoria varchar(50) not null,
  Voto float,
  foreign key (Categoria) references categorie(Nome),
  foreign key (IdVenditore) references venditore(IdVenditore)
);
create table recensioneArticoli (
  IdRecArt int AUTO_INCREMENT PRIMARY KEY,
  IdUtente int,
  Voto int,
  Testo varchar(255),
  IdArticolo int,
  foreign key (IdArticolo) references articolo(IdArticolo),
  foreign key (IdUtente) references utente(IdUtente)
);

create table recensioneVenditore (
  IdRecVen int AUTO_INCREMENT primary key,
  IdUtente int,
  voto int,
  Testo varchar(255),
  IdVenditore int,
  foreign key (IdVenditore) references venditore(IdVenditore),
  foreign key (IdUtente) references utente(IdUtente)
);

create table ImmaginiUtente (
  IdImmagine int AUTO_INCREMENT primary key,
  Percorso varchar(255) not null unique,
  IdUtente int,
  foreign key (IdUtente) references utente(IdUtente)
);
create table ImmaginiVenditore (
  IdImmagine int AUTO_INCREMENT primary key,
  Percorso varchar(255) not null unique,
  IdVenditore int,
  foreign key (IdVenditore) references venditore(IdVenditore)
);
create table ImmaginiArticoli (
  IdImmagine int AUTO_INCREMENT primary key,
  Percorso varchar(255) not null unique,
  IdArticolo int,
  foreign key (IdArticolo) references articolo(IdArticolo)
);
create table ordine (
  IdOrdine int NOT NULL AUTO_INCREMENT primary key,
  IdUtente int,
  PrezzoTot float,
  DataOrdine date not null,
  DataSpedizione date,
  TipoOrdine enum("spedizione","ritiro"),
  PagamentoRicevuto enum("TRUE","FALSE") not null,
  Ricevuto enum("TRUE","FALSE") not null,
  foreign key (IdUtente) references utente(IdUtente)
);
create table articoloOrdine (
  Id int primary key AUTO_INCREMENT,
  IdOrdine int,
  IdArticolo int,
  foreign key (IdOrdine) references ordine(IdOrdine),
  foreign key (IdArticolo) references articolo(IdArticolo)
);
create table ticket (
  IdTicket int AUTO_INCREMENT primary key,
  IdOrdine int,
  IdUtente int,
  TipoTicket enum("Rimborso", "Ritardo", "Danneggiato", "Altro"),
  Testo varchar(255) not null,
  Stato enum ("Aperto", "Lavorazione", "Chiuso", "Annullato"),
  foreign key (IdOrdine) references ordine(IdOrdine)
);
create table notification (
  IdNotifica int AUTO_INCREMENT PRIMARY KEY,
  IdUtente int not null,
  Testo varchar(255) not null,
  Url varchar(255) not null,
  DataNotifica DATE not null ,
  Stato ENUM("Nuova","Letta") not null,
  FOREIGN KEY (IdUtente) REFERENCES  utente(IdUtente)
);


