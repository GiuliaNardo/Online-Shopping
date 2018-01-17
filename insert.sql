-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 17, 2018 alle 17:11
-- Versione del server: 10.1.26-MariaDB
-- Versione PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progettoweb`
--

--
-- Dump dei dati per la tabella `articolo`
--

INSERT INTO `articolo` (`IdArticolo`, `Nome`, `Descrizione`, `IdVenditore`, `Prezzo`, `Categoria`, `Voto`) VALUES
(1, 'Iphone5', 'Apple iPhone 5 è un smartphone iOS completo, che non ha molto da invidare ai dispositivi più avanzati. Dispone di un display Touchscreen da 4 pollici con una buona risoluzione di 1136x640 pixel. Sul versante delle funzionalità a questo Apple iPhone 5 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. ', 3, 868.69, 'Smartphone', NULL),
(2, 'Iphone5', 'Apple iPhone 5 è un smartphone iOS completo, che non ha molto da invidare ai dispositivi più avanzati. Dispone di un display Touchscreen da 4 pollici con una buona risoluzione di 1136x640 pixel. Sul versante delle funzionalità a questo Apple iPhone 5 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. ', 3, 868.7, 'Smartphone', NULL),
(3, 'HP Pavillion', 'HP Pavilion Business Flagship Laptop PC (2018 Edition) 15.6\" HD WLED-backlit Display 8th Gen Intel i5-8250U Quad-Core Processor, 8GB DDR4 RAM, 1TB HDD, Bluetooth, Webcam, B&O Audio, Windows 10', 1, 1000.77, 'Informatica', NULL),
(4, 'Lavatrice XTR', 'Lavatrice bellissima e super veloce. Portata 6kg', 2, 899.99, 'Elettrodomestici', NULL),
(5, 'Samsung Galaxi 5', 'Samsung SM-G900V - Galaxy S5 - 16GB Android Smartphone Verizon - Black (Certified Refurbished)', 2, 600, 'Smartphone', NULL),
(7, 'Wiko rainbow', 'kwmobile Crystal hard case for Wiko Rainbow Jam - thin transparent protection cover in black', 1, 150, 'Informatica', NULL),
(8, 'T-shirt LV', 'T-shirt', 3, 50, 'Abbigliamento', NULL),
(9, 'T-shirt Supreme', 'T-shirt', 3, 50, 'Abbigliamento', NULL),
(10, 'Tastiera ', 'tastiera nera', 1, 30, 'Informatica', NULL),
(11, 'Custodia pc', 'custodia rossa per pc portatile', 3, 20, 'Informatica', NULL),
(12, 'Felpa bianca', 'felpa bianca taglia xs', 3, 20, 'Abbigliamento', NULL),
(13, 'Felpa verde', 'felpa verde taglia m', 2, 25, 'Abbigliamento', NULL),
(14, 'Felpa blu', 'felpa blu taglia m', 3, 23, 'Abbigliamento', NULL),
(15, 'Felpa spongebob', 'bellissima felpa di spongebob gialla', 1, 25, 'Abbigliamento', NULL),
(16, 'Custodia pc rossa', 'cutodia rossa per pc portatile', 1, 25, 'Informatica', NULL),
(17, 'Alice nel paese delle meraviglie', 'libro di alice nel paese delle meraviglie', 1, 20, 'Libri', NULL),
(18, 'Il piccolo principe', 'libro del piccolo principe', 3, 15, 'Libri', NULL),
(19, 'Guida galattica per autostoppisti', 'libro', 3, 15.5, 'Libri', NULL),
(20, 'Geronimo Stilton-1', 'libro di geronimo stilton', 1, 12, 'Libri', NULL),
(21, 'Geronimo Stilton-2', 'libro di geronimo stilton', 3, 12.5, 'Libri', NULL),
(22, 'Geronimo Stilton-3', 'libro di geronimo stilton', 1, 13, 'Libri', NULL),
(23, 'Geronimo Stilton-4', 'libro di geronimo stilton', 3, 12.99, 'Libri', NULL),
(24, 'Topolino-1', 'libro topolino', 2, 6, 'Libri', NULL),
(25, 'Topolino-2', 'fumetto topolino', 3, 6.5, 'Libri', NULL),
(26, 'Topolino-3', 'fumetto topolino', 2, 7, 'Libri', NULL),
(27, 'Topolino-4', 'fumetto topolino', 2, 6.3, 'Libri', NULL);

--
-- Dump dei dati per la tabella `articoloordine`
--

INSERT INTO `articoloordine` (`Id`, `IdOrdine`, `IdArticolo`) VALUES
(0, 1, 11),
(1, 1, 11);

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`Nome`, `Descrizione`) VALUES
('Abbigliamento', NULL),
('Elettrodomestici', NULL),
('Informatica', NULL),
('Libri', NULL),
('Smartphone', NULL);

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`IdOrdine`, `IdVenditore`, `IdUtente`, `PrezzoTot`, `DataOrdine`, `DataSpedizione`, `TipoOrdine`, `PagamentoRicevuto`, `Ricevuto`) VALUES
(1, 9, 27, 18, '2018-01-10', '2018-01-25', 'spedizione', 'TRUE', 'FALSE');

--
-- Dump dei dati per la tabella `sessionuser`
--

INSERT INTO `sessionuser` (`IdSession`, `utente`, `dataSession`, `hashcode`) VALUES
(1, 27, '2018-01-17', '6d79195a2bcc2d527640218127e22ecd2feee6bd914ce2fc64174e6dd5c95730'),
(2, 28, '2018-01-17', 'd25c4f95fa6d8a7e96a911dd070489bbfb657a121d74960daa062f5d3aedcc12'),
(3, 27, '2018-01-17', '84baa293a05a3a5cb98123160db62ab29d6dbfc3388f9e13e601d99147f28432');

--
-- Dump dei dati per la tabella `utente`
--

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
(26, 'selli8', 'sellina', 'Sara', 'Milli', 'millina@gmail.coom', '1976-03-16', 'User', '', ''),
(27, 'pippo1', '982c38dc43dc57c14adebe399c6556893b5114c877d90b83921b2e0945191801', 'pippo', 'pippo', 'l@h.com', '2018-01-17', 'Seller', 'false', '33d2cf014275ec8f7ab705bb59780829089250e182f7a510aca578f27daf78a6'),
(28, 'pippoAdmin', '69842058052e167cba8a62acf64dd207d936f0ea2977190df543ea8e26859aa9', 'PippoA', 'pippo', 'l@h.com', '1998-01-17', 'User', 'false', '19c96d8d4cab0b2ce07cd0af59f9c6473e2106d8a259df027501f8752d630d24');

--
-- Dump dei dati per la tabella `venditore`
--

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
(16, 22, 'Polly', NULL, '12897589452', '128975894520', 'Via Ulp 5', NULL),
(17, 27, 'pippo', 'n', '12345678912', '123456789784', 'Topolandia', 2.3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
