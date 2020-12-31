-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 31 2020 г., 05:16
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `books`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `year` int(5) NOT NULL,
  `download_link` varchar(30) NOT NULL,
  `buy_link` varchar(30) NOT NULL,
  `text` text NOT NULL,
  `img` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `genre`, `year`, `download_link`, `buy_link`, `text`, `img`) VALUES
(1, 'Atlas Shrugged', 'Айн Рэнд', 'novel', 1957, 'https://www.litmir.me', 'https://oz.by', 'ewfewfjytjj', 8),
(2, 'Generation P', 'Victor Pelevin', 'postmodernism', 1999, 'https://www.litmir.me', 'https://oz.by', 'postmodern novel by Viktor Pelevin ', 10),
(9, 'scandi', 'Pavelcfe', 'tttt', 2001, 'https://www.tut.by', 'https://www.tut.by', 'fveewrr', 10),
(12, 'Atlas Shrugged1', 'Pavel Pavlov', 'novel', 2001, 'https://www.tut.by', 'https://www.tut.by', 'new', 2),
(11, 'check', 'Pavel Pavlov', 'tttt', 2020, 'https://www.tut.by', 'https://www.tut.by', 'new', 3),
(3, '1984', 'Джордж Оруэлл', 'novel', 1948, 'https://www.litmir.me', 'https://oz.by', 'cwrwe', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `likes`
--

CREATE TABLE `likes` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `book_id`) VALUES
(19, 1, 2),
(20, 1, 9),
(21, 1, 1),
(22, 6, 12),
(23, 6, 11),
(24, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `access` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `access`) VALUES
(1, 'pavel@mail.ru', '123456', 1),
(2, 'rr@r', '123', NULL),
(3, 'nn@google.com', '123', NULL),
(4, 'atrasheuski@mail.ru', '3454444', NULL),
(5, 'atrasheuski@mail.ru', 'оеоеншеншш', NULL),
(6, 'pa@mail.ru', '123456', NULL),
(7, 'pavelnew@mail.ru', '123456', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
