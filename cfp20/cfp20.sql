-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-08-2023 a las 03:26:47
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
-- Base de datos: `cfp20`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_alumnos` int(11) NOT NULL,
  `DNI` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Edad` int(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumnos`, `DNI`, `Nombre`, `Apellido`, `Edad`, `email`) VALUES
(1, '25023698', 'Cecilia', 'Gonzalez', 56, 'ceciliagonzalez@gmail.com'),
(2, '15846974', 'Leonardo', 'Perez', 65, 'leonardoperez@gmail.com'),
(3, '24895741', 'Leila', 'Fernandez', 49, 'leilafernandez@gmail.com'),
(4, '29635874', 'Lucas', 'Soria', 43, 'lucassoria@gmail.com'),
(5, '15963245', 'Nilda', 'Ortiz', 67, 'nildaortiz@gmail.com'),
(6, '25896314', 'Celia', 'Cruz', 46, 'celiacruz@gmail.com'),
(7, '7896542', 'Pedro', 'Bernal', 71, 'pedrobernal@gmail.com'),
(8, '15870258', 'Mabel', 'Fresneda', 69, 'mabelfresneda@gmail.com'),
(9, '26856214', 'Ismael', 'Blanco', 45, 'ismaelblanco@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `Area` varchar(50) NOT NULL,
  `Nombre_curso` varchar(50) NOT NULL,
  `turno` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `Area`, `Nombre_curso`, `turno`) VALUES
(1, 'Informatica', 'Trayecto_Programador', 'Vespertino'),
(2, 'Informatica', 'Trayecto_Edición_Audiovisual', 'Tarde'),
(3, 'Informatica', 'Instalacion_y_Soporte_de_Sistemas_Informaticos', 'Noche'),
(4, 'Informatica', 'Diseño_de_Páginas_Web', 'Mañana'),
(5, 'Informatica', 'Marketing_Digital', 'Noche'),
(6, 'Informatica', 'Tester_de_Aplicaciones', 'Tarde'),
(7, 'Informatica', 'Operador_de_Informatica', 'Noche'),
(8, 'Informatica', 'Operador/a_de_Herramientas_para_Presentaciones_Dig', 'Noche'),
(9, 'Informatica', 'Operador/a_en_Gestión_y_Procesamiento_de_Datos', 'Vespertino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

CREATE TABLE `inscripciones` (
  `id_inscripciones` int(11) NOT NULL,
  `id_alumnos` int(11) NOT NULL,
  `id_cursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id_inscripciones`, `id_alumnos`, `id_cursos`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 5),
(5, 5, 4),
(6, 6, 8),
(7, 7, 6),
(8, 8, 9),
(9, 9, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_alumnos`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`);

--
-- Indices de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD PRIMARY KEY (`id_inscripciones`),
  ADD KEY `alumnos_cur` (`id_alumnos`),
  ADD KEY `cursos_alum` (`id_cursos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id_alumnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_cursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  MODIFY `id_inscripciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripciones`
--
ALTER TABLE `inscripciones`
  ADD CONSTRAINT `alumnos_cur` FOREIGN KEY (`id_alumnos`) REFERENCES `alumnos` (`id_alumnos`),
  ADD CONSTRAINT `cursos_alum` FOREIGN KEY (`id_cursos`) REFERENCES `cursos` (`id_cursos`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
