-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 03 2016 г., 17:15
-- Версия сервера: 5.5.45
-- Версия PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `web`
--
CREATE DATABASE IF NOT EXISTS `web` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `web`;

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `url`, `name`, `content`) VALUES
(1, '/', 'Главная', 'Хауз стал неизменным местом встреч, приятных бесед, кофейных наслаждений, десертных изысков\n                    и всего самого приятного. Здесь Вас ждут традиции искреннего гостеприимства, уютный интерьер\n                    и приятная атмосфера, располагающая к общению. \n                    <p>Кофейня «House» появилась в городе Харькове 13 апреля 2015 года.  Мы хотели открыть в Харькове уютное заведение, \n                        радуя харьковчан качественно приготовленным кофе и вкусным шоколадом.  Так появился Хауз,− место, \n                        в котором приятно провести деловые встречи, просто отдохнуть или поработать; у нас очень уютно и всегда \n                        пахнет ароматным кофе и шоколадом.</p>\n                    Наш теплый домашний интерьер, с удобными креслами, книгами русских и зарубежных писателей на полках, \n                    приятной расслабляющей музыкой и большими витражными окнами, создан для того, чтобы Вы могли наблюдать \n                    за течением жизни города.\n                    <p>Аромат изумительного кофе, который исходит из нашей кофейни нельзя описать словами! Поэтому просто приходите к нам!</p>'),
(2, '/news', 'Новости', '<h4>Утро по-итальянски</h4>\n                    <p>Теперь в нашей кофейне вы можете ощутить себя как в настоящей Италии!\n                        Попробуйте наш итальянский завтрак - круассаны с апельсиновым соком.\n                    <p class="news-pict"><img src="img/news1.jpg"  alt="news1"></p>\n\n                    <h4>Новинки меню в House</h4>\n                    <p>Загляните в ближайшее время в Хауз и попробуйте новинку меню - Тертый персиковый пирог! Ммм... Пальчики оближешь!</p>\n                    <h4>Встреча любителей кофе</h4>\n                    <p>Не пропустите! 17 октября в кофейне Хауз пройдет встреча любителей кофе! Вкусный кофе, тёплый плед и приятную компанию гарантируем. </p>'),
(3, '/menu', 'Меню', '<img src="img/blank.jpg" id="blank" alt="blank_menu">'),
(4, '/disc', 'Акции', '<strong>Настоящий ШОКОПАД! </strong>\n                    <p>Только с 1.11.2015 по 15.11.2015 включительно кофейня Хаус предлагает скидку 20%\n                        на шоколадный торт, а также горячий шоколад. Спешите отведать - всё будет в шоколаде!</p>\n                    <img src="img/hotshoko.jpg" width="300" alt="hotshoko">'),
(5, '/about', 'О нас', '<p>Мы находимя в городе Харькове на улице Сумской 72.</p>\n                    <p>Добро пожаловать в кофейню House!</p>\n                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2564.2982099602546!2d36.23449721571533!3d50.005765579416405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4127a0de6da31c23%3A0x853806f294159428!2z0KHRg9C80YHRjNC60LAg0LLRg9C7LiwgNzIsINCl0LDRgNC60ZbQsiwg0KXQsNGA0LrRltCy0YHRjNC60LAg0L7QsdC70LDRgdGC0Yw!5e0!3m2!1sru!2sua!4v1444422509256" width="300"  frameborder="0" style="border:0" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `pass`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
