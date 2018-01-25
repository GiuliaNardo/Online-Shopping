-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 25, 2018 alle 19:46
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
(2, 'Iphone5', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 868.7, 'Smartphone', 1),
(3, 'HP Pavillion', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 1000.77, 'Informatica', 1),
(4, 'Lavatrice XTR', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 2, 899.99, 'Elettrodomestici', 1),
(5, 'Samsung Galaxi 5', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 2, 600, 'Smartphone', 1),
(7, 'Wiko rainbow', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 150, 'Informatica', 1),
(8, 'T-shirt LV', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 50, 'Abbigliamento', 1),
(9, 'T-shirt Supreme', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 50, 'Abbigliamento', 1),
(10, 'Tastiera ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 30, 'Informatica', 1),
(11, 'Custodia pc', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 20, 'Informatica', 1),
(12, 'Felpa bianca', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 20, 'Abbigliamento', 1),
(13, 'Felpa verde', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 2, 25, 'Abbigliamento', 1),
(14, 'Felpa blu', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 23, 'Abbigliamento', 1),
(15, 'Felpa spongebob', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 25, 'Abbigliamento', 1),
(16, 'Custodia pc rossa', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 25, 'Informatica', 1),
(17, 'Alice nel paese delle meraviglie', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 20, 'Libri', 1),
(18, 'Il piccolo principe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 15, 'Libri', 1),
(19, 'Guida galattica per autostoppisti', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 15.5, 'Libri', 1),
(20, 'Geronimo Stilton-1', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 12, 'Libri', 1),
(21, 'Geronimo Stilton-2', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 12.5, 'Libri', 1),
(22, 'Geronimo Stilton-3', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 1, 13, 'Libri', 1),
(23, 'Geronimo Stilton-4', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 12.99, 'Libri', 1),
(24, 'Topolino-1', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 2, 6, 'Libri', 1),
(25, 'Topolino-2', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 6.5, 'Libri', 1),
(26, 'Topolino-3', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 2, 7, 'Libri', 1),
(27, 'Topolino-4', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 2, 6.3, 'Libri', 1),
(28, 'LG elettronics', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 2.496, 'Elettronica', 1),
(29, 'Sony tv', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 598, 'Elettronica', 1),
(30, 'TCL ultra HD', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 399.99, 'Elettronica', 1),
(31, 'Sceptre LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 232.45, 'Elettronica', 1),
(32, 'Samsung Smart TV', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 399.99, 'Elettronica', 1),
(33, 'Samsung UN24H4000 24-Inch 720p LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 126.5, 'Elettronica', 1),
(34, 'Sceptre E246BVSR 24 LED HDTV HDMI True Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 103.16, 'Elettronica', 1),
(35, 'LG Electronics OLED65E7P 65Inch 4K', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 3.496, 'Elettronica', 1),
(36, 'LG elettronics', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 2496, 'Elettronica', 1),
(37, 'Sony tv', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 598, 'Elettronica', 1),
(38, 'TCL ultra HD', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 399.99, 'Elettronica', 1),
(39, 'Sceptre LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 232.45, 'Elettronica', 1),
(40, 'Samsung Smart TV', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 399.99, 'Elettronica', 1),
(41, 'Samsung UN24H4000 24Inch 720p LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 126.5, 'Elettronica', 1),
(42, 'Sceptre E246BVSR 24 LED HDTV HDMI True Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 103.16, 'Elettronica', 1),
(43, 'LG Electronics OLED65E7P 65Inch 4K', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 10, 3496.99, 'Elettronica', 1),
(47, 'ECHOGEAR Full Motion Articulating TV Wall Mount Bracket for most 3770 inch LED LCD OLED and Plasm', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 9, 79.99, 'Elettronica', 1),
(48, 'Samsung Electronics', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 9, 1597.99, 'Elettronica', 1),
(49, 'HP Printer', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 9, 50, 'Elettronica', 1),
(50, 'GoPro HERO6 Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 399, 'Elettronica', 1),
(51, 'Samsung 32GB 95MB MicroSD EVO Select Memory Card with Adapter ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 3, 12.99, 'Elettronica', 1),
(52, 'GoPro HERO6 Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 2, 399, 'Elettronica', 2),
(53, 'GoPro HERO6 Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 9, 399, 'Elettronica', 3.2),
(54, 'M Train', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 1.99, 'Libri', 1),
(55, 'Just Kids Formato Kindle', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 6.99, 'Libri', 3.6),
(56, 'La Tempesta', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.5, 'Libri', NULL),
(57, 'Sogno di una notte di mezza estate ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.5, 'Libri', 4.8),
(58, 'Riccardo III ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.8, 'Libri', 3.9),
(59, 'Macbeth ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.8, 'Libri', 5),
(60, 'Amleto ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.3, 'Libri', 5),
(61, 'Trovarsi', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.99, 'Libri', 5),
(62, 'Medea ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0, 'Libri', 5),
(63, 'Tre sorelle ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 2.99, 'Libri', 3),
(64, 'Il giardino dei ciliegi', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 3.5, 'Libri', 3.6),
(65, 'Il gabbiano', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 2.99, 'Libri', 1.5),
(66, 'I fiori del male', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.49, 'Libri', 5),
(67, 'I sonetti dell amore oscuro ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.49, 'Libri', 4),
(68, 'Poesie ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.99, 'Libri', 4),
(69, 'Poesie ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 1.05, 'Libri', 5),
(70, 'Per tenere lontana la notte', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.99, 'Libri', 5),
(71, 'Poesie ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 1.99, 'Libri', 3.5),
(72, 'Poesie a amore', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 1.99, 'Libri', 4.7),
(73, 'I 444 scalini', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.3, 'Libri', 4),
(74, 'Gaz!', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 5.99, 'Libri', 5),
(75, 'Just Kids Formato Kindle', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 6.99, 'Libri', 3.6),
(76, 'La Tempesta', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.5, 'Libri', NULL),
(77, 'Sogno di una notte di mezza estate ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.5, 'Libri', 4.8),
(78, 'Riccardo III ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.8, 'Libri', 3.9),
(79, 'Macbeth ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.8, 'Libri', 5),
(80, 'Amleto ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.3, 'Libri', 5),
(81, 'Trovarsi', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.99, 'Libri', 5),
(82, 'Medea ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0, 'Libri', 5),
(83, 'Tre sorelle ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 2.99, 'Libri', 3),
(84, 'Il giardino dei ciliegi', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 3.5, 'Libri', 3.6),
(85, 'Il gabbiano', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 2.99, 'Libri', 1.5),
(86, 'I fiori del male', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.49, 'Libri', 5),
(87, 'I sonetti dell amore oscuro ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.49, 'Libri', 4),
(88, 'Poesie ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.99, 'Libri', 4),
(89, 'Poesie ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 1.05, 'Libri', 5),
(90, 'Per tenere lontana la notte', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.99, 'Libri', 5),
(91, 'Poesie ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 1.99, 'Libri', 3.5),
(92, 'Poesie a amore', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 1.99, 'Libri', 4.7),
(93, 'I 444 scalini', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 0.3, 'Libri', 4),
(94, 'Gaz!', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 11, 5.99, 'Libri', 5),
(95, 'LG elettronics', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 2.496, 'Elettronica', 1);
INSERT INTO `articolo` (`IdArticolo`, `Nome`, `Descrizione`, `IdVenditore`, `Prezzo`, `Categoria`, `Voto`) VALUES
(96, 'Sony tv', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 598, 'Elettronica', 1),
(97, 'TCL ultra HD', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 399.99, 'Elettronica', 1),
(98, 'Sceptre LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 232.45, 'Elettronica', 1),
(99, 'Samsung Smart TV', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 399.99, 'Elettronica', 1),
(100, 'Samsung UN24H4000 24-Inch 720p LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 126.5, 'Elettronica', 1),
(101, 'Sceptre E246BVSR 24 LED HDTV HDMI True Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 103.16, 'Elettronica', 1),
(102, 'LG Electronics OLED65E7P 65Inch 4K', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 3.496, 'Elettronica', 1),
(103, 'LG elettronics', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 2496, 'Elettronica', 1),
(104, 'Sony tv', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 598, 'Elettronica', 1),
(105, 'TCL ultra HD', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 399.99, 'Elettronica', 1),
(106, 'Sceptre LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 232.45, 'Elettronica', 1),
(107, 'Samsung Smart TV', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 399.99, 'Elettronica', 1),
(108, 'Samsung UN24H4000 24Inch 720p LED TV ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 126.5, 'Elettronica', 1),
(109, 'Sceptre E246BVSR 24 LED HDTV HDMI True Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 103.16, 'Elettronica', 1),
(110, 'LG Electronics OLED65E7P 65Inch 4K', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 3496.99, 'Elettronica', 1),
(111, 'ECHOGEAR Full Motion Articulating TV Wall Mount Bracket for most 37 70 inch LED LCD OLED and Plasm', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 9, 79.99, 'Elettronica', 1),
(112, 'Samsung Electronics', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 9, 1597.99, 'Elettronica', 1),
(113, 'HP Printer', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 9, 50, 'Elettronica', 1),
(114, 'GoPro HERO6 Black', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 399, 'Elettronica', 1),
(115, 'Samsung 32GB 95 MicroSD EVO Select Memory Card with Adapte', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi temp', 17, 12.99, 'Elettronica', 1),
(116, 'Dynacraft Mens', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 9, 150, 'Sport', 2),
(117, 'Bike Lock Cable', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 9, 12.97, 'Sport', 3.5),
(118, 'BV 30FT Security Steel ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 9, 19.99, 'Sport', 3),
(119, 'Trimax lock', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 9, 10.94, 'Sport', 3.5),
(120, 'Motorcycle Cover ', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 9, 16.99, 'Sport', 5),
(121, 'Bici Ibrida Cicli Adriatica', 'Bici Ibrida Cicli Adriatica', 9, 273, 'Sport', 3.6),
(122, 'MBM LIFE IBRIDA', '', 9, 299, 'Sport', 3.9),
(123, 'Sportstech Cyclette', 'Sportstech Cyclette', 9, 629, 'Sport', 5),
(124, 'Tappetino 2000x1000x6 mm', 'Tappetino 2000x1000x6 mm', 9, 49.9, 'Sport', 2.6),
(125, 'Sportstech F38 Tapis roulant elettrico ', 'Sportstech F38 Tapis roulant elettrico ', 9, 500, 'Sport', 4),
(126, 'Klarfit Pacemaker X3 nastro tapis roulant ', 'Klarfit Pacemaker X3 nastro tapis roulant ', 9, 260, 'Sport', 2.3),
(127, 'Mountain Warehouse Maglietta a maniche lunghe da donna', 'Mountain Warehouse Maglietta a maniche lunghe da donna', 9, 17, 'Sport', 2.6),
(128, 'Mountain Warehouse T-shirt melange da donna Panna', 'Mountain Warehouse T-shirt melange da donna Panna', 9, 6, 'Sport', 2),
(129, 'Fitbit Charge 2 Braccialetto Monitoraggio Battito Cardiaco e Attività Fisica', 'Fitbit Charge 2 Braccialetto Monitoraggio Battito Cardiaco e Attività Fisica', 9, 60, 'Sport', 5),
(130, 'MOVIT® Twin Set di pesi da polso', 'MOVIT® Twin Set di pesi da polso o di caviglia, armatura, pesi da 0,5 kg, ', 9, 30, 'Sport', 4),
(131, 'Fasce elastiche di resistenza ', 'Fasce elastiche di resistenza - Set da 4 bande fitness premium allenamento - Perfette per migliorare forza e mobilità, yoga, pilates o per riabilitazione dopo un infortunio - Adatte a uomini e donne - In lattice ', 9, 27, 'Sport', 3),
(132, 'Bande elastiche', 'Bande elastiche di resistenza - Il set di quattro pezzi include tre bande extra lunghe e ganci per la porta. Allenati ovunque ', 9, 38, 'Sport', 3),
(133, 'Tunturi 14TUSFU135 Palla Da Ginnastica', 'Tunturi 14TUSFU135 Palla Da Ginnastica, Unisex – Adulto, Blu, Diametro 65 cm', 9, 23, 'Sport', 4),
(134, 'Tunturi 14Tusyo002 Cuscino Pilates, Unisex', 'Tunturi 14Tusyo002 Cuscino Pilates, Unisex – Adulto, Turchese, 33 x 33 x 8 cm', 9, 35, 'Sport', 4),
(135, 'Sissel 161040 Balance Board, Unisex ', 'Sissel 161040 Balance Board, Unisex ', 9, 17, 'Sport', 5),
(136, 'MIUSOL Vintage Donna Pizzo Vestito Slim Una Spalla Abiti Da Sera', 'MIUSOL Vintage Donna Pizzo Vestito Slim Una Spalla Abiti Da Sera', 14, 19.99, 'Abbigliamento', 5),
(137, 'MIUSOL Vintage Donna Pizzo Vestito Slim Una Spalla Abiti Da Sera', 'MIUSOL Vintage Donna Pizzo Vestito Slim Una Spalla Abiti Da Sera', 14, 20, 'Abbigliamento', 5),
(138, 'Abito rosa', 'Abito rosa lungo', 14, 25, 'Abbigliamento', 5),
(139, 'Abito rosso', 'Abito lungo rosso', 14, 26, 'Abbigliamento', 4.8),
(140, 'Abito rosa', 'Abito lungo rosa', 14, 30, 'Abbigliamento', 5),
(141, 'Abito azzurro', 'Abito lungo', 14, 60, 'Abbigliamento', 5),
(142, 'Abito bianco', 'Abito corto bianco', 14, 90, 'Abbigliamento', 5),
(143, 'Abito bianco', 'Abito bianco', 14, 250, 'Abbigliamento', 5),
(144, 'Abito beige', 'Abito corto', 14, 25, 'Abbigliamento', 2),
(145, 'Pantaloni uomo', 'pantaloni grigi', 14, 56, 'Abbigliamento', 3.6),
(146, 'Pantaloni verde militare', 'pantaloniverde militare', 14, 58, 'Abbigliamento', 5),
(147, 'Pantaloni tuta', 'pantaloni tuta rossi', 14, 10, 'Abbigliamento', 3.6),
(148, 'Pantaloni eleganti', 'Pantaloni eleganti blu', 14, 35, 'Abbigliamento', 3.9),
(149, 'Pantaloni pelle', 'Pantaloni pelle neri', 14, 36, 'Abbigliamento', 4.6),
(150, 'Polo', 'Polo bianca', 14, 25, 'Abbigliamento', 3.2),
(151, 'Maglietta colorata', 'Maglietta maniche corte', 14, 52, 'Abbigliamento', 2.1),
(152, 'Maglia blu', 'Maglia maniche lunghe blu e grigia', 14, 32, 'Abbigliamento', 2.8),
(153, 'T shirt pollon', 't shirt pollon bianca', 14, 16.99, 'Abbigliamento', 2.3),
(154, 'Maglia bianca', 'Maglia bianca', 14, 14.58, 'Abbigliamento', 4),
(155, 'Maglia bianca', 'Maglia bianca disegno collana', 14, 59, 'Abbigliamento', 3.8);

--
-- Dump dei dati per la tabella `articoloordine`
--

INSERT INTO `articoloordine` (`Id`, `IdOrdine`, `IdArticolo`) VALUES
(0, 1, 11),
(1, 1, 11),
(2, 2, 114),
(3, 2, 19);

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
(119, 'http://ektor.org.uk/images/bags_ek/10010/sl-xx-10010-02.jpg', 11),
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
(199, 'http://images.samsung.com/is/image/samsung/it-hd-k4100-ue32k4100akxzt-002-r-perspective-black?$PD_GALLERY_JPG$', 111),
(200, 'https://s7d2.scene7.com/is/image/SamsungUS/Pdpdefault-un55ku6500fxza-600x600-C1-052016?$product-details-jpg$', 112),
(201, 'https://images.kogan.com/image/fetch/s--HkJvDrgh--/b_white,c_pad,f_auto,h_400,q_auto:good,w_600/https://assets.kogan.com/files/product/TV_Update/KALED55UHDZF_2_V2.jpg', 39),
(202, 'https://i5.walmartimages.ca/images/Enlarge/234/_03/999999-887276069234_03.jpg', 40),
(203, 'http://www.220-electronics.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/a/samsung-ps-50c450-plasma-multi-system-tv.jpg', 41),
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
(215, 'https://images-eu.ssl-images-amazon.com/images/I/51kjepSrtNL._SL500_AC_SS350_.jpg', 35),
(226, 'http://www.world-import.com/images/P/Sharp-LC-32LE240M.jpg', 37),
(227, 'https://c.76.my/Malaysia/sharp-aquos-lc32le180m-hd-ready-32-led-tv-1stopsupplies-1707-14-1StopSupplies@1.jpg', 38),
(228, 'https://res-5.cloudinary.com/gadgetby/image/upload/c_pad,dpr_1.0,f_auto,h_1200,q_80,w_1200/media/catalog/product/g/a/gadgetby-sharp50le275-1.jpg', 39),
(229, 'http://s2.glbimg.com/KvhbzpVQfpYt04LvmL6tSxSsDmQ=/s.glbimg.com/et/tv/f/original/2015/04/13/smith_front_-jkt.jpg', 54),
(230, 'https://img.culturacolectiva.com/content/2015/08/Just-Kids.jpg', 55),
(231, 'https://www.sololibri.net/IMG/arton5410.jpg', 56),
(232, 'http://ftv01.stbm.it/imgbank/GALLERYXL/SO/02172219.JPG', 58),
(233, 'https://media2.hoepli.it/hoepli/xxl/978/8865/9788865642283.jpg', 76),
(234, 'http://www.feltrinellieditore.it/media/copertina/quarta/57/9788807900457_quarta.jpg', 77),
(235, 'https://imagessl8.casadellibro.com/a/l/t0/18/9788892556218.jpg', 79),
(236, 'https://images-na.ssl-images-amazon.com/images/I/51YjC1mW1ML._SY445_.jpg', 80),
(237, 'https://mpimg.ibs.it/images/2560011053177_0_0_0_768_75.jpg', 81),
(238, 'https://static.lafeltrinelli.it/static/images-1/xl/220/674220.jpg', 82),
(239, 'https://img.ibs.it/images/9788806064785_0_0_1844_75.jpg', 83),
(240, 'https://img.ibs.it/images/9788831767651_0_200_0_0.jpg', 84),
(241, 'http://cdn.robadadonne.it/wp-content/uploads/sites/8/2015/10/gabbiano1.jpg', 85),
(242, 'http://www.mondadoristore.it/img/fiori-male-Testo-francese-Charles-Baudelaire/ea978880462783/BL/BL/64/NZO/?tit=I+fiori+del+male.+Testo+francese+a+fronte&aut=Charles+Baudelaire', 86),
(243, 'http://img.libraccio.it/images/9788806223274_0_500_0_75.jpg', 87),
(244, 'http://www.marcusedizioni.it/libri-2009/urraropoesie.jpg', 88),
(245, 'https://images-na.ssl-images-amazon.com/images/I/71dWfJUKJRL.jpg', 89),
(246, 'https://kbimages1-a.akamaihd.net/d3deb6fd-97ad-4e24-82f9-e11bbb9f886b/353/569/90/False/per-tenere-lontana-la-notte.jpg', 90),
(247, 'https://static.lafeltrinelli.it/static/frontside/xxl/292/6498292_1098249.jpg', 91),
(248, 'https://static.lafeltrinelli.it/static/images-1/xl/957/1756957.jpg', 92),
(249, 'http://sognandoleggendo.net/wp-content/uploads/i-444-scalini.jpg', 93),
(250, 'https://img.ibs.it/images/9788863931815_0_0_1536_75.jpg', 94),
(251, 'http://product-images.www8-hp.com/digmedialib/prodimg/lowres/c02949277.png', 113),
(252, 'https://icdn4.digitaltrends.com/image/gopro-hero-4-black-front-full-800x533-c.jpg?ver=1', 114),
(253, 'https://i.ebayimg.com/images/g/hngAAOSw8btZf-9I/s-l300.jpg', 115),
(275, 'https://images-na.ssl-images-amazon.com/images/I/41DtMSK5EPL._SX355_.jpg', 116),
(276, 'http://thebestbikelock.com/wp-content/uploads/2016/01/kryptonite-cable.jpg', 117),
(277, 'https://images-na.ssl-images-amazon.com/images/I/81w1enh7tJL._SL1500_.jpg', 118),
(278, 'http://i1.adis.ws/i/washford/271608?w=637&h=403', 119),
(279, 'https://images-na.ssl-images-amazon.com/images/I/810nq1Hbz4L._SX355_.jpg', 120),
(280, 'https://images-na.ssl-images-amazon.com/images/I/411iK1aLThL.jpg', 121),
(281, 'https://images-na.ssl-images-amazon.com/images/I/61NZj9h6woL._SY355_.jpg', 122),
(282, 'https://images-na.ssl-images-amazon.com/images/I/816sRDDYM7L._SY450_.jpg', 123),
(283, 'https://images-na.ssl-images-amazon.com/images/I/71UWkcnD6dL._SL1500_.jpg', 124),
(284, 'https://images-na.ssl-images-amazon.com/images/I/61vbD3U1RjL._SL1500_.jpg', 125),
(285, 'https://images-eu.ssl-images-amazon.com/images/I/41Z0Z%2BGuN%2BL.jpg', 126),
(286, 'https://images-eu.ssl-images-amazon.com/images/I/8163-c9jUuL._UL1500_.jpg', 127),
(287, 'https://images-na.ssl-images-amazon.com/images/I/615jeCYM4tL._SL1227_.jpg', 128),
(288, 'https://images-na.ssl-images-amazon.com/images/I/615jeCYM4tL._SY550_.jpg', 129),
(289, 'https://images-na.ssl-images-amazon.com/images/I/81QBcvEEhSL._SL1500_.jpg', 130),
(290, 'https://images-na.ssl-images-amazon.com/images/I/81scWWPfbbL._SL1500_.jpg', 131),
(291, 'http://www.fisiocommerce.it/public/products/54.jpg', 132),
(292, 'https://images-na.ssl-images-amazon.com/images/I/71V1WOmtL5L._SL1500_.jpg', 133),
(293, 'https://images-na.ssl-images-amazon.com/images/I/81iWoYlP1nL._SL1500_.jpg', 134),
(294, 'https://www.pilates.de/media/catalog/product/cache/1/small_image/315x210/9df78eab33525d08d6e5fb8d27136e95/s/i/sissel-balancefit-03_1.jpg', 135),
(295, 'https://images.sissel.com/images/it/products/fit_dome8_t_9851.jpg', 134),
(296, 'https://ae01.alicdn.com/kf/HTB1feLxRVXXXXbsXpXXq6xXFXXXT/Manica-lunga-Pizzo-Nero-Abiti-Da-Sera-2017-abiti-da-festa-Splendida-Promenade-Della-Sirena-Vestito.jpg_640x640.jpg', 136),
(297, 'https://www.trubridal.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/m/o/xmother-of-the-bride-dresses-mw_mb_0155.jpg.pagespeed.ic.veJOJtHSmo.jpg', 137),
(298, 'http://static.pourfemme.it/r/845X0/moda.pourfemme.it/img/Abito-da-cerimonia-in-pizzo.jpg', 138),
(299, 'http://www.elenielias.com/col_evening/full/P577_1.jpg', 139),
(300, 'https://images-na.ssl-images-amazon.com/images/I/61IYj06odQL._UY445_.jpg', 140),
(301, 'https://d1yd9ixvrhfvhu.cloudfront.net/29121-large_default/abito-da-sera-acquamarina-di-pizzo-scollato-dietro.jpg', 141),
(302, 'http://redpassionstyle.com/857-thickbox/mini-abito-pizzo-donna-vestito-da-sera-sexy-corto-girocollo-elegante-ds22384.jpg', 142),
(303, 'https://sites.create-cdn.net/siteimages/32/1/4/321454/10/2/8/10285610/667x1000.jpg?1440527480', 143),
(304, 'http://img.thewebery.com/1/1e/1e6/l/6c157ff272cdc4364410ccf0e1a4ba8a.jpg', 144),
(305, 'https://d2a78lufyeqvxg.cloudfront.net/media/catalog/product/P/a/Pantalonicarrotincotone_pantaloni_antonymorato_MMTR00376-FA850140-9000-1-W00362_01.jpg', 145),
(306, 'https://i.ebayimg.com/00/s/MTYwMFg5OTA=/z/dTQAAOSwr7tZg7EY/$_57.JPG?set_id=8800005007', 146),
(307, 'https://www.shopsundek.com/upload/articoli/zoom/PANTALONI-UOMO-IN-FELPA-CON-SCRITTA-SUNDEK_7138.jpg', 147),
(308, 'https://cdn.lanieri.com/images/images/000/547/815/big/b646b092a0e9e253ff8f005ace7fd9ed.jpg', 148),
(309, 'https://images-eu.ssl-images-amazon.com/images/I/613BHY62K4L._UX385_.jpg', 149),
(310, 'https://static8.cilory.com/273490-thickbox_default/nologo-white-polo-t-shirt-with-denim-collar.jpg', 150),
(311, 'https://image1.lacoste.com/dw/image/v2/AAQM_PRD/on/demandware.static/Sites-IT-Site/Sites-master/it/dwca03ae90/TH8001_KDE_24.jpg?sw=460&sh=460&sm=fit', 151),
(312, 'https://vicmetri.com/wp-content/uploads/2017/11/3.jpeg', 152),
(313, 'https://images-eu.ssl-images-amazon.com/images/I/71gaSw0qhkL._UX385_.jpg', 153),
(314, 'https://cdn.shopify.com/s/files/1/1208/8016/products/Render_prodotti_02_abaa469e-8949-4a42-9374-1e071ed2244f.jpg?v=1512766936', 154),
(315, 'http://www.micaletto.it/thumbnail/get/originali/armani-jeans-t-shirt-donna-da-3463.jpg', 155);

--
-- Dump dei dati per la tabella `immaginiutente`
--

INSERT INTO `immaginiutente` (`IdImmagine`, `Percorso`, `IdUtente`) VALUES
(2, './images/immProfile.PNG', 29);

--
-- Dump dei dati per la tabella `notification`
--

INSERT INTO `notification` (`IdNotifica`, `IdUtente`, `Testo`, `Url`, `DataNotifica`, `Stato`) VALUES
(1, 29, 'Ciao', 'http://localhost:8080/index.jsp', '2018-01-16', 'Nuova');

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`IdOrdine`, `IdVenditore`, `IdUtente`, `PrezzoTot`, `DataOrdine`, `DataSpedizione`, `TipoOrdine`, `PagamentoRicevuto`, `Ricevuto`) VALUES
(1, 9, 27, 18, '2018-01-10', '2018-01-25', 'spedizione', 'TRUE', 'FALSE'),
(2, 10, 28, 35, '2018-01-03', '2018-01-05', 'spedizione', 'TRUE', 'TRUE');

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
(9, 27, '2018-01-19', 'b3823eb71775bf6b90be443b11ad427820cc3d8d12b8884b9e69fa597c021144'),
(10, 29, '2018-01-25', '1b623f0bc8c8132d75b4c512db279821efa7c6bad4520a87214f68434aebecd5'),
(11, 28, '2018-01-25', '5477548d36b214f0e79b518638fb0690f45c64cbb553d0974948f18fe5308021'),
(12, 29, '2018-01-25', '97c1fe55817c42d95b33ba4049a989fcfb40bb0c7155143b624e6aa7ab5b5bc4'),
(13, 29, '2018-01-25', 'dfdcf6155d49c285f53aca284354f033ae7e416db4db112931c36152f3fad373');

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
(27, 'Giulia1', '982c38dc43dc57c14adebe399c6556893b5114c877d90b83921b2e0945191801', 'pippo', 'pippo', 'l@h.com', '2018-01-17', 'Seller', 'false', '33d2cf014275ec8f7ab705bb59780829089250e182f7a510aca578f27daf78a6'),
(28, 'pippoAdmin', '69842058052e167cba8a62acf64dd207d936f0ea2977190df543ea8e26859aa9', 'PippoA', 'pippo', 'l@h.com', '1998-01-17', 'User', 'false', '19c96d8d4cab0b2ce07cd0af59f9c6473e2106d8a259df027501f8752d630d24'),
(29, 'giuPippo', 'fe479ce9949e8a82afe8fb4e46befb7dfbd2cd745608d6dbb7810ee7a65e67f5', 'Giulia', 'Absolute', 'l@h.com', '1985-01-25', 'Seller', 'true', '95b051c695123fe7bad6637a093ed82d0f852034b3b87b6b516af20bb4324c03');

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
(17, 27, 'pippo', 'n', '12345678912', '123456789784', 'Topolandia', 2.3),
(18, 29, 'PIppolandia', 'Non lo so', '01234569845', '012345698450', 'Via Topolandia 67', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
