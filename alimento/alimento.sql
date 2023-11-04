-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-10-2023 a las 14:11:21
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
-- Base de datos: `alimento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `frutas`
--

CREATE TABLE `frutas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `frutas`
--

INSERT INTO `frutas` (`id`, `nombre`, `descripcion`, `imagen`) VALUES
(1, 'Naranja', 'Ricas en vitamina C, vitamina A, y fibra.\r\n', '1.jpeg'),
(2, 'Banana', 'Ricos en potasio, vitamina C, y fibra.\r\n', '2.jpeg'),
(3, 'Manzana', 'Ricas en fibra, antioxidantes, y vitaminas C y K', '3.jpeg'),
(4, 'Mandarina', 'Aporta vitamina C y vitamina A ', '4.jpeg'),
(5, 'Pera', 'Aporta vitaminas A, B, C y K, minerales como cobre, hierro, potasio y magnesio', '5.jpeg'),
(6, 'Limon', 'El limón aporta una gran cantidad de vitamina C, potasio y cantidades menores de otras vitaminas y minerales', '6.jpeg'),
(7, 'Uva', 'Ricas en antioxidantes, fibra, y vitaminas C y K', '7.jpeg'),
(8, 'Durazno', 'Tiene vitamina A, B1, B2 y vitamina C', '8.jpeg'),
(9, 'Ciruela', 'Son ricas en vitaminas C, K y E, así como en provitamina A en forma de carotenos', '9.jpeg'),
(10, 'Melon', 'Aporta agua, vitaminas A, B, C y E, ácido fólico, fibra, además de minerales como calcio, hierro y potasio', '10.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productores`
--

CREATE TABLE `productores` (
  `id` int(11) NOT NULL,
  `productor` varchar(50) NOT NULL,
  `epoca_cosecha` varchar(50) NOT NULL,
  `consumo_persona` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productores`
--

INSERT INTO `productores` (`id`, `productor`, `epoca_cosecha`, `consumo_persona`) VALUES
(1, 'Jujuy, Salta, Tucumán, Catamarca, Formosa, Misione', 'Comienzo a finales del mes de septiembre y se prol', '13,2 kg/hab/año'),
(2, 'Formosa (50,5%), Salta (47,7%) y Jujuy (1,8%)', 'agosto a abril', '12 kg por habitante'),
(3, 'Río Negro', 'De la primera semana de febrero a la tercera seman', '5,6 kilos por persona'),
(4, 'Misiones ', 'octubre a diciembre', '6 kg por persona'),
(5, 'Río Negro', 'Durante todo el año', '3,5 kg por persona'),
(6, 'Tucumán concentra el 78% ', 'Entre los meses de mayo y septiembre', '3 kilos de limones por habitante por año'),
(7, 'La provincia de San Juan produce el 90 % del volum', 'Entre enero y febrero', '23,8 litros por habitante'),
(8, 'Mendoza concentra el 90% de la producción del país', 'Entre enero y primeros días de abril', '3 kg por persona'),
(9, 'La provincia de Mendoza, con un 58,2%', 'Febrero y se puede extender hasta el mes de marzo', '2,5 kg por persona'),
(10, 'La provincia que concentra la mayor superficie cul', 'Primera semana de abril', '3,5 kg por persona');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `frutas`
--
ALTER TABLE `frutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productores`
--
ALTER TABLE `productores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `frutas`
--
ALTER TABLE `frutas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productores`
--
ALTER TABLE `productores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
