-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2023 a las 03:26:27
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
-- Base de datos: `seleccion_argentina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `id_habilidades` int(11) NOT NULL,
  `nivel_de_ataque` varchar(50) NOT NULL,
  `nivel_defensa` varchar(50) NOT NULL,
  `nivel_shoot` varchar(50) NOT NULL,
  `nivel_pase` varchar(50) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `rating` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id_habilidades`, `nivel_de_ataque`, `nivel_defensa`, `nivel_shoot`, `nivel_pase`, `imagen`, `rating`) VALUES
(1, '56', '85', '85', '79', 'emiliano.jpg', '80'),
(2, '83', '86', '81', '79', 'cuti.jpg', '83'),
(3, '79', '86', '80', '74', 'otamendi.jpg', '81'),
(4, '84', '84', '81', '83', 'acuña.jpg', '83'),
(5, '79', '80', '78', '74', 'molina.jpg', '79'),
(6, '80', '85', '83', '75', 'paredes.jpg', '80'),
(7, '80', '82', '81', '80', 'locelso.jpg', '81'),
(8, '85', '83', '84', '84', 'depaul.jpg', '84'),
(9, '86', '79', '88', '90', 'martinez.jpg', '86'),
(10, '95', '94', '98', '99', 'messi.jpg', '98'),
(11, '84', '83', '90', '85', 'fideo.jpg', '87');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id-jugadores` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` varchar(50) NOT NULL,
  `estatura` varchar(50) NOT NULL,
  `posicion` varchar(50) NOT NULL,
  `club` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id-jugadores`, `nombre`, `apellido`, `edad`, `estatura`, `posicion`, `club`, `pais`) VALUES
(1, 'Emiliano', 'Martinez', '30', '1,96 mts', 'Arquero', 'Aston_Villa_Football_Club ', 'Argentina'),
(2, 'Cristian ', 'Romero', '25', '1,85 mts', 'Defensa', 'Tottenham ', 'Argentina'),
(3, 'Nicolás ', 'Otamendi', '35', '1,83 mts', 'Defensa', 'Benfica', 'Argentina'),
(4, 'Marcos ', 'Acuña', '31', '1,73 mts', 'Defensa', 'Sevilla', 'Argentina'),
(5, 'Nahuel', ' Molina', '25', '1,75 mts', 'Defensa', 'Atletico Madrid', 'Argentina'),
(6, 'Leandro', 'Paredes', '29', '1,83 mts', 'Medio', 'Roma', 'Argentina'),
(7, 'Giovani', 'Lo_Celso', '27', '1,77 mts', 'Medio', 'Tottenham ', 'Argentina'),
(8, 'Rodrigo', 'De_Paul', '29', '1,80', 'Medio', 'Atletico_Madrid', 'Argentina'),
(9, 'Lautaro', 'Martinez', '25', '1,74 mts', 'Delantero', 'Inter_de_Milan', 'Argentina'),
(10, 'Lionel', 'Messi', '36', '1,70 mts', 'Delantero', 'Inter_de_Miami', 'Argentina'),
(11, 'Angel', 'Di_Maria', '35', '1,8', 'Delantero', 'Benfica', 'Argentina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id_habilidades`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id-jugadores`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id_habilidades` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id-jugadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_habilidades` FOREIGN KEY (`id-jugadores`) REFERENCES `habilidades` (`id_habilidades`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
