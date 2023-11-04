-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2023 a las 21:43:33
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menú`
--

CREATE TABLE `menú` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menú`
--

INSERT INTO `menú` (`id`, `producto`, `precio`, `stock`, `tipo`, `imagen`) VALUES
(1, 'Milanesa', 2000, 523, 'Carne Roja', '1.jpeg'),
(2, 'Pollo', 1900, 600, 'Carne Blanca', '2.jpeg'),
(3, 'Ravioles', 2800, 410, 'Pastas Rellenas', '3.jpeg'),
(4, 'Canelones', 2500, 123, 'Pastas Rellena', '4.jpeg'),
(5, 'Fideos', 1800, 250, 'Pastas', '5.jpeg'),
(6, 'Flan', 900, 1456, 'Postres', '6.jpeg'),
(7, 'Copa Helada', 2300, 120, 'Postres', '7.jpeg'),
(8, 'Torta Opera', 3200, 50, 'Postres', '8.jpeg'),
(9, 'Parrillada ', 15000, 20, 'Carnes', '9.jpeg'),
(10, 'Pescado a la Parrilla', 4500, 45, 'Pescado', '10.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menú`
--
ALTER TABLE `menú`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menú`
--
ALTER TABLE `menú`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
