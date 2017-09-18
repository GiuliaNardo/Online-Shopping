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
  Tipo enum('Administrator', 'User', 'Seller')
);
create table venditore (
  IdVenditore int AUTO_INCREMENT primary key,
  IdUtente int not null,
  NomeNegozio varchar(50),
  RegioneSociale varchar(50),
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
  Visualizzato boolean,
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
  DataSpedizione date,
  PagamentoRicevuto boolean not null,
  Ricevuto boolean not null,
  foreign key (IdVenditore) references venditore(IdVenditore),
  foreign key (IdVenditore) references utente(IdUtente)
);
create table articoloOrdine (
  IdOrdine int,
  IdArticolo int,
  foreign key (IdOrdine) references ordine(IdOrdine),
  foreign key (IdArticolo) references articolo(IdArticolo),
  primary key (IdOrdine, IdArticolo)
);
create table ticket (
  IdTicket int AUTO_INCREMENT primary key,
  Titolo varchar(100) not null,
  IdOrdine int,
  IdArticolo int,
  IdVenditore int,
  IdUtente int,
  Testo varchar(255) not null,
  Stato enum ("Aperto", "In Lavorazione", "Chiuso con successo", "Annullato"),
  foreign key (IdOrdine) references ordine(IdOrdine),
  foreign key (IdArticolo) references articolo(IdArticolo),
  foreign key (IdVenditore) references venditore(IdVenditore),
  foreign key (IdUtente) references utente(IdUtente)
);

