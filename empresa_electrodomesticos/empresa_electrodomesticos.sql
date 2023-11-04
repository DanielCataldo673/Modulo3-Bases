-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2023 a las 02:30:49
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
-- Base de datos: `empresa_electrodomesticos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `DNI` varchar(50) NOT NULL,
  `Telefono` varchar(50) NOT NULL,
  `Fecha_Nac` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `Nombre`, `Apellido`, `DNI`, `Telefono`, `Fecha_Nac`) VALUES
(1, 'Luis', 'Perez', '24654786', '1123457890', '2005-05-13'),
(2, 'Pedro', 'Gonzalez', '12345678', '1123457654', '2003-08-01'),
(3, 'Daniel', 'Lopez', '23456762', '1123456789', '2004-08-07'),
(4, 'Damian', 'Jerez', '23546780', '1123456789', '2004-08-13'),
(5, 'Lucas', 'Rodriguez', '32456789', '1523457683', '1994-03-03'),
(6, 'Damian', 'Loto', '23456789', '1123456784', '2005-08-20'),
(7, 'Maria', 'Tupe', '23456765', '1123457643', '2003-08-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `pedidos_id` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `productos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`pedidos_id`, `Numero`, `Fecha`, `cliente_id`, `productos_id`) VALUES
(1, 345, '2023-08-09', 1, 2),
(2, 346, '2023-08-09', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `productos_id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Precio` decimal(50,0) NOT NULL,
  `Cantidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`productos_id`, `Nombre`, `Precio`, `Cantidad`) VALUES
(1, 'tostadora', 10000, '10'),
(2, 'televisores', 60000, '20'),
(3, 'cocina', 100000, '32'),
(4, 'heladeras', 220000, '23'),
(5, 'ventiladores', 30000, '65'),
(6, 'tiro_balanceado', 100000, '12'),
(7, 'microondas', 45000, '34'),
(8, 'calefón', 67000, '32'),
(9, 'batidora', 32000, '10'),
(10, 'liuadora', 42000, '20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`pedidos_id`),
  ADD KEY `id_cliente` (`cliente_id`),
  ADD KEY `id_productos` (`productos_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`productos_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `pedidos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `id_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `id_productos` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`productos_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
