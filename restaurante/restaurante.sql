-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2023 a las 16:51:22
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
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`menu_id`, `producto`, `precio`, `stock`, `tipo`, `foto`) VALUES
(1, 'milanesa', 1800, 25, 'carne_roja', 'milanesa.jpg'),
(2, 'pollo', 1500, 35, 'carne_blanca', 'pollo.jpg'),
(3, 'ravioles', 1700, 45, 'pastas_rellenas', 'ravioles.jpg'),
(4, 'canelones', 2500, 30, 'pastas_rellenas', 'canelones.jpg'),
(5, 'fideos', 1200, 50, 'pastas', 'fideos.jpg'),
(6, 'flan', 1000, 40, 'postres', 'flan.jpg'),
(7, 'helado', 1000, 60, 'postres', 'helado.jpg'),
(8, 'tortas', 2500, 41, 'pasteleria', 'tortas.jpg'),
(9, 'cafe', 600, 500, 'bebidas_calientes', 'cafe.jpg'),
(10, 'fernet', 1300, 60, 'aperitivos', 'fernet.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `mesas_id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `reservado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`mesas_id`, `numero`, `reservado`) VALUES
(1, 1, 'si'),
(2, 2, 'no'),
(3, 3, 'si'),
(4, 4, 'si'),
(5, 5, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `promociones_id` int(11) NOT NULL,
  `descuento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`promociones_id`, `descuento`) VALUES
(1, '10%'),
(2, '15%'),
(3, '25%'),
(4, '30%'),
(5, '50%');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `first_name`, `nickname`, `password`, `email`) VALUES
(1, 'Lucas', 'lucas_pomo', '1234', 'lucaspomo@gmail.com'),
(2, 'Daniel', 'daniel_extra', '12345', 'danielextra@gmail.com'),
(3, 'Fernando', 'fernando_auto', '12345', 'fernandoauto@gmail.com'),
(4, 'Juan', 'juan_laso', '1324', 'juanlaso@gmail.com'),
(5, 'Diego', 'diego_diez', '101010', 'diegodiez@gmail.com'),
(6, 'Walter', 'walter_cable', '131214', 'waltercable@gmail.com'),
(7, 'Cristian', 'cristian_banco', '206123', 'cristianbanco@gmail.com'),
(8, 'Patricio', 'patricio_segba', '547123', 'patriciosegba@gmail.com'),
(9, 'Ricardo', 'ricardo_jefe', '215804', 'ricardojefe@gmail.com'),
(10, 'Sandra', 'sandra_sandy', '131908', 'sandrasandy@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` int(11) NOT NULL,
  `horario` time NOT NULL,
  `cantidad` int(11) NOT NULL,
  `comensales` int(11) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`venta_id`, `fecha`, `total`, `horario`, `cantidad`, `comensales`, `estado`) VALUES
(1, '2023-08-01', 16000, '10:17:37', 6, 5, 'En preparacion'),
(2, '2023-08-05', 5500, '09:15:40', 5, 3, 'Despachado'),
(3, '2023-08-02', 50000, '09:15:40', 8, 7, 'Despachado'),
(4, '2023-08-15', 10000, '10:17:37', 4, 2, 'En preparacion'),
(5, '2023-08-02', 5000, '10:17:37', 2, 1, 'Despachado'),
(6, '2023-08-30', 5600, '10:17:37', 4, 2, 'Despachado'),
(7, '2023-08-16', 19000, '10:17:37', 4, 2, 'Despachado'),
(8, '2023-08-24', 25000, '10:17:37', 6, 3, 'En preparacion'),
(9, '2023-08-17', 30000, '15:17:37', 8, 4, 'Despachado'),
(10, '2023-08-31', 56000, '13:17:37', 12, 4, 'Despachado');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`mesas_id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`promociones_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `mesas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `promociones_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
