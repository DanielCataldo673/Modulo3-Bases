-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 20:39:53
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
-- Base de datos: `concesionario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos_usados`
--

CREATE TABLE `autos_usados` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `anio_fabricacion` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `tipo_carroceria` varchar(50) NOT NULL,
  `numero_puertas` int(11) NOT NULL,
  `numero_asientos` int(11) NOT NULL,
  `tipo_combustible` varchar(50) NOT NULL,
  `transmicion` varchar(50) NOT NULL,
  `motor` varchar(50) NOT NULL,
  `kilometraje` varchar(50) NOT NULL,
  `historial_mantenimiento` varchar(50) NOT NULL,
  `propietario_actual` varchar(50) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_registro` date NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autos_usados`
--

INSERT INTO `autos_usados` (`id`, `marca`, `modelo`, `anio_fabricacion`, `color`, `tipo_carroceria`, `numero_puertas`, `numero_asientos`, `tipo_combustible`, `transmicion`, `motor`, `kilometraje`, `historial_mantenimiento`, `propietario_actual`, `precio`, `estado`, `fecha_registro`, `imagen`) VALUES
(1, 'Chevrolet ', 'Cruze ', 2016, 'Negro', 'Sedán', 5, 4, 'Nafta', 'Manual', '1.4 LTZ 153CV', '16000 km', 'Cambio puerta baul', 'Pedro Gonzalez', 11060000, 'Usado', '2016-10-02', '1.webp'),
(2, 'Toyota ', 'Yaris ', 2022, 'Azul', 'Sedán', 5, 4, 'Nafta', 'Manual', '1.5 107CV XLS', '8500 km', 'Puerta del acompañante ', 'Laura Serch', 15600000, 'Usado', '2022-08-16', '2.webp'),
(3, 'Fiat ', 'Cronos', 2021, 'Blanco', 'Sedán', 5, 4, 'Nafta', 'Manual', '1.3 ', '14000 km', 'Capo', 'Fernando Lugano', 12256000, 'Usado', '2021-12-03', '3.webp'),
(4, 'Nissan ', 'Sentra ', 2022, 'Gris', 'Sedán', 5, 4, 'Nafta', 'Manual', '2.0 SR ', '10000 km', 'Tren Delantero', 'Lucas Verdi', 2350000, 'Usado', '2022-09-21', '4.webp'),
(5, 'Ford ', 'Ranger', 2020, 'Negro', 'Pickup ', 4, 4, 'Diesel', 'Manual', '3.2 CD XLT TDCI 200CV ', '25000 km', 'Carburador', 'Daniel Lopez', 26300000, 'Usado', '2020-06-04', '5.webp'),
(6, 'Renault', 'Captur ', 2017, 'Blanco', 'Suv', 5, 4, 'Nafta', 'Manual', '2.0 INTENS MT 4X2', '23000 km', 'Cambio puerta chofer', 'Pedro Gonta', 11060000, 'Usado', '2017-10-18', '6.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos_usados`
--
ALTER TABLE `autos_usados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autos_usados`
--
ALTER TABLE `autos_usados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
