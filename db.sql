create table categorie (
  Nome varchar(50) not null AUTO_INCREMENT PRIMARY KEY,
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
  IdUtente int not null foreign key references utente(IdUtente),
  NomeNegozio varchar(50),
  RegioneSociale varchar(50),
  PartitaIva varchar(11),
  Iban varchar(12),
  Indirizzo varchar(100),
  Valutazione float
);
create table articolo (
  IdArticolo int AUTO_INCREMENT primary key,
  Nome varchar(100) not null,
  IdVenditore int not null foreign key references venditore(IdVenditore),
  Prezzo float,
  Categoria varchar(50) not null foreign key references categoria(Nome),
  Voto float
);
create table recensioneArticoli (
  IdRecArt int AUTO_INCREMENT PRIMARY KEY,
  IdUtente int foreign key references utente(IdUtente),
  Voto BETWEEN 0 and 5,
  Testo varchar(255),
  Visualizzato boolean,
  IdArticolo int foreign key references articolo(IdArticolo)
);

create table recensioneVenditore (
  IdRecVen int AUTO_INCREMENT primary key,
  IdUtente int foreign key references utente(IdUtente),
  voto BETWEEN 0 and 5,
  Testo varchar(255),
  Visualizzato boolean,
  IdVenditore int foreign key references venditore(IdVenditore)
);

create table ImmaginiUtente (
  IdImmagine int AUTO_INCREMENT primary key,
  Path varchar(255) not null unique,
  IdUtente int foreign key references utente(IdUtente)
)
create table ImmaginiVenditore (
  IdImmagine int AUTO_INCREMENT primary key,
  Path varchar(255) not null unique,
  IdVenditore int foreign key references venditore(IdVenditore)
)
create table ImmaginiArticoli (
  IdImmagine int AUTO_INCREMENT primary key,
  Path varchar(255) not null unique,
  IdArticolo int foreign key references articolo(IdArticolo)
);
create table ordine (
  IdOrdine int AUTO_INCREMENT primary key,
  IdVenditore int foreign key references venditore(IdVenditore),
  IdUtente int foreign key references utente(IdUtente),
  PrezzoTot float,
  DataSpedizione date,
  PagamentoRicevuto boolean not null,
  Ricevuto boolean not null
);
create table articoloOrdine (
  IdOrdine int foreign key references ordine(IdOrdine),
  IdArticolo int foreign key references articolo(IdArticolo),
  primary key (IdOrdine, IdArticolo)
);
create table ticket (
  IdTicket int AUTO_INCREMENT primary key,
  Titolo varchar(100) not null,
  IdOrdine int foreign key references ordine(IdOrdine),
  IdArticolo int foreign key references articolo(IdArticolo),
  IdVenditore int foreign key references venditore(IdVenditore),
  IdUtente int foreign key references utente(IdUtente),
  Testo varchar(255) not null,
  Stato enum ('Aperto', 'In Lavorazione', 'Chiuso con successo', 'Annullato')
);
