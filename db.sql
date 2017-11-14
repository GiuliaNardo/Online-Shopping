create database progettoweb collate utf8_general_ci;

use progettoweb;

create table categorie (
  Nome varchar(50) not null PRIMARY KEY,
  Descrizione varchar(255)
);


create table utente (
  IdUtente int AUTO_INCREMENT primary key,
  UserName varchar(50) not null,
  Password varchar(100) not null,
  Nome varchar(50) not null,
  Cognome varchar(50) not null,
  Email varchar(100) not null,
  DataNascita Date,
  Tipo enum('Administrator', 'User', 'Seller') not null,
  Validato enum('true', 'false')not null,
  validationhash varchar(25) not null
);
create table sessionUser(
  IdSession int AUTO_INCREMENT primary key,
  utente int not null,
  dataSession date,
  hashcode varchar(50),
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
  Visualizzato enum("TRUE","FALSE"),
  IdArticolo int,
  foreign key (IdArticolo) references articolo(IdArticolo),
  foreign key (IdUtente) references utente(IdUtente)
);

create table recensioneVenditore (
  IdRecVen int AUTO_INCREMENT primary key,
  IdUtente int,
  voto int,
  Testo varchar(255),
  Visualizzato enum("TRUE", "FALSE"),
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
  IdOrdine int AUTO_INCREMENT primary key,
  IdVenditore int,
  IdUtente int,
  PrezzoTot float,
  DataOrdine date not null,
  DataSpedizione date,
  TipoOrdine enum("spedizione","ritiro"),
  PagamentoRicevuto enum("TRUE","FALSE") not null,
  Ricevuto enum("TRUE","FALSE") not null,
  foreign key (IdVenditore) references venditore(IdVenditore),
  foreign key (IdUtente) references utente(IdUtente)
);
create table articoloOrdine (
  Id int primary key,
  IdOrdine int,
  IdArticolo int,
  foreign key (IdOrdine) references ordine(IdOrdine),
  foreign key (IdArticolo) references articolo(IdArticolo)
);
create table ticket (
  IdTicket int AUTO_INCREMENT primary key,
  Titolo varchar(100) not null,
  IdOrdine int,
  IdArticolo int,
  IdVenditore int,
  IdUtente int,
  Testo varchar(255) not null,
  Stato enum ("Aperto", "In_Lavorazione", "Chiuso_con_successso", "Annullato"),
  foreign key (IdOrdine) references ordine(IdOrdine),
  foreign key (IdArticolo) references articolo(IdArticolo),
  foreign key (IdVenditore) references venditore(IdVenditore),
  foreign key (IdUtente) references utente(IdUtente)
);


