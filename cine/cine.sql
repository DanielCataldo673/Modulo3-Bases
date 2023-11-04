-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2023 a las 22:20:16
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
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

CREATE TABLE `actores` (
  `id_actores` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `actores`
--

INSERT INTO `actores` (`id_actores`, `Nombre`, `Apellido`, `Nacionalidad`) VALUES
(1, 'Ricardo Alberto ', 'Darín ', 'Argentina'),
(2, 'Leonardo Máximo', ' Sbaraglia​', 'Argentina'),
(3, 'Guillermo Héctor ', 'Francella', 'Argentina'),
(4, 'Cecilia ', 'Roth', 'Argentina'),
(5, 'Norma ', 'Aleandro', 'Argentina'),
(6, 'Niní ', 'Marshall', 'Argentina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participacion`
--

CREATE TABLE `participacion` (
  `id_participacion` int(11) NOT NULL,
  `id_actores` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `participacion`
--

INSERT INTO `participacion` (`id_participacion`, `id_actores`, `id_pelicula`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 7),
(4, 2, 8),
(5, 3, 5),
(6, 3, 6),
(7, 4, 9),
(8, 4, 10),
(9, 5, 1),
(10, 5, 4),
(11, 6, 11),
(12, 6, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id_pelicula` int(11) NOT NULL,
  `Tiltulo` varchar(50) NOT NULL,
  `Genero` varchar(50) NOT NULL,
  `Año` varchar(50) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Duración` varchar(50) NOT NULL,
  `Calificación` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id_pelicula`, `Tiltulo`, `Genero`, `Año`, `Pais`, `Duración`, `Calificación`) VALUES
(1, 'El hijo de la novia', 'Drama/Comedia ', '2001 ', 'Argentina', '2h 3m', 'R (por lenguaje) +13 T +14 Libre B +12 +14'),
(2, 'El secreto de sus ojos', 'Suspenso/Crimen ', '2009 ', 'Argentina', '2h 7m', 'No recomendado menores de 7 años'),
(3, 'Séptimo', 'Suspenso/Misterio ', '2013 ', 'Argentina', '1h 31m', 'No recomendada a menores de 12 años'),
(4, 'La historia oficial', 'Drama/Cine histórico ', '1985', 'Argentina', '1h 52m', 'R +18 +18 censurada hasta 1990 luego +18 B15 +14 +'),
(5, 'El clan', 'Crimen/Suspenso', '2015', 'Argentina', '1h 48m', 'No recomendada a menores de 16 años'),
(6, 'Corazón de León', 'Romance/Drama', '2013', 'Argentina', '1h 48m', 'Apta Todo Publico'),
(7, 'Relatos salvajes', 'Comedia/Drama', '2014', 'Argentina', '2h 2m', 'No recomendada para menores de 16 años'),
(8, 'La Noche de los Lápices', 'Drama/Cine independiente', '1986', 'Argentina', '1h 46m', 'Argentina: +16 Estados Unidos: R'),
(9, 'Todo sobre mi madre', 'Drama', '1999', 'Argentina', '1h 41m', 'No recomendado menores de 18 años'),
(10, 'Cenizas del paraíso', 'Drama/Cine independiente ', '1997 ', 'Argentina', '2h 3m', 'Película no recomendada a menores de 18 años'),
(11, 'Cándida', ' Musical/Blanco y negro', '1939 ', 'Argentina', '93 minutos', 'Apta mayor +16 '),
(12, 'Mujeres que trabajan', 'Comedia/Drama', '1938 ', 'Argentina', '1h 17m', 'Apta mayor +16 ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actores`
--
ALTER TABLE `actores`
  ADD PRIMARY KEY (`id_actores`);

--
-- Indices de la tabla `participacion`
--
ALTER TABLE `participacion`
  ADD PRIMARY KEY (`id_participacion`),
  ADD KEY `id_actores` (`id_actores`),
  ADD KEY `id_pelicula` (`id_pelicula`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actores`
--
ALTER TABLE `actores`
  MODIFY `id_actores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `participacion`
--
ALTER TABLE `participacion`
  MODIFY `id_participacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `participacion`
--
ALTER TABLE `participacion`
  ADD CONSTRAINT `id_actores` FOREIGN KEY (`id_actores`) REFERENCES `actores` (`id_actores`),
  ADD CONSTRAINT `id_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id_pelicula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
