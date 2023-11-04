-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2023 a las 21:42:42
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
-- Base de datos: `volveralfuturo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Marty McFly', 'Martin Seamus McFly,es el personaje protagonista de la trilogía de películas de Back to the Future', '1.jpeg'),
(2, 'Emmett Brown', 'Dr. Emmett Lathrop Brown, apodado Doc, es un personaje de ficción de la trilogía de películas Back to the Future', '2.jpeg'),
(3, 'Biff Tannen', 'Biff Tannen es un personaje de la trilogía de películas de ciencia ficción Back to the Future. Es el principal antagonista', '3.jpeg'),
(4, 'Jennifer Parker', 'Jennifer Jane Parker es un personaje de ficción de la trilogía de películas de Back to the Future', '4.jpeg'),
(5, 'George McFly', 'George Douglas McFly es un personaje de la trilogía de Back to the Future. Es el padre de Marty McFly', '5.jpeg'),
(6, 'Lorraine Baines McFly', 'Lorraine Baines McFly es un personaje de la trilogía de Back to the Future. Es la madre de Marty McFly', '6.jpeg'),
(7, 'Sr. Strickland', 'Sr. Stricklandes es un personaje de la pelicula Back to the Future, como el director del instituto de Hill Valley', '7.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
