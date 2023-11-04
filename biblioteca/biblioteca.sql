-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2023 a las 18:56:16
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id_generos` int(11) NOT NULL,
  `Generos_literarios` varchar(50) NOT NULL,
  `Editorial` varchar(50) NOT NULL,
  `Lugar_de_edición` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id_generos`, `Generos_literarios`, `Editorial`, `Lugar_de_edición`) VALUES
(1, 'Didáctico', 'Arbol', 'Quilmes, Buenos Aires, Argentina'),
(2, 'Infantil', 'Saga', 'Wilde, Buenos Aires'),
(3, 'Fantacia', 'Ferro', 'San Martin, Buenos Aires'),
(4, 'Aventura', 'Termo', 'Colegiales, CABA'),
(5, 'Lirico', 'Cordoba', 'Fadem, Punilla Cordoba');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libros` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Año_edición` varchar(50) NOT NULL,
  `Cantidad_páginas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libros`, `Titulo`, `Autor`, `Año_edición`, `Cantidad_páginas`) VALUES
(1, 'Poemas Antiguos', 'Pablo', '2000', '345'),
(2, 'Loro Azul', 'Franco', '1987', '490'),
(3, 'Salir Interior', 'Fernando', '2015', '234'),
(4, 'Fantacia Local', 'Daniel', '1987', '234'),
(5, 'Saltar Ahora', 'Jorge', '2019', '124');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro_genero`
--

CREATE TABLE `libro_genero` (
  `id_libro_genero` int(11) NOT NULL,
  `id_libros` int(11) NOT NULL,
  `id_generos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro_genero`
--

INSERT INTO `libro_genero` (`id_libro_genero`, `id_libros`, `id_generos`) VALUES
(1, 1, 5),
(2, 2, 2),
(3, 3, 4),
(4, 4, 1),
(5, 5, 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_generos`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libros`);

--
-- Indices de la tabla `libro_genero`
--
ALTER TABLE `libro_genero`
  ADD PRIMARY KEY (`id_libro_genero`),
  ADD KEY `id_generos` (`id_generos`),
  ADD KEY `id_libros` (`id_libros`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id_generos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `libro_genero`
--
ALTER TABLE `libro_genero`
  MODIFY `id_libro_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro_genero`
--
ALTER TABLE `libro_genero`
  ADD CONSTRAINT `libro_genero_ibfk_1` FOREIGN KEY (`id_generos`) REFERENCES `generos` (`id_generos`),
  ADD CONSTRAINT `libro_genero_ibfk_2` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`id_libros`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
