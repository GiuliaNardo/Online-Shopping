-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 24, 2018 alle 22:53
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
(2, 'Iphone5', 'Apple iPhone 5 è un smartphone iOS completo, che non ha molto da invidare ai dispositivi più avanzati. Dispone di un display Touchscreen da 4 pollici con una buona risoluzione di 1136x640 pixel. Sul versante delle funzionalità a questo Apple iPhone 5 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. ', 3, 868.7, 'Smartphone', 1),
(3, 'HP Pavillion', 'HP Pavilion Business Flagship Laptop PC (2018 Edition) 15.6\" HD WLED-backlit Display 8th Gen Intel i5-8250U Quad-Core Processor, 8GB DDR4 RAM, 1TB HDD, Bluetooth, Webcam, B&O Audio, Windows 10', 1, 1000.77, 'Informatica', 1),
(4, 'Lavatrice XTR', 'Lavatrice bellissima e super veloce. Portata 6kg', 2, 899.99, 'Elettrodomestici', 1),
(5, 'Samsung Galaxi 5', 'Samsung SM-G900V - Galaxy S5 - 16GB Android Smartphone Verizon - Black (Certified Refurbished)', 2, 600, 'Smartphone', 1),
(7, 'Wiko rainbow', 'kwmobile Crystal hard case for Wiko Rainbow Jam - thin transparent protection cover in black', 1, 150, 'Informatica', 1),
(8, 'T-shirt LV', 'T-shirt', 3, 50, 'Abbigliamento', 1),
(9, 'T-shirt Supreme', 'T-shirt', 3, 50, 'Abbigliamento', 1),
(10, 'Tastiera ', 'tastiera nera', 1, 30, 'Informatica', 1),
(11, 'Custodia pc', 'custodia rossa per pc portatile', 3, 20, 'Informatica', 1),
(12, 'Felpa bianca', 'felpa bianca taglia xs', 3, 20, 'Abbigliamento', 1),
(13, 'Felpa verde', 'felpa verde taglia m', 2, 25, 'Abbigliamento', 1),
(14, 'Felpa blu', 'felpa blu taglia m', 3, 23, 'Abbigliamento', 1),
(15, 'Felpa spongebob', 'bellissima felpa di spongebob gialla', 1, 25, 'Abbigliamento', 1),
(16, 'Custodia pc rossa', 'cutodia rossa per pc portatile', 1, 25, 'Informatica', 1),
(17, 'Alice nel paese delle meraviglie', 'libro di alice nel paese delle meraviglie', 1, 20, 'Libri', 1),
(18, 'Il piccolo principe', 'libro del piccolo principe', 3, 15, 'Libri', 1),
(19, 'Guida galattica per autostoppisti', 'libro', 3, 15.5, 'Libri', 1),
(20, 'Geronimo Stilton-1', 'libro di geronimo stilton', 1, 12, 'Libri', 1),
(21, 'Geronimo Stilton-2', 'libro di geronimo stilton', 3, 12.5, 'Libri', 1),
(22, 'Geronimo Stilton-3', 'libro di geronimo stilton', 1, 13, 'Libri', 1),
(23, 'Geronimo Stilton-4', 'libro di geronimo stilton', 3, 12.99, 'Libri', 1),
(24, 'Topolino-1', 'libro topolino', 2, 6, 'Libri', 1),
(25, 'Topolino-2', 'fumetto topolino', 3, 6.5, 'Libri', 1),
(26, 'Topolino-3', 'fumetto topolino', 2, 7, 'Libri', 1),
(27, 'Topolino-4', 'fumetto topolino', 2, 6.3, 'Libri', 1),
(28, 'LG elettronics', 'LG Electronics OLED55E7P 55-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 10, 2.496, 'Elettronica', 1),
(29, 'Sony tv', 'Sony XBR43X800E 43-Inch 4K Ultra HD Smart LED TV (2017 Model)', 10, 598, 'Elettronica', 1),
(30, 'TCL ultra HD', 'TCL 55S405 55-Inch 4K Ultra HD Roku Smart LED TV (2017 Model)', 10, 399.99, 'Elettronica', 1),
(31, 'Sceptre LED TV ', 'Sceptre 43 inches 1080p LED TV (2017)', 10, 232.45, 'Elettronica', 1),
(32, 'Samsung Smart TV', 'Samsung Electronics UN40M5300A 40-Inch 1080p Smart LED TV (2017 Model)', 10, 399.99, 'Elettronica', 1),
(33, 'Samsung UN24H4000 24-Inch 720p LED TV (2014 Model)', 'Refresh Rate: 60Hz (Native); 120 Clear Motion Rate (Effective)\r\nBacklight: LED (Edge-Lit)\r\nSmart Functionality: No\r\nDimensions (W x H x D): TV without stand: 22.1\" x 13.7\'\' x 1.9\'\'; TV with stand: 22.1\" x 15.1\" x 6.4\"\r\nInputs: 2 HDMI, 1 USB\r\nAccessories Included: Standard Remote Control', 10, 126.5, 'Elettronica', 1),
(34, 'Sceptre E246BV-SR 24\" LED HDTV HDMI, True Black', 'High Resolution Screen TV with HDMI and USB Input\r\nVESA Wall Mount Ready\r\nHigh Contrast Ratio 5,000:1\r\nPC VGA Input Ready', 10, 103.16, 'Elettronica', 1),
(35, 'LG Electronics OLED65E7P 65-Inch 4K', 'LG Electronics OLED65E7P 65-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 10, 3.496, 'Elettronica', 1),
(36, 'LG elettronics', 'LG Electronics OLED55E7P 55-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 10, 2496, 'Elettronica', 1),
(37, 'Sony tv', 'Sony XBR43X800E 43-Inch 4K Ultra HD Smart LED TV (2017 Model)', 10, 598, 'Elettronica', 1),
(38, 'TCL ultra HD', 'TCL 55S405 55-Inch 4K Ultra HD Roku Smart LED TV (2017 Model)', 10, 399.99, 'Elettronica', 1),
(39, 'Sceptre LED TV ', 'Sceptre 43 inches 1080p LED TV (2017)', 10, 232.45, 'Elettronica', 1),
(40, 'Samsung Smart TV', 'Samsung Electronics UN40M5300A 40-Inch 1080p Smart LED TV (2017 Model)', 10, 399.99, 'Elettronica', 1),
(41, 'Samsung UN24H4000 24-Inch 720p LED TV (2014 Model)', 'Refresh Rate: 60Hz (Native); 120 Clear Motion Rate (Effective)\r\nBacklight: LED (Edge-Lit)\r\nSmart Functionality: No\r\nDimensions (W x H x D): TV without stand: 22.1\" x 13.7\'\' x 1.9\'\'; TV with stand: 22.1\" x 15.1\" x 6.4\"\r\nInputs: 2 HDMI, 1 USB\r\nAccessories Included: Standard Remote Control', 10, 126.5, 'Elettronica', 1),
(42, 'Sceptre E246BV-SR 24\" LED HDTV HDMI, True Black', 'High Resolution Screen TV with HDMI and USB Input\r\nVESA Wall Mount Ready\r\nHigh Contrast Ratio 5,000:1\r\nPC VGA Input Ready', 10, 103.16, 'Elettronica', 1),
(43, 'LG Electronics OLED65E7P 65-Inch 4K', 'LG Electronics OLED65E7P 65-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 10, 3496.99, 'Elettronica', 1),
(47, 'ECHOGEAR Full Motion Articulating TV Wall Mount Bracket for most 37-70 inch LED, LCD, OLED and Plasm', 'Our heavy-gauge universal TV mount holds 37\"-70\" TVs weighing up to 132lbs. Dont worry, we will do the heavy lifting: ECHOGEAR TV mounts are tested to hold 4 times the weight they are rated to. Safety Tested - UL Certified.\r\nPulling out to 16\" and back in to 2.6\" from the wall gives your TV smooth moves. Swivel your TV 150 degrees to the left or right to get all the views your room could ever need.\r\nMounting has never been so easy: 30 minutes to install on 16\" studs, with all hardware included a', 9, 79.99, 'Elettronica', 1),
(48, 'Samsung Electronics', 'Samsung Electronics UN65MU9000 65-Inch 4K Ultra HD Smart LED TV (2017 Model)', 9, 1597.99, 'Elettronica', 1),
(49, 'HP Printer', 'Main functions of this HP color inkjet photo printer: copy, scan, wireless printing, AirPrint, two-sided duplex printing, touchscreen, Instant Ink ready so you will never run out of ink, and moreMobile printing: print from anywhere using your smartphone or tablet with the free HP ePrint app, easily print from your iPhone or iPad with AirPrint, print even without a network using Wireless Direct printing2-sided printing: Allows you to print on both sides of the page, cutting your paper use by up t', 9, 50, 'Elettronica', 1),
(50, 'GoPro HERO6 Black', 'HERO6 Black automatically sends your footage to your phone where the app turns it into a QuikStory-an awesome edited video.', 3, 399, 'Elettronica', 1),
(51, 'Samsung 32GB 95MB/s (U1) MicroSD EVO Select Memory Card with Adapter (MB-ME32GA/AM)', 'Up to 95MB/s & 20MB/s read & write speeds respectively; Class 10 UHS 1', 3, 12.99, 'Elettronica', 1),
(52, 'GoPro HERO6 Black', 'With 4K60 and 1080p240 video,HERO6 Black delivers 2x the performance compared to HERO5 Black. With an all-new GP1 chip optimized for GoPro capture, HERO6 Black delivers vastly improved image quality.', 2, 399, 'Elettronica', 2),
(53, 'GoPro HERO6 Black', 'With our most advanced video stabilization yet, HERO6 Black captures super smooth footage, whether it’s handheld or mounted to your gear. HERO6 Black is waterproof to 33ft (10m) without a housing.', 9, 399, 'Elettronica', 3.2),
(54, 'M Train', 'Un viaggio in diciotto stazioni a bordo del treno della mente di un’artista leggendaria: M Train parte dal Café ’Ino, il minuscolo caffè del Greenwich Village dove ogni mattina Patti Smith ordina una tazza di caffè nero, pane integrale tostato e un piattino di olio d’oliva. Seduta al suo solito tavolo d’angolo, medita sul ', 11, 1.99, 'Libri', 1),
(55, 'Just Kids Formato Kindle', 'New York, ultimi scampoli degli anni sessanta, l’atmosfera è effervescente. Patti e Robert stanno passeggiando, sono in città per festeggiare l’estate indiana. Incrociano una coppia di ', 11, 6.99, 'Libri', 3.6),
(56, 'La Tempesta', 'Questo ebook è un testo di pubblico dominio. Potete trovare il testo liberamente sul web. La presente edizione è stata realizzata per Amazon da Simplicissimus Book Farm per la distribuzione gratuita attraverso Kindle.', 11, 0.5, 'Libri', NULL),
(57, 'Sogno di una notte di mezza estate ', 'Sogno di una notte di mezza estate (titolo originale: \"A Midsummer Night\'s Dream\") fu scritta probabilmente tra il 1593 e il 1595. E\' senza dubbio una delle commedie più conosciute e apprezzate di William Shakespeare. L\'opera si compone di tre storie collegate tra loro dalla celebrazione del matrimonio tra ', 11, 0.5, 'Libri', 4.8),
(58, 'Riccardo III ', 'Shakespeare mette in scena la storia del deforme Riccardo, duca di Gloucester e fratello del Re Edoardo IV. Uomo malvagio e ambizioso, attratto dal potere, macchina inganni e omicidi pur di ottenere la corona.', 11, 0.8, 'Libri', 3.9),
(59, 'Macbeth ', 'Macbeth è tra i più conosciuti drammi di Shakespeare, nonché la tragedia più breve. Frequentemente rappresentata e riadattata nel corso dei secoli, è divenuta archetipo della brama di potere e dei suoi pericoli.', 11, 0.8, 'Libri', 5),
(60, 'Amleto ', 'Nel panorama letterario di tutto il mondo, l\'Amleto è una delle opere più famose e nello specifico della produzione shakesperiana è, senza dubbio, tra le opere maggiormente rappresentate del poeta e drammaturgo inglese. ', 11, 0.3, 'Libri', 5),
(61, 'Trovarsi', 'Il problema di ciò che ciascuno di noi veramente sia, prescindendo da come gli altri lo vedano, e da come, in un certo senso, lo facciano essere, è questione difficile da risolversi; ma tanto più complessa per chi, come la Donata Genzi della commedia, per la sua professione di attrice, deve assumere, di ', 11, 0.99, 'Libri', 5),
(62, 'Medea ', '\"Medea\" (Μήδεια, Médeia) è una tragedia di Euripide, andata in scena per la prima volta ad Atene, alle Grandi Dionisie del 431 a.C. La tragedia contiene una forma di critica al modello familiare tradizionale in uso nella Atene del V secolo a.C. Di fronte allo sdegno ed alla disperazione di Medea per le nuove ', 11, 0, 'Libri', 5),
(63, 'Tre sorelle ', 'Racconta Stanislavskij che alla fine della prima lettura delle Tre sorelle gli attori piangevano, ed esclamavano \"che dramma!\" o \"che tragedia!\" A tali parole Cechov si rabbuiò, si alzò e usci dal teatro. Stanislavskij, che lo rincorse fino a casa, lo trovò non solo afflitto e depresso, ma fuori di sé.', 11, 2.99, 'Libri', 3),
(64, 'Il giardino dei ciliegi', 'La commedia mancata, l’immagine dolente della precarietà e meschinità dell’uomo, il frutto estremo della penna triste di un genio che credeva di vestire di comicità le sue opere. Il poeta russo che ha donato individualità ai personaggi del teatro tradizionale, che ha immaginato una realtà fatta di infinite, latent', 11, 3.5, 'Libri', 3.6),
(65, 'Il gabbiano', 'Tra i testi più noti del grande drammaturgo russo e anche uno di quelli più spesso portati in scena, vi si possono scorgere notevoli collegamenti con l\'Amleto di Shakespeare, che più volte viene citato dai personaggi dell\'opera. ', 11, 2.99, 'Libri', 1.5),
(66, 'I fiori del male', '\"I fiori del male\" è una raccolta lirica di Charles Baudelaire. La prima edizione fu pubblicata nel giugno del 1857 in una tiratura di soli 1300 esemplari. Il testo comprendeva cento poesie divise in cinque sezioni: \"Spleen et ideal\", \"Les Fleurs du mal\", \"Révolte\", \"Le vin\" e \"La mort\".', 11, 0.49, 'Libri', 5),
(67, 'I sonetti dell\'amore oscuro ', 'I famosi Sonetos del amor obscuro, pubblicati postumi, sono un vivissimo, bruciante e tormentato monumento all\'amore ed esprimono tutta la sofferta inquietudine di un sentimento impossibile, fonte al tempo stesso di dolore e passione, di entusiasmo e disperazione, di gioia intensa, respirata profondamente, e di desiderio di morte: è poesia drammaticamente sentita come struggente coscienza di distruzione, in cui l\'istinto sessuale si scontra con l\'ostacolo e la frustrazione della propria diversit', 11, 0.49, 'Libri', 4),
(68, 'Poesie ', 'A cosa servono i versi se non a quella notte in cui un pugnale amaro ci esplora, a quel giorno, a quel crepuscolo, a quel cantuccio offeso dove il cuore stremato dell’uomo si prepara a morire?\r\nA cosa servono i versi se non a quella notte in cui un pugnale amaro ci esplora, a quel giorno, a quel crepuscolo, a quel cantuccio offeso dove il cuore stremato dell’uomo si prepara a morire?\r\nA cosa servono i versi se non a quella notte in cui un pugnale amaro ci esplora, a quel giorno, a quel crepuscol', 11, 0.99, 'Libri', 4),
(69, 'Poesie ', 'Federico del Sagrado Corazón de Jesús García Lorca, (Fuente Vaqueros, 5 giugno 1898 – Víznar, 19 agosto 1936), è stato un poeta e drammaturgo spagnolo appartenente alla cosiddetta generazione del \'27, un gruppo di scrittori che affrontò le Avanguardie europee con risultati eccellenti.', 11, 1.05, 'Libri', 5),
(70, 'Per tenere lontana la notte', 'Io invece dico buonanotte - di giorno - / Perché la separazione, quella è la notte, / e la presenza, invece, semplicemente l’alba - / E quella, la luce purpurea lassù / è chiamata mattino.', 11, 0.99, 'Libri', 5),
(71, 'Poesie ', 'A cura di Gabriella Sobrino\r\nCon venti disegni di Ugo Attardi\r\nTesto inglese a fronte', 11, 1.99, 'Libri', 3.5),
(72, 'Poesie d\'amore', 'Motivo dominante delle poesie qui presentate è l’amarezza di un’incolmabile solitudine causata in Tagore dalla perdita prematura della moglie e di due figli.', 11, 1.99, 'Libri', 4.7),
(73, 'I 444 scalini', 'Le indagini del commissario Sensi e del dottor Claps', 11, 0.3, 'Libri', 4),
(74, 'Gaz!', 'Le indagini per due omicidi apparentemente legati al mondo della prostituzione vengono affidate al commissario Benni; le vittime sono un transessuale brasiliano e un portaborse di un noto uomo politico a capo di una commissione per gli scambi commerciali con la Russia. ', 11, 5.99, 'Libri', 5),
(75, 'Just Kids Formato Kindle', 'New York, ultimi scampoli degli anni sessanta, l’atmosfera è effervescente. Patti e Robert stanno passeggiando, sono in città per festeggiare l’estate indiana. Incrociano una coppia di ', 11, 6.99, 'Libri', 3.6),
(76, 'La Tempesta', 'Questo ebook è un testo di pubblico dominio. Potete trovare il testo liberamente sul web. La presente edizione è stata realizzata per Amazon da Simplicissimus Book Farm per la distribuzione gratuita attraverso Kindle.', 11, 0.5, 'Libri', NULL),
(77, 'Sogno di una notte di mezza estate ', 'Sogno di una notte di mezza estate (titolo originale: \"A Midsummer Night\'s Dream\") fu scritta probabilmente tra il 1593 e il 1595. E\' senza dubbio una delle commedie più conosciute e apprezzate di William Shakespeare. L\'opera si compone di tre storie collegate tra loro dalla celebrazione del matrimonio tra ', 11, 0.5, 'Libri', 4.8),
(78, 'Riccardo III ', 'Shakespeare mette in scena la storia del deforme Riccardo, duca di Gloucester e fratello del Re Edoardo IV. Uomo malvagio e ambizioso, attratto dal potere, macchina inganni e omicidi pur di ottenere la corona.', 11, 0.8, 'Libri', 3.9),
(79, 'Macbeth ', 'Macbeth è tra i più conosciuti drammi di Shakespeare, nonché la tragedia più breve. Frequentemente rappresentata e riadattata nel corso dei secoli, è divenuta archetipo della brama di potere e dei suoi pericoli.', 11, 0.8, 'Libri', 5),
(80, 'Amleto ', 'Nel panorama letterario di tutto il mondo, l\'Amleto è una delle opere più famose e nello specifico della produzione shakesperiana è, senza dubbio, tra le opere maggiormente rappresentate del poeta e drammaturgo inglese. ', 11, 0.3, 'Libri', 5),
(81, 'Trovarsi', 'Il problema di ciò che ciascuno di noi veramente sia, prescindendo da come gli altri lo vedano, e da come, in un certo senso, lo facciano essere, è questione difficile da risolversi; ma tanto più complessa per chi, come la Donata Genzi della commedia, per la sua professione di attrice, deve assumere, di ', 11, 0.99, 'Libri', 5),
(82, 'Medea ', '\"Medea\" (Μήδεια, Médeia) è una tragedia di Euripide, andata in scena per la prima volta ad Atene, alle Grandi Dionisie del 431 a.C. La tragedia contiene una forma di critica al modello familiare tradizionale in uso nella Atene del V secolo a.C. Di fronte allo sdegno ed alla disperazione di Medea per le nuove ', 11, 0, 'Libri', 5),
(83, 'Tre sorelle ', 'Racconta Stanislavskij che alla fine della prima lettura delle Tre sorelle gli attori piangevano, ed esclamavano \"che dramma!\" o \"che tragedia!\" A tali parole Cechov si rabbuiò, si alzò e usci dal teatro. Stanislavskij, che lo rincorse fino a casa, lo trovò non solo afflitto e depresso, ma fuori di sé.', 11, 2.99, 'Libri', 3),
(84, 'Il giardino dei ciliegi', 'La commedia mancata, l’immagine dolente della precarietà e meschinità dell’uomo, il frutto estremo della penna triste di un genio che credeva di vestire di comicità le sue opere. Il poeta russo che ha donato individualità ai personaggi del teatro tradizionale, che ha immaginato una realtà fatta di infinite, latent', 11, 3.5, 'Libri', 3.6),
(85, 'Il gabbiano', 'Tra i testi più noti del grande drammaturgo russo e anche uno di quelli più spesso portati in scena, vi si possono scorgere notevoli collegamenti con l\'Amleto di Shakespeare, che più volte viene citato dai personaggi dell\'opera. ', 11, 2.99, 'Libri', 1.5),
(86, 'I fiori del male', '\"I fiori del male\" è una raccolta lirica di Charles Baudelaire. La prima edizione fu pubblicata nel giugno del 1857 in una tiratura di soli 1300 esemplari. Il testo comprendeva cento poesie divise in cinque sezioni: \"Spleen et ideal\", \"Les Fleurs du mal\", \"Révolte\", \"Le vin\" e \"La mort\".', 11, 0.49, 'Libri', 5),
(87, 'I sonetti dell\'amore oscuro ', 'I famosi Sonetos del amor obscuro, pubblicati postumi, sono un vivissimo, bruciante e tormentato monumento all\'amore ed esprimono tutta la sofferta inquietudine di un sentimento impossibile, fonte al tempo stesso di dolore e passione, di entusiasmo e disperazione, di gioia intensa, respirata profondamente, e di desiderio di morte: è poesia drammaticamente sentita come struggente coscienza di distruzione, in cui l\'istinto sessuale si scontra con l\'ostacolo e la frustrazione della propria diversit', 11, 0.49, 'Libri', 4),
(88, 'Poesie ', 'A cosa servono i versi se non a quella notte in cui un pugnale amaro ci esplora, a quel giorno, a quel crepuscolo, a quel cantuccio offeso dove il cuore stremato dell’uomo si prepara a morire?\r\nA cosa servono i versi se non a quella notte in cui un pugnale amaro ci esplora, a quel giorno, a quel crepuscolo, a quel cantuccio offeso dove il cuore stremato dell’uomo si prepara a morire?\r\nA cosa servono i versi se non a quella notte in cui un pugnale amaro ci esplora, a quel giorno, a quel crepuscol', 11, 0.99, 'Libri', 4),
(89, 'Poesie ', 'Federico del Sagrado Corazón de Jesús García Lorca, (Fuente Vaqueros, 5 giugno 1898 – Víznar, 19 agosto 1936), è stato un poeta e drammaturgo spagnolo appartenente alla cosiddetta generazione del \'27, un gruppo di scrittori che affrontò le Avanguardie europee con risultati eccellenti.', 11, 1.05, 'Libri', 5),
(90, 'Per tenere lontana la notte', 'Io invece dico buonanotte - di giorno - / Perché la separazione, quella è la notte, / e la presenza, invece, semplicemente l’alba - / E quella, la luce purpurea lassù / è chiamata mattino.', 11, 0.99, 'Libri', 5),
(91, 'Poesie ', 'A cura di Gabriella Sobrino\r\nCon venti disegni di Ugo Attardi\r\nTesto inglese a fronte', 11, 1.99, 'Libri', 3.5),
(92, 'Poesie d\'amore', 'Motivo dominante delle poesie qui presentate è l’amarezza di un’incolmabile solitudine causata in Tagore dalla perdita prematura della moglie e di due figli.', 11, 1.99, 'Libri', 4.7),
(93, 'I 444 scalini', 'Le indagini del commissario Sensi e del dottor Claps', 11, 0.3, 'Libri', 4),
(94, 'Gaz!', 'Le indagini per due omicidi apparentemente legati al mondo della prostituzione vengono affidate al commissario Benni; le vittime sono un transessuale brasiliano e un portaborse di un noto uomo politico a capo di una commissione per gli scambi commerciali con la Russia. ', 11, 5.99, 'Libri', 5),
(95, 'LG elettronics', 'LG Electronics OLED55E7P 55-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 17, 2.496, 'Elettronica', 1),
(96, 'Sony tv', 'Sony XBR43X800E 43-Inch 4K Ultra HD Smart LED TV (2017 Model)', 17, 598, 'Elettronica', 1),
(97, 'TCL ultra HD', 'TCL 55S405 55-Inch 4K Ultra HD Roku Smart LED TV (2017 Model)', 17, 399.99, 'Elettronica', 1),
(98, 'Sceptre LED TV ', 'Sceptre 43 inches 1080p LED TV (2017)', 17, 232.45, 'Elettronica', 1),
(99, 'Samsung Smart TV', 'Samsung Electronics UN40M5300A 40-Inch 1080p Smart LED TV (2017 Model)', 17, 399.99, 'Elettronica', 1),
(100, 'Samsung UN24H4000 24-Inch 720p LED TV (2014 Model)', 'Refresh Rate: 60Hz (Native); 120 Clear Motion Rate (Effective)\r\nBacklight: LED (Edge-Lit)\r\nSmart Functionality: No\r\nDimensions (W x H x D): TV without stand: 22.1\" x 13.7\'\' x 1.9\'\'; TV with stand: 22.1\" x 15.1\" x 6.4\"\r\nInputs: 2 HDMI, 1 USB\r\nAccessories Included: Standard Remote Control', 17, 126.5, 'Elettronica', 1),
(101, 'Sceptre E246BV-SR 24\" LED HDTV HDMI, True Black', 'High Resolution Screen TV with HDMI and USB Input\r\nVESA Wall Mount Ready\r\nHigh Contrast Ratio 5,000:1\r\nPC VGA Input Ready', 17, 103.16, 'Elettronica', 1),
(102, 'LG Electronics OLED65E7P 65-Inch 4K', 'LG Electronics OLED65E7P 65-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 17, 3.496, 'Elettronica', 1),
(103, 'LG elettronics', 'LG Electronics OLED55E7P 55-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 17, 2496, 'Elettronica', 1),
(104, 'Sony tv', 'Sony XBR43X800E 43-Inch 4K Ultra HD Smart LED TV (2017 Model)', 17, 598, 'Elettronica', 1),
(105, 'TCL ultra HD', 'TCL 55S405 55-Inch 4K Ultra HD Roku Smart LED TV (2017 Model)', 17, 399.99, 'Elettronica', 1),
(106, 'Sceptre LED TV ', 'Sceptre 43 inches 1080p LED TV (2017)', 17, 232.45, 'Elettronica', 1),
(107, 'Samsung Smart TV', 'Samsung Electronics UN40M5300A 40-Inch 1080p Smart LED TV (2017 Model)', 17, 399.99, 'Elettronica', 1),
(108, 'Samsung UN24H4000 24-Inch 720p LED TV (2014 Model)', 'Refresh Rate: 60Hz (Native); 120 Clear Motion Rate (Effective)\r\nBacklight: LED (Edge-Lit)\r\nSmart Functionality: No\r\nDimensions (W x H x D): TV without stand: 22.1\" x 13.7\'\' x 1.9\'\'; TV with stand: 22.1\" x 15.1\" x 6.4\"\r\nInputs: 2 HDMI, 1 USB\r\nAccessories Included: Standard Remote Control', 17, 126.5, 'Elettronica', 1),
(109, 'Sceptre E246BV-SR 24\" LED HDTV HDMI, True Black', 'High Resolution Screen TV with HDMI and USB Input\r\nVESA Wall Mount Ready\r\nHigh Contrast Ratio 5,000:1\r\nPC VGA Input Ready', 17, 103.16, 'Elettronica', 1),
(110, 'LG Electronics OLED65E7P 65-Inch 4K', 'LG Electronics OLED65E7P 65-Inch 4K Ultra HD Smart OLED TV (2017 Model)', 17, 3496.99, 'Elettronica', 1),
(111, 'ECHOGEAR Full Motion Articulating TV Wall Mount Bracket for most 37-70 inch LED, LCD, OLED and Plasm', 'Our heavy-gauge universal TV mount holds 37\"-70\" TVs weighing up to 132lbs. Dont worry, we will do the heavy lifting: ECHOGEAR TV mounts are tested to hold 4 times the weight they are rated to. Safety Tested - UL Certified.\r\nPulling out to 16\" and back in to 2.6\" from the wall gives your TV smooth moves. Swivel your TV 150 degrees to the left or right to get all the views your room could ever need.\r\nMounting has never been so easy: 30 minutes to install on 16\" studs, with all hardware included a', 9, 79.99, 'Elettronica', 1),
(112, 'Samsung Electronics', 'Samsung Electronics UN65MU9000 65-Inch 4K Ultra HD Smart LED TV (2017 Model)', 9, 1597.99, 'Elettronica', 1),
(113, 'HP Printer', 'Main functions of this HP color inkjet photo printer: copy, scan, wireless printing, AirPrint, two-sided duplex printing, touchscreen, Instant Ink ready so you will never run out of ink, and moreMobile printing: print from anywhere using your smartphone or tablet with the free HP ePrint app, easily print from your iPhone or iPad with AirPrint, print even without a network using Wireless Direct printing2-sided printing: Allows you to print on both sides of the page, cutting your paper use by up t', 9, 50, 'Elettronica', 1),
(114, 'GoPro HERO6 Black', 'HERO6 Black automatically sends your footage to your phone where the app turns it into a QuikStory-an awesome edited video.', 17, 399, 'Elettronica', 1),
(115, 'Samsung 32GB 95MB/s (U1) MicroSD EVO Select Memory Card with Adapter (MB-ME32GA/AM)', 'Up to 95MB/s & 20MB/s read & write speeds respectively; Class 17 UHS 1', 17, 12.99, 'Elettronica', 1);

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
('Elettronica', NULL),
('Informatica', NULL),
('Libri', NULL),
('Smartphone', NULL),
('Sport', NULL),
('Videogame', NULL);

--
-- Dump dei dati per la tabella `immaginiarticoli`
--

INSERT INTO `immaginiarticoli` (`IdImmagine`, `Percorso`, `IdArticolo`) VALUES
(1, 'https://s3-eu-west-1.amazonaws.com/s3.quotidiano.net/data/images/gallery/2013/80237/topolino.jpg', 25),
(2, 'http://milano.repubblica.it/images/2013/04/11/123741360-af54e18b-b08b-4f11-9c46-a0e5ea104be2.jpg', 24),
(118, 'https://static.lafeltrinelli.it/static/frontside/xxl/601/6990601_1502785.jpg', 17),
(119, 'http://www.eurodiffusione.com/images/P/11950800.jpg', 11),
(120, 'https://shop.vertecchi.com/73745-home_default/tucano-custodia-neoprene-colore-p-pc-13-14-rosso-bfc1314-r.jpg', 16),
(121, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/9881/9881868_ra.jpg;maxHeight=640;maxWidth=550', 47),
(122, 'https://images-eu.ssl-images-amazon.com/images/I/410Ap0-d+7L._AC_US218_.jpg', 12),
(123, 'https://www.decathlon.it/media/839/8395806/big_c8093acc-7222-43f5-8997-ffbcd67f8d72.jpg', 14),
(124, 'http://www.regaloregalo.com/ebay/f.spongebob.pino.jpg', 15),
(125, 'https://images-eu.ssl-images-amazon.com/images/I/31VuaLDaHdL._AC_UL260_SR200,260_.jpg', 13),
(126, 'https://geronimostilton.com/upload/assets/files/IT,116,-1,12152/41391-0.jpg', 20),
(127, 'http://www.mondadoristore.it/img/Ore-8-a-scuola-di-formaggio-Geronimo-Stilton/ea978883849892/BL/BL/64/NZO/?tit=Ore+8%3A+a+scuola+di+formaggio%21&aut=Geronimo+Stilton', 21),
(128, 'https://img.ibs.it/images/9788856656589_0_0_1342_75.jpg', 22),
(129, 'https://geronimostilton.com/upload/assets/files/IT,116,-1,9652/33136-0.jpg', 23),
(130, 'https://images-na.ssl-images-amazon.com/images/I/71kspVLeKBL.jpg', 19),
(131, 'http://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05520207.png', 3),
(132, 'http://store.hp.com/wcsstore/hpusstore/Treatment/dsnew-printers-drawer-1-3b.jpg', 49),
(133, 'https://www.macrolibrarsi.it/data/cop/zoom/i/il-piccolo-principe-libro-89892.jpg', 18),
(134, 'https://images-na.ssl-images-amazon.com/images/I/41Wf7RaCxGL._SL500_AC_SS350_.jpg', 2),
(135, 'https://www.prezzoforte.it/images/SAN_GIORGIO_SES510D_80065_0.jpg', 4),
(136, 'https://s7d2.scene7.com/is/image/SamsungUS/MU9000_1?$product-details-jpg$', 42),
(137, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5865/5865001ld.jpg', 43),
(138, 'https://www.tclelectronics.com.au/wp-content/uploads/40E5900US_feature-2.jpg', 30),
(139, 'http://www.lg.com/it/images/tv/32lb570v/gallery/lg-tv-led-32LB570V-medium00.jpg', 36),
(145, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/7068/7068146_sd.jpg;maxHeight=640;maxWidth=550', 48),
(146, 'https://images-eu.ssl-images-amazon.com/images/I/415rUGCy6RL._SL500_AC_SS350_.jpg', 5),
(147, 'http://images.samsung.com/is/image/samsung/global-mkt-tv-overview-smart-samsung-tv-suhd-smart-autodetection?$ORIGIN_JPG$', 40),
(148, 'https://www.notebookcheck.it/uploads/tx_nbc2/wiko_rainbow_lite_4_zu_3.jpg', 7),
(152, 'https://images-na.ssl-images-amazon.com/images/I/81hF4eUx5vL._SY550_.jpg', 50),
(153, 'https://images-eu.ssl-images-amazon.com/images/I/41jTbtdm%2BtL._SL500_AC_SS350_.jpg', 51),
(156, 'https://images-na.ssl-images-amazon.com/images/I/41rMfUQjRcL._SL500_AC_SS350_.jpg', 53),
(157, 'http://www.camerahire.com.au/images/hire/gopro-hero-6-black-camera.jpg', 52),
(158, 'https://images-eu.ssl-images-amazon.com/images/I/41o3voonXML.jpg', 5),
(159, 'https://images-eu.ssl-images-amazon.com/images/I/4102HrOH68L.jpg', 75),
(160, 'https://images-eu.ssl-images-amazon.com/images/I/51WGFC05smL.jpg', 57),
(161, 'https://images-eu.ssl-images-amazon.com/images/I/51h6cJq-iaL.jpg', 78),
(162, 'https://images-eu.ssl-images-amazon.com/images/I/510or3ETxdL.jpg', 59),
(163, 'https://images-eu.ssl-images-amazon.com/images/I/51Nk0fbVxjL.jpg', 60),
(164, 'https://images-eu.ssl-images-amazon.com/images/I/511M0AYhqDL.jpg', 61),
(165, 'https://images-eu.ssl-images-amazon.com/images/I/51L2xxhC-FL.jpg', 62),
(166, 'https://images-eu.ssl-images-amazon.com/images/I/41se22k8lOL.jpg', 63),
(167, 'https://images-eu.ssl-images-amazon.com/images/I/41pxEVZDIsL.jpg', 64),
(168, 'https://images-eu.ssl-images-amazon.com/images/I/41brzcvk%2BsL.jpg', 65),
(169, 'https://images-eu.ssl-images-amazon.com/images/I/51Yc7YNapVL.jpg', 66),
(170, 'https://images-eu.ssl-images-amazon.com/images/I/51T2n9KTQOL.jpg', 67),
(171, 'https://images-eu.ssl-images-amazon.com/images/I/41hMLbRwxkL.jpg', 68),
(172, 'https://images-eu.ssl-images-amazon.com/images/I/41MxtJRjhZL.jpg', 69),
(173, 'https://images-eu.ssl-images-amazon.com/images/I/41TA7Mhr2rL.jpg', 70),
(174, 'https://images-eu.ssl-images-amazon.com/images/I/41F25q-YmXL.jpg', 71),
(175, 'https://images-eu.ssl-images-amazon.com/images/I/41w4qD2hqpL.jpg', 72),
(176, 'https://images-eu.ssl-images-amazon.com/images/I/51NKjxNl59L.jpg', 73),
(177, 'https://images-eu.ssl-images-amazon.com/images/I/51E1IvdI9jL.jpg', 74),
(184, 'http://www.lg.com/in/images/tvs/md05602481/gallery/Large-940x620.jpg', 95),
(185, 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/5763/5763401ld.jpg', 96),
(186, 'https://www.tclelectronics.com.au/wp-content/uploads/28D2900_angle_right.jpg', 97),
(187, 'https://www.tclelectronics.com.au/wp-content/uploads/32D2900_front_feature.jpg', 98),
(188, 'http://images.samsung.com/is/image/samsung/my-hd-j4303-ua32j4303akxxm-002-front-indigoblue?scl=1&fmt=png-alpha', 99),
(189, 'https://brain-images-ssl.cdn.dixons.com/4/9/10161494/l_10161494_002.jpg', 100),
(190, 'http://d2pa5gi5n2e1an.cloudfront.net/global/images/product/tvs/LG_32LK450/LG_32LK450_L_1.jpg', 101),
(191, 'https://images.kogan.com/image/fetch/s--r23MaKmN--/b_white,c_pad,f_auto,h_400,q_auto:good,w_600/https://assets.kogan.com/files/product/TV_Update/KALED49SUHDZA_2_V2.jpg', 102),
(192, 'https://5.imimg.com/data5/YK/DN/MY-11422573/40-inch-led-tv-smart-500x500.jpg', 104),
(193, 'https://d243u7pon29hni.cloudfront.net/imagesOnDemand/get?imagePath=/images/products/tv_led_engel_LE2060_l.png&width=200&height=200&quality=65&imgType=product', 105),
(194, 'https://www.thegoodguys.com.au/wcsstore/TGGCAS/idcplg?IdcService=GET_FILE&RevisionSelectionMethod=LatestReleased&noSaveAs=1&dDocName=50034472_129520&Rendition=PRODUCTSLIDER', 106),
(195, 'https://www.thegoodguys.com.au/wcsstore/TGGCAS/idcplg?IdcService=GET_FILE&RevisionSelectionMethod=LatestReleased&noSaveAs=1&dDocName=50045802_498473&Rendition=ZOOMIMAGE', 107),
(196, 'https://www.thegoodguys.com.au/wcsstore/TGGCAS/idcplg?IdcService=GET_FILE&RevisionSelectionMethod=LatestReleased&noSaveAs=1&dDocName=50048708_531143&Rendition=FULLIMAGE', 108),
(197, 'https://www.thegoodguys.com.au/wcsstore/TGGCAS/idcplg?IdcService=GET_FILE&RevisionSelectionMethod=LatestReleased&noSaveAs=1&dDocName=50046774_536963&Rendition=ZOOMIMAGE', 109),
(198, 'https://i5.walmartimages.ca/images/Enlarge/747/_01/999999-887276046747_01.jpg', 110),
(199, 'https://www.sansui-india.com/sites/default/files/Raga-Special-SPL21UO-UZT%20Big.png', 111),
(200, 'http://www.220-electronics.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-ps-50c450-plasma-multi-system-tv.jpg', 112),
(201, 'https://images.kogan.com/image/fetch/s--HkJvDrgh--/b_white,c_pad,f_auto,h_400,q_auto:good,w_600/https://assets.kogan.com/files/product/TV_Update/KALED55UHDZF_2_V2.jpg', 39),
(202, 'https://i5.walmartimages.ca/images/Enlarge/234/_03/999999-887276069234_03.jpg', 40),
(203, 'https://eu.community.samsung.com/html/assets/03A.%20TV%20(Angle).jpg', 41),
(204, 'https://blowhammer.com/pub/media/catalog/product/cache/dc21af5ddf7c42e24dd03bdf77b7c98a/B/H/BHMTEE00100-0141_DAVANTI.jpg', 8),
(205, 'https://www.brandshopstore.com/623-large_default/t-shirt-logo-base.jpg', 9),
(206, 'http://www.euro-informatica.com/wp-content/uploads/tastiera-portatile.png', 10),
(207, 'https://www.chileggetrova.it/wp-content/uploads/2016/07/Topolino1.jpg', 26),
(208, 'https://upload.wikimedia.org/wikipedia/it/d/d1/Pirata_Orango_%28Topolino_3197%29.jpg', 27),
(209, 'http://www.lg.com/it/images/tv/md05757470/lg-tv-oled-B6V-img350-2018.jpg', 29),
(210, 'https://images-na.ssl-images-amazon.com/images/I/91wmBPr9ppL._SL1500_.jpg', 28),
(211, 'http://www.amicopc.com/wp-content/uploads/2017/05/samsung.jpg', 31),
(212, 'http://4k.com/wp-content/uploads/2015/02/samsung-smart-tv-2-790x529.jpg', 33),
(213, 'https://www.androidaba.com/wp-content/uploads/2015/09/smart-tv-samsung.jpg', 32),
(214, 'http://www.smartworld.it/wp-content/uploads/2016/07/HDR-samsung.jpg', 34),
(215, 'https://images-eu.ssl-images-amazon.com/images/I/51kjepSrtNL._SL500_AC_SS350_.jpg', 35);

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`IdOrdine`, `IdVenditore`, `IdUtente`, `PrezzoTot`, `DataOrdine`, `DataSpedizione`, `TipoOrdine`, `PagamentoRicevuto`, `Ricevuto`) VALUES
(1, 9, 27, 18, '2018-01-10', '2018-01-25', 'spedizione', 'TRUE', 'FALSE');

--
-- Dump dei dati per la tabella `recensionearticoli`
--

INSERT INTO `recensionearticoli` (`IdRecArt`, `IdUtente`, `Voto`, `Testo`, `IdArticolo`) VALUES
(1, 23, 3, 'Carino come fumetto. Giusto per ingrandire la mia collezione', 25),
(2, 7, 4, 'Bel fumetto, ricevuto in ottime condizioni', 25),
(3, 5, 1, 'Ricevuto strappato con due settimane di ritardo', 25);

--
-- Dump dei dati per la tabella `sessionuser`
--

INSERT INTO `sessionuser` (`IdSession`, `utente`, `dataSession`, `hashcode`) VALUES
(1, 27, '2018-01-17', '6d79195a2bcc2d527640218127e22ecd2feee6bd914ce2fc64174e6dd5c95730'),
(2, 28, '2018-01-17', 'd25c4f95fa6d8a7e96a911dd070489bbfb657a121d74960daa062f5d3aedcc12'),
(3, 27, '2018-01-17', '84baa293a05a3a5cb98123160db62ab29d6dbfc3388f9e13e601d99147f28432'),
(4, 28, '2018-01-18', '5028bebe0fda73d0d86d8ccb05cdedb58a48f08fa7ab18ab13661ff84692ff96'),
(5, 27, '2018-01-18', '74398dcf3619896bb1865491a2db370a8c30fabf2c6e21dc8e7a80edfa21abc5'),
(6, 27, '2018-01-19', '0c294ff4ce08cfe1789f9f79e5cfa0a0d3f4f6799da4a533306fd930c764af93'),
(7, 27, '2018-01-19', '2495fa551d571674ec74ce85eba87b2a100eca973f67c8711c11bd720ed3f8f3'),
(8, 27, '2018-01-19', '1b946904c7a98abdb6e1355da714d8153590b47bdaccb91c06153fdbbcd556a6'),
(9, 27, '2018-01-19', 'b3823eb71775bf6b90be443b11ad427820cc3d8d12b8884b9e69fa597c021144');

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
(28, 'pippoAdmin', '69842058052e167cba8a62acf64dd207d936f0ea2977190df543ea8e26859aa9', 'PippoA', 'pippo', 'l@h.com', '1998-01-17', 'User', 'false', '19c96d8d4cab0b2ce07cd0af59f9c6473e2106d8a259df027501f8752d630d24'),
(29, 'giuPippo', 'fe479ce9949e8a82afe8fb4e46befb7dfbd2cd745608d6dbb7810ee7a65e67f5', 'Giulia', 'Absolute', 'l@h.com', '1996-01-25', 'User', 'false', '95b051c695123fe7bad6637a093ed82d0f852034b3b87b6b516af20bb4324c03');


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

INSERT INTO `immaginiutente`(`IdImmagine`, `Percorso`, `IdUtente`) VALUES (1,'./images/immProfile.PNG',29);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
