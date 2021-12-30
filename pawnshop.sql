-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2021 г., 17:36
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pawnshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `stuff`
--

CREATE TABLE `stuff` (
  `stuff_id` int NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `number` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `INN` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stuff_name` varchar(45) NOT NULL,
  `stuff_type` varchar(45) NOT NULL,
  `money` int NOT NULL,
  `total_sum` float DEFAULT NULL,
  `local_date` date DEFAULT NULL,
  `days` int NOT NULL,
  `final_date` date DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `final_days` int DEFAULT NULL,
  `count_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `delete_date` date DEFAULT NULL,
  `percent_money` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `stuff`
--

INSERT INTO `stuff` (`stuff_id`, `fullname`, `number`, `adress`, `INN`, `stuff_name`, `stuff_type`, `money`, `total_sum`, `local_date`, `days`, `final_date`, `percent`, `final_days`, `count_id`, `status`, `delete_date`, `percent_money`) VALUES
(1, 'ABDRASULOV', '0555102040', 'Bishkek', '1243214214', 'Iphone 12', 'Phone', 50000, 60000, '2021-12-20', 40, '2022-02-21', 0.5, 63, 12, 0, '2021-12-20', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id_user`, `login`, `password`, `date`) VALUES
(1, 'admin', 'admin', '2021-10-20');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `stuff`
--
ALTER TABLE `stuff`
  ADD PRIMARY KEY (`stuff_id`),
  ADD UNIQUE KEY `UNI` (`count_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `stuff`
--
ALTER TABLE `stuff`
  MODIFY `count_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
