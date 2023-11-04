-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2023 a las 03:26:08
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
-- Base de datos: `pokemon_mio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evolucion`
--

CREATE TABLE `evolucion` (
  `id_evolucion` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Tipos` varchar(50) DEFAULT NULL,
  `Imagen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evolucion`
--

INSERT INTO `evolucion` (`id_evolucion`, `Nombre`, `Tipos`, `Imagen`) VALUES
(1, 'Ivysaur', 'planta-veneno', 'Ivysaur.jpg'),
(2, 'Charmeleon', 'fuego', 'Charmeleon.jpg'),
(3, 'Wartortle', 'agua', 'Wartortle.jpg'),
(4, 'Metapod', 'bicho', 'Metapod.jpg'),
(5, NULL, NULL, NULL),
(6, 'Pidgeotto', 'normal-volador', 'Pidgeotto.jpg'),
(7, 'Raticate', 'normal', 'Raticate.jpg'),
(8, 'Fearow', 'normal-volador', 'Fearow.jpg'),
(9, 'Arbok', 'veneno', 'Arbok.jpg'),
(10, 'Raichu', 'electrico', 'Raichu.jpg'),
(11, 'Sandslash', 'tierra', 'Sandslash.jpg'),
(12, 'Nidorina', 'veneno', 'Nidorina.jpg'),
(13, 'Clefable', 'hada', 'Clefable'),
(14, 'Ninetales', 'fuego', 'Ninetales.jpg'),
(15, 'Wigglytuff', 'normal-hada', 'Wigglytuff.jpg'),
(16, 'Golbat', 'veneno-volador', 'Golbat.jpg'),
(17, 'Gloom', 'planta-veneno', 'Gloom.jpg'),
(18, NULL, NULL, NULL),
(19, NULL, NULL, NULL),
(20, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evolucion_de`
--

CREATE TABLE `evolucion_de` (
  `id_evolucion_de` int(11) NOT NULL,
  `id_pokemon` int(11) NOT NULL,
  `id_evolucion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evolucion_de`
--

INSERT INTO `evolucion_de` (`id_evolucion_de`, `id_pokemon`, `id_evolucion`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

CREATE TABLE `pokemon` (
  `id_pokemon` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Tipos` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id_pokemon`, `Nombre`, `Tipos`, `imagen`) VALUES
(1, 'Bulbasaur', 'planta-veneno', 'Bulbasaur.jpg'),
(2, 'Charmander', 'fuego', 'Charmander.jpg'),
(3, 'Squirtle', 'agua', 'Squirtle.jpg'),
(4, 'Caterpie', 'bicho', 'Caterpie.jpg'),
(5, 'Butterfree', 'bicho', 'Butterfree.jpg'),
(6, 'Pidgey', 'normal-volador', 'Pidgey.jpg'),
(7, 'Rattata', 'normal', 'Rattata.jpg'),
(8, 'Spearow', 'normal-volador', 'Spearow.jpg'),
(9, 'Ekans', 'veneno', 'Ekans.jpg'),
(10, 'Pikachu', 'electrico', 'Pikachu.jpg'),
(11, 'Sandshrew', 'tierra', 'Sandshrew.jpg'),
(12, 'Nidoran♀', 'veneno', 'Nidoran♀.jpg'),
(13, 'Clefairy', 'normal', 'Clefairy.jpg'),
(14, 'Vulpix', 'fuego', 'Vulpix.jpg'),
(15, 'Jigglypuff', 'normal', 'Jigglypuff.jpg'),
(16, 'Zubat', 'veneno-volador', 'Zubat.jpg'),
(17, 'Oddish', 'planta-veneno', 'Oddish.jpg'),
(18, 'Tauros', 'normal', 'Tauros.jpg'),
(19, 'Articuno', 'hielo-volador', 'Articuno.jpg'),
(20, 'Zapdos', 'electrico-volador', 'Zapdos.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `evolucion`
--
ALTER TABLE `evolucion`
  ADD PRIMARY KEY (`id_evolucion`);

--
-- Indices de la tabla `evolucion_de`
--
ALTER TABLE `evolucion_de`
  ADD PRIMARY KEY (`id_evolucion_de`),
  ADD KEY `id_pokemon` (`id_pokemon`),
  ADD KEY `id_evolucion` (`id_evolucion`);

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id_pokemon`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `evolucion`
--
ALTER TABLE `evolucion`
  MODIFY `id_evolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `evolucion_de`
--
ALTER TABLE `evolucion_de`
  MODIFY `id_evolucion_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id_pokemon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `evolucion_de`
--
ALTER TABLE `evolucion_de`
  ADD CONSTRAINT `id_evolucion` FOREIGN KEY (`id_evolucion`) REFERENCES `evolucion` (`id_evolucion`),
  ADD CONSTRAINT `id_pokemon` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id_pokemon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
