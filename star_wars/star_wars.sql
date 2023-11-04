-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 18:08:51
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
-- Base de datos: `star_wars`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre_completo` varchar(50) NOT NULL,
  `altura` varchar(50) NOT NULL,
  `peso` varchar(50) NOT NULL,
  `color_pelo` varchar(50) DEFAULT NULL,
  `color_piel` varchar(50) NOT NULL,
  `color_ojos` varchar(50) NOT NULL,
  `cumpleanios` varchar(50) NOT NULL,
  `genero` varchar(50) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre_completo`, `altura`, `peso`, `color_pelo`, `color_piel`, `color_ojos`, `cumpleanios`, `genero`, `imagen`) VALUES
(1, 'Luke Skywalker', '172 cm', '77 kg', 'blond', 'fair', 'blue', '19BBY', 'Masculino', '1.jpeg'),
(2, 'C-3PO', '167 cm', '75 kg', NULL, 'gold', 'yellow', '112BBY', NULL, '2.jpeg'),
(3, 'R2-D2', '96 cm', '32 kg', NULL, 'white, blue', 'red', '33BBY', NULL, '3.jpeg'),
(4, 'Darth Vader', '202 cm', '136 kg', NULL, 'white', 'yellow', '41.9BBY', 'Masculino', '4.jpeg'),
(5, 'Leia Organa', '150', '49', 'brown', 'light', 'brown', '19BBY', 'Femenino', '5.jpeg'),
(6, 'Owen Lars', '178 cm', '120 kg', 'brown, grey', 'light', 'blue', '52BBY', 'Masculino', '6.jpeg'),
(7, 'Beru Whitesun lars', '165 cm', '75 kg', 'brown', 'light', 'blue', '47BBY', 'Femenino', '7.jpeg'),
(8, 'R5-D4', '97 cm', '32 kg', NULL, 'white, red', 'red', 'unknown', NULL, '8.jpeg'),
(9, 'Biggs Darklighter', '183 cm', '84 kg', 'black', 'light', 'brown', '24BBY', 'Masculino', '9.jpeg'),
(10, 'Obi-Wan Kenobi', '182 cm ', '77 kg', 'auburn, white', 'fair', 'blue-gray', '57BBY', 'Masculino', '11.webp');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
