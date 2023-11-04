-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2023 a las 22:21:20
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
-- Base de datos: `musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bandas`
--

CREATE TABLE `bandas` (
  `id_bandas` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Año_formación` varchar(50) NOT NULL,
  `Integrantes` varchar(50) NOT NULL,
  `Lugar_origen` varchar(50) NOT NULL,
  `Genero_musical` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bandas`
--

INSERT INTO `bandas` (`id_bandas`, `Nombre`, `Año_formación`, `Integrantes`, `Lugar_origen`, `Genero_musical`) VALUES
(1, 'SUMO', '1981', 'Luca Prodan, Germán Daffunchio, Ricardo Mollo, Die', 'Argentina', 'Rock'),
(2, 'Patricio Rey y los Redonditos de Ricota', '1976', 'Indio Solari, Skay Beilinson, Semilla Bucciarelli,', 'Argentina', 'Rock'),
(3, 'Las Pelotas', '1988', 'Germán Daffunchio, Tomás Sussmann, Gabriela Martín', 'Argentina', 'Funk rock, reggae y rock alternativo'),
(4, 'Divididos', '1988', 'Ricardo Mollo, Diego Arnedo, Catriel Ciavarella', 'Argentina', 'Rock alternativo, Funk rock, Hard rock, Folklore, '),
(5, 'Iron_Maiden', '1975', 'Steve Harris, Bruce Dickinson, Dave Murray, Adrian', 'Reino Unido', 'Heavy_Metal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `músicos`
--

CREATE TABLE `músicos` (
  `id_Musicos` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Nacionalidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `músicos`
--

INSERT INTO `músicos` (`id_Musicos`, `Nombre`, `Apellido`, `Edad`, `Nacionalidad`) VALUES
(1, 'Luca', 'Prodan', 34, 'Italiano'),
(2, 'Germán', ' Daffunchio', 61, 'Argentino'),
(3, 'Ricardo ', 'Mollo', 65, 'Argentino'),
(4, 'Indio ', 'Solari', 74, 'Argentino'),
(5, 'Bruce ', 'Dickinson', 65, 'Ingles'),
(6, 'Steve ', 'Harris', 64, 'Ingles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `músico_banda`
--

CREATE TABLE `músico_banda` (
  `id_Músico_banda` int(11) NOT NULL,
  `id_Músicos` int(11) NOT NULL,
  `id_bandas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `músico_banda`
--

INSERT INTO `músico_banda` (`id_Músico_banda`, `id_Músicos`, `id_bandas`) VALUES
(1, 1, 1),
(2, 2, 3),
(4, 3, 4),
(5, 4, 2),
(6, 5, 5),
(7, 6, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bandas`
--
ALTER TABLE `bandas`
  ADD PRIMARY KEY (`id_bandas`);

--
-- Indices de la tabla `músicos`
--
ALTER TABLE `músicos`
  ADD PRIMARY KEY (`id_Musicos`);

--
-- Indices de la tabla `músico_banda`
--
ALTER TABLE `músico_banda`
  ADD PRIMARY KEY (`id_Músico_banda`),
  ADD KEY `id_Músicos` (`id_Músicos`),
  ADD KEY `id_bandas` (`id_bandas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bandas`
--
ALTER TABLE `bandas`
  MODIFY `id_bandas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `músicos`
--
ALTER TABLE `músicos`
  MODIFY `id_Musicos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `músico_banda`
--
ALTER TABLE `músico_banda`
  MODIFY `id_Músico_banda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `músico_banda`
--
ALTER TABLE `músico_banda`
  ADD CONSTRAINT `músico_banda_ibfk_1` FOREIGN KEY (`id_Músicos`) REFERENCES `músicos` (`id_Musicos`),
  ADD CONSTRAINT `músico_banda_ibfk_2` FOREIGN KEY (`id_bandas`) REFERENCES `bandas` (`id_bandas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
