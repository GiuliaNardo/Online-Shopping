use progettoweb;

INSERT INTO `utente` (`UserName`, `Password`, `Nome`, `Cognome`, `Email`, `DataNascita`, `Tipo`,`Validato`,`validationhash`) VALUES ('Dema', 'dema1', 'Federico', 'De Martin', 'fede@dema.it', '1996-10-12', 'Seller', 'true', 'asdasdas');
INSERT INTO `utente` (`UserName`, `Password`, `Nome`, `Cognome`, `Email`, `DataNascita`, `Tipo`,`Validato`,`validationhash`) VALUES ('Giulia', 'giu1', 'Giulia', 'Nardò', 'giu@nardo.it', '1996-08-12', 'Admin', 'true', 'asdasdas');
INSERT INTO `utente` (`UserName`, `Password`, `Nome`, `Cognome`, `Email`, `DataNascita`, `Tipo`,`Validato`,`validationhash`) VALUES ('Debla', 'debla1', 'Simone', 'De Blasiis', 'simo@debla.it', '1996-02-12', 'User', 'true', 'asdasdas');
INSERT INTO `utente` (`UserName`, `Password`, `Nome`, `Cognome`, `Email`, `DataNascita`, `Tipo`,`Validato`,`validationhash`) VALUES ('Simo', 'simo1', 'Simone', 'De Cassan', 'simo@deca.it', '1998/08/16', 'Seller', 'true', 'asdasdas');
INSERT INTO `utente` (`UserName`, `Password`, `Nome`, `Cognome`, `Email`, `DataNascita`, `Tipo`,`Validato`,`validationhash`) VALUES ('Giada', 'giada1', 'Giada', 'Nunzia', 'giada@nunzia.it', '1994/05/14', 'Seller', 'true', 'asdasdas');
INSERT INTO `utente` (`UserName`, `Password`, `Nome`, `Cognome`, `Email`, `DataNascita`, `Tipo`,`Validato`,`validationhash`) VALUES ('Giacoz', 'giacoz1', 'Giacomo', 'Mazzini', 'giacoz@maz.it', '1990/05/08', 'User', 'true', 'asdasdas');

INSERT INTO `venditore` (`IdVenditore`, `IdUtente`, `NomeNegozio`, `RagioneSociale`, `PartitaIva`, `Iban`, `Indirizzo`, `Valutazione`) VALUES (NULL, '4', 'Simoncelli', 'SPA', '15478972300', '000510258741', 'Via simo 5', NULL);
INSERT INTO `venditore` (`IdVenditore`, `IdUtente`, `NomeNegozio`, `RagioneSociale`, `PartitaIva`, `Iban`, `Indirizzo`, `Valutazione`) VALUES (NULL, '1', 'Dema Shop', 'SRL', '02154879632', '125489632755', 'Via dema 8', NULL);
INSERT INTO `venditore` (`IdVenditore`, `IdUtente`, `NomeNegozio`, `RagioneSociale`, `PartitaIva`, `Iban`, `Indirizzo`, `Valutazione`) VALUES (NULL, '5', 'GIAA', 'SRL', '12589636547', '103200587960', 'Via G 9', NULL);

INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Smartphone', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Elettrodomestici', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Libri', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Informatica', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Abbigliamento', NULL);

INSERT INTO `articolo` (`Nome`, `IdVenditore`, `Prezzo`, `Categoria`, `Voto`) VALUES ('Iphone5', '3', '868.69', 'Smartphone', NULL);
INSERT INTO `articolo` (`Nome`, `IdVenditore`, `Prezzo`, `Categoria`, `Voto`) VALUES ('Iphone5', '3', '868.7', 'Smartphone', NULL);
INSERT INTO `articolo` (`Nome`, `IdVenditore`, `Prezzo`, `Categoria`, `Voto`) VALUES ('HP Pavillion', '1', '1000.77', 'Informatica', NULL);
INSERT INTO `articolo` (`Nome`, `IdVenditore`, `Prezzo`, `Categoria`, `Voto`) VALUES ('Lavatrice XTR', '2', '899.99', 'Elettrodomestici', NULL);

INSERT INTO `recensionearticoli` (`IdUtente`, `Voto`, `Testo`, `Visualizzato`, `IdArticolo`) VALUES ('3', '3', NULL, 'FALSE', '1');

INSERT INTO `ordine` (`IdOrdine`, `IdVenditore`, `IdUtente`, `PrezzoTot`, `DataOrdine`, `DataSpedizione`, `TipoOrdine`, `PagamentoRicevuto`, `Ricevuto`) VALUES
(1, 2, 1, 20, '2017-11-07', NULL, 'spedizione', 'TRUE', 'FALSE'),
(2, 2, 1, 60, '2017-11-01', NULL, NULL, 'TRUE', 'FALSE');

INSERT INTO `articoloOrdine` (`Id`, `IdOrdine`, `IdArticolo`) VALUES
(0, 2, 1),
(1, 2, 2),
(2, 2, 3),
(3, 1, 3),
(4, 1, 3),
(5, 2, 2);


