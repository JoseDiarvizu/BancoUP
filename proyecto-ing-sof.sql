-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2022 a las 19:09:48
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto-ing-sof`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer`
--

CREATE TABLE `transfer` (
  `transferid` int(11) NOT NULL,
  `senderid` int(11) NOT NULL,
  `receiverid` int(11) NOT NULL,
  `cantidad` decimal(15,2) NOT NULL,
  `concepto` varchar(200) DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transfer`
--

INSERT INTO `transfer` (`transferid`, `senderid`, `receiverid`, `cantidad`, `concepto`) VALUES
(21, 4, 1, '100.00', 'Saludos'),
(22, 4, 3, '100.00', 'Transferencia de prueba'),
(23, 4, 1, '200.00', 'Pago mensual'),
(24, 1, 4, '150.00', 'Pago de vuelta'),
(25, 1, 2, '5.00', 'Transferencia de prueba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `saldo` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `saldo`) VALUES
(1, 'José Arvizu', 'josearvizu@mail.com', '$2a$08$etLuCEdsS1b84CgjBvLLNO.zTDr8cImLyHBwF9oo2wize8PNPDrQ6', '45.00'),
(2, 'Max Lara', 'maxlara@mail.com', '$2a$08$hVVbydn2pM6t7mKdqkhaeeYMu0GhJXEKE8Ht3TGlx4SDpkI9p2uuC', '5.00'),
(3, 'Esteban García', 'egarcia@mail.com', '$2a$08$En0vh2o9KcHNvt7Vp39NUu7gX.DvM/wLrAo/yY2bHOxdqRZvMgHCO', '200.00'),
(4, 'Luis Manuel', 'lmanuel@mail.com', '$2a$08$dSuskkUw770T7qpkWKy82uxgCVykKOdWSKC1Z7Kn3QTknejIO9v8S', '1320.50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transferid`),
  ADD KEY `senderid` (`senderid`),
  ADD KEY `receiverid` (`receiverid`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transferid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `transfer_ibfk_1` FOREIGN KEY (`senderid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfer_ibfk_2` FOREIGN KEY (`receiverid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
