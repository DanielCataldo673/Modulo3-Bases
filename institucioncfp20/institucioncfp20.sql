-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2023 a las 16:36:17
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
-- Base de datos: `institucioncfp20`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_civil` varchar(50) NOT NULL,
  `nota` int(11) DEFAULT NULL,
  `curso_inscripto` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `barrio`, `fecha_nacimiento`, `estado_civil`, `nota`, `curso_inscripto`, `correo`, `imagen`) VALUES
(2, 'Diego', 'Pianca', 'Nuñez', '1985-02-16', 'Soltero', NULL, 'Diseño Web 1', 'lopintepic@gmail.com', 'avatar.jpg'),
(3, 'Maria Teresa', 'Nuñez', 'Palermo', '1946-12-08', 'Viuda', NULL, 'Operador Informatico', 'mante1174@hotmail.com', 'avatarm.jpg'),
(4, 'Sandra Mariela', 'Segovia', 'Colegiales', '1965-08-24', 'Casada', 8, 'Operador Informatico', 'sandysegov37@gmail.com', 'avatarm.jpg'),
(5, 'Ingrid', 'Perez', 'Palermo', '1984-04-08', 'Soltera', NULL, 'Diseño Web 1', 'ingperez84@gmail.com', 'avatarm.jpg'),
(6, 'Maria Victoria', 'Ezzaui', 'Palermo', '1973-07-11', 'Soltera', NULL, 'Diseño Web 1', 'mariavezzaoui@gmail.com', 'avatarm.jpg'),
(7, 'Jorge Daniel', 'Cataldo', 'Colegiales', '1976-02-19', 'Casado', 10, 'Programación, Diseño Web 1, Testing', 'danielcataldo673@gmail.com', 'avatar.jpg'),
(8, 'Yeliza', 'Rojas', 'Villa Crespo', '1983-04-14', 'Soltera', NULL, 'Diseño Web 1', 'yeliyali@hotmail.com', 'avatarm.jpg'),
(9, 'Maximiliano', 'Gabelas Miño', 'Colegiales', '1987-08-01', 'Soltero', NULL, 'Diseño Web 1', 'maxigm87@gmail.com', 'avatar.jpg'),
(10, 'Jordana ', 'Gonzalez', 'Villa Crespo', '1990-02-13', 'Soltera', NULL, 'Diseño Web 1', 'gonzalez.jordana@gmail.com', 'avatarm.jpg'),
(11, 'Marcos Nehuen', 'Garcia', 'Orione', '2001-01-01', 'Soltero', 5, 'Programación', 'marcosgarcia56964@gmail.com', 'avatar.jpg'),
(12, 'Augusto Nicolas', 'Lorenzo Villalba', 'Chacarita', '1998-03-14', 'Soltero', 9, 'Programación', 'augustolorenzov@gmail.com', 'avatar.jpg'),
(13, 'Franco', 'Mongi', 'Colegiales', '2004-09-15', 'Soltero', 10, 'Programación', 'francomoncdm@gmail.com', 'avatar.jpg'),
(14, 'Juan Pablo', 'Sabater', 'Chacarita', '1970-08-09', 'Soltero', 8, 'Programación', 'jpm.sabat@gmail.com', 'avatar.jpg'),
(15, 'Lucas Valentin', 'Salicru', 'Parque Chas', '2005-02-11', 'Soltero', 5, 'Programación', 'salicrulucas487@gmail.com', 'avatar.jpg'),
(16, 'Ignacio', 'Seconi', 'Colegiales', '2004-12-11', 'Soltero', 9, 'Programación', 'houtmonkey@hotmail.com', 'avatar.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `barrio` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `apellido`, `cargo`, `fecha_nacimiento`, `barrio`, `imagen`) VALUES
(1, 'Barbara', 'Grabe', 'Jeja General de Taller', '1987-05-25', 'Caballito', 'avatarem.jpg'),
(2, 'Mercedes', 'Gallino', 'Secretaria Suplente', '1982-01-28', 'Flores', 'avatarem.jpg'),
(3, 'Pablo Gustavo', 'Bracamonte', 'Regente', '1978-12-28', 'Regente', 'avatarhe.png'),
(4, 'Federico', 'Mizrahi', 'Administrativo', '1980-12-14', 'Caballito', 'avatarhe.png'),
(5, 'Damian', 'Trajster', 'Profesor', '1985-10-29', 'San Martin', 'avatarhe.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
