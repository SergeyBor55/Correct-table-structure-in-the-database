-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 24 2019 г., 07:37
-- Версия сервера: 5.6.38
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Лев Толстой'),
(2, 'Михаил Булгаков'),
(3, 'Джером Д. Сэлинджер'),
(4, 'Николай Гоголь');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `publication_year` year(4) NOT NULL,
  `count` int(11) NOT NULL,
  `authors_id` int(4) DEFAULT NULL,
  `publishing_company_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `publication_year`, `count`, `authors_id`, `publishing_company_id`) VALUES
(1, 'Казаки', 1901, 5, 1, 2),
(2, 'Мастер и Маргарита\r\n', 1931, 6, 2, 1),
(3, 'Над пропастью во ржи\r\n', 1951, 9, 3, 1),
(4, 'Шинель\r\n', 1920, 7, 4, 2),
(5, 'Морфий\r\n\r\n', 1926, 3, 2, 2),
(6, 'Бег\r\n', 1926, 8, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `books_issued`
--

CREATE TABLE `books_issued` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_of_issue` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `return_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books_issued`
--

INSERT INTO `books_issued` (`id`, `student_id`, `book_id`, `date_of_issue`, `return_date`) VALUES
(1, 3, 4, '2018-04-23 14:36:37', '2019-01-23 14:36:37'),
(2, 2, 4, '2018-09-23 14:36:37', '2019-01-23 14:36:37'),
(3, 2, 2, '2017-06-23 14:36:37', '2019-01-23 14:36:37'),
(4, 1, 6, '2017-05-23 14:36:37', '2019-01-23 14:36:37'),
(5, 2, 1, '2018-04-23 14:36:37', '2019-01-23 14:36:37'),
(6, 4, 3, '2018-08-23 14:36:37', '2019-01-23 14:36:37'),
(7, 5, 5, '2018-11-23 14:36:37', '2019-01-23 14:36:37');

-- --------------------------------------------------------

--
-- Структура таблицы `publishings`
--

CREATE TABLE `publishings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `publishings`
--

INSERT INTO `publishings` (`id`, `title`) VALUES
(1, 'Альфарет'),
(2, 'Альфа-книга');

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `name`) VALUES
(1, 'Василий Зуев'),
(2, 'Игорь Верник'),
(3, 'Алла Пугачёва'),
(4, 'Дональд Трамп'),
(5, 'Леонид Якубович'),
(6, 'Энди Гарсия'),
(7, 'Антон Зверев'),
(8, 'Ирина Друздь'),
(9, 'Елена Светлакова'),
(10, 'Павел Воля');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books_issued`
--
ALTER TABLE `books_issued`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `publishings`
--
ALTER TABLE `publishings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `books_issued`
--
ALTER TABLE `books_issued`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `publishings`
--
ALTER TABLE `publishings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
