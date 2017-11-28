INSERT INTO `utente` (`IdUtente`, `UserName`, `Password`, `Nome`, `Cognome`, `Email`, `DataNascita`, `Tipo`, `Validato`, `validationhash`) VALUES
(1, 'Dema', 'dema1', 'Federico', 'De Martin', 'fede@dema.it', '1996-10-12', 'Seller', 'true', 'asdasdas'),
(2, 'Giulia', 'giu1', 'Giulia', 'Nardò', 'giu@nardo.it', '1996-08-12', 'Administrator', 'true', 'asdasdas'),
(3, 'Debla', 'debla1', 'Simone', 'De Blasiis', 'simo@debla.it', '1996-02-12', 'User', 'true', 'asdasdas'),
(4, 'Simo', 'simo1', 'Simone', 'De Cassan', 'simo@deca.it', '1998-08-16', 'Seller', 'true', 'asdasdas'),
(5, 'Giada', 'giada1', 'Giada', 'Nunzia', 'giada@nunzia.it', '1994-05-14', 'Seller', 'true', 'asdasdas'),
(6, 'Giacoz', 'giacoz1', 'Giacomo', 'Mazzini', 'giacoz@maz.it', '1990-05-08', 'User', 'true', 'asdasdas'),
(7, 'Carlo1', 'cachi', 'Carlo', 'Magno', 'carlomagno@gmail.com', '1954-11-03', 'User', 'true', 'asad'),
(8, 'Pistolero18', 'fico', 'Davide', 'Pistore', 'davi@gmail.com', '1977-12-03', 'Seller', 'true', 'asad'),
(9, 'luke14', 'banana', 'Luca', 'Todesco', 'toddi@gmail.com', '0000-00-00', 'Seller', 'true', 'asad'),
(10, 'occhialuto26', 'fragola', 'Federico', 'Magno', 'magnotanto@gmail.com', '0000-00-00', 'Seller', 'true', 'asad'),
(11, 'tasty6', 'peach', 'Mario', 'Collina', 'colly@gmail.com', '0000-00-00', 'User', 'true', 'asad'),
(12, 'tolly45', 'pompelmo', 'Laura', 'Magna', 'lolly@gmail.com', '0000-00-00', 'Seller', 'true', 'asad'),
(13, 'cloco74', 'albicocca', 'Fabio', 'Bruno', 'brunetto@gmail.com', '0000-00-00', 'User', 'true', 'asad'),
(14, 'walp9', 'mirtillo', 'Simone', 'Lallo', 'simolallo@gmail.com', '0000-00-00', 'User', 'true', 'asad'),
(15, 'giacchina2', 'mela', 'Melinda', 'Giacca', 'giacchina@gmail.com', '0000-00-00', 'User', 'true', 'asad'),
(16, 'selli9', 'sellina', 'Sara', 'Milli', 'millina@gmail.coom', '0000-00-00', 'User', 'true', 'asad'),
(17, 'Carlo2', 'cachi2', 'Carlino', 'Magno', 'carlomagno2@gmail.com', '1954-11-03', 'User', 'true', 'asad'),
(18, 'Pistolero20', 'fico2', 'Dario', 'Pistore', 'davi20@gmail.com', '1977-12-03', 'Seller', 'true', 'asad'),
(19, 'luke6', 'banana2', 'Simone', 'Todesco', 'toddi6@gmail.com', '1996-11-13', 'Seller', 'true', 'asad'),
(20, 'occhialuto3', 'fragola2', 'Filippo', 'Magno', 'magnotanto6@gmail.com', '1976-05-05', 'Seller', 'true', 'asad'),
(21, 'tasty9', 'peach2', 'Maria', 'Collina', 'collymary@gmail.com', '1985-09-16', 'User', 'true', 'asad'),
(22, 'tolly46', 'pompelmo', 'Laura', 'Magna', 'lolly33@gmail.com', '1993-04-15', 'Seller', 'true', 'asad'),
(23, 'cloco79', 'albicocca', 'Fabio', 'Bruno', 'brunetto66@gmail.com', '1995-02-16', 'User', 'true', 'asad'),
(24, 'walp8', 'mirtillo', 'Simone', 'Lallo', 'simolallo8@gmail.com', '1985-07-11', 'User', 'true', 'asad'),
(25, 'giacchina3', 'mela', 'Melinda', 'Giacca', 'giacchina@gmail.com', '1963-07-14', 'User', 'true', 'asad'),
(26, 'selli8', 'sellina', 'Sara', 'Milli', 'millina@gmail.coom', '1976-03-16', 'User', '', '');
INSERT INTO `venditore` (`IdVenditore`, `IdUtente`, `NomeNegozio`, `RagioneSociale`, `PartitaIva`, `Iban`, `Indirizzo`, `Valutazione`) VALUES
(1, 4, 'Simoncelli', 'SPA', '15478972300', '000510258741', 'Via simo 5', NULL),
(2, 1, 'Dema Shop', 'SRL', '02154879632', '125489632755', 'Via dema 8', NULL),
(3, 5, 'GIAA', 'SRL', '12589636547', '103200587960', 'Via G 9', NULL),
(9, 8, 'Boollo', NULL, '11125489637', '111254896370', 'Via Lilli', NULL),
(10, 9, 'Dart Veder', NULL, '11125489589', '111254895890', NULL, NULL),
(11, 10, 'Glass', NULL, '12547896587', '125478965870', 'Via Goi 9', NULL),
(12, 12, 'TollyBolly', NULL, '14587963215', '145879632150', 'Via fou 9', NULL),
(13, 18, 'Yogurtino', NULL, '25896300021', '258963000210', 'Via boh', NULL),
(14, 19, 'Kolorato', NULL, '01200236589', '012002365890', 'Via sal', NULL),
(15, 20, 'Trold', NULL, '12897589456', '128975894560', 'Via UU', NULL),
(16, 22, 'Polly', NULL, '12897589452', '128975894520', 'Via Ulp 5', NULL);

INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Smartphone', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Elettrodomestici', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Libri', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Informatica', NULL);
INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES ('Abbigliamento', NULL);

INSERT INTO `articolo` (`IdArticolo`, `Nome`, `IdVenditore`, `Prezzo`, `Categoria`, `Voto`) VALUES
(1, 'Iphone5', 3, 868.69, 'Smartphone', NULL),
(2, 'Iphone5', 3, 868.7, 'Smartphone', NULL),
(3, 'HP Pavillion', 1, 1000.77, 'Informatica', NULL),
(4, 'Lavatrice XTR', 2, 899.99, 'Elettrodomestici', NULL),
(5, 'Samsung Galaxi 5', 2, 600, 'Smartphone', NULL),
(6, 'Mouse wireless', 3, 20, 'Informatica', NULL),
(7, 'Wiko rainbow', 1, 150, 'Informatica', NULL),
(8, 'T-shirt LV', 3, 50, 'Abbigliamento', NULL),
(9, 'T-shirt Supreme', 3, 50, 'Abbigliamento', NULL),
(10, 'Tastiera ', 1, 30, 'Informatica', NULL),
(11, 'Custodia pc', 3, 20, 'Informatica', NULL),
(12, 'Felpa bianca', 3, 20, 'Abbigliamento', NULL),
(13, 'Felpa verde', 2, 25, 'Abbigliamento', NULL),
(14, 'Felpa blu', 3, 23, 'Abbigliamento', NULL),
(15, 'Felpa spongebob', 1, 25, 'Abbigliamento', NULL),
(16, 'Custodia pc rossa', 1, 25, 'Informatica', NULL),
(17, 'Alice nel paese delle meraviglie', 1, 20, 'Libri', NULL),
(18, 'Il piccolo principe', 3, 15, 'Libri', NULL),
(19, 'Guida galattica per autostoppisti', 3, 15.5, 'Libri', NULL),
(20, 'Geronimo Stilton-1', 1, 12, 'Libri', NULL),
(21, 'Geronimo Stilton-2', 3, 12.5, 'Libri', NULL),
(22, 'Geronimo Stilton-3', 1, 13, 'Libri', NULL),
(23, 'Geronimo Stilton-4', 3, 12.99, 'Libri', NULL),
(24, 'Topolino-1', 2, 6, 'Libri', NULL),
(25, 'Topolino-2', 3, 6.5, 'Libri', NULL),
(26, 'Topolino-3', 2, 7, 'Libri', NULL),
(27, 'Topolino-4', 2, 6.3, 'Libri', NULL);

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


