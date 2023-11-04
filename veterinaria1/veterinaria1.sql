-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2023 a las 03:22:24
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
-- Base de datos: `veterinaria1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `especie` varchar(50) NOT NULL,
  `raza` varchar(50) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `id_propietario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `animal`
--

INSERT INTO `animal` (`id_animal`, `nombre`, `especie`, `raza`, `Fecha_Nacimiento`, `sexo`, `id_propietario`) VALUES
(1, 'Simba', 'Leon', 'Africano', '2019-08-03', 'Macho', 1),
(2, 'Camilo', 'Gato', 'Angora', '2013-08-07', 'Hembra', 1),
(3, 'Norma', 'Jirafa', 'reticulada ', '2016-08-10', 'Hembra', 2),
(4, 'Lola', 'Reptil', 'Cobra', '2015-08-05', 'Macho', 2),
(5, 'Luna', 'Perro', 'Mestizo', '2019-08-01', 'Hembra', 3),
(6, 'Pituca', 'Perro', 'Mestiza', '2014-08-12', 'Hembra', 4),
(7, 'Lucas', 'Aves', 'Cardenal', '2016-08-10', 'Macho', 5),
(8, 'Feca', 'Roedor', 'Raton Blanco', '2023-08-01', 'Hembra', 6),
(9, 'Manso', 'Perro', 'Boxer', '2023-08-03', 'Macho', 7),
(10, 'Pimienta', 'Gato', 'Angora', '2015-08-12', 'Macho', 8),
(11, 'Tutuca', 'Aves', 'Loro', '2014-08-16', 'Macho', 9),
(12, 'Lolo', 'Tortuga', 'De mar', '2020-08-01', 'Macho', 10),
(13, 'Rolo', 'Caballo', 'Percheron', '2013-08-22', 'Hembra', 11),
(14, 'Uma', 'Perro', 'Pastor Aleman', '2023-08-02', 'Hembra', 12),
(15, 'Ema', 'Gato', 'Mestizo', '2023-08-01', 'Hembra', 13),
(16, 'Fofo', 'Aves', 'Papagayo', '2014-08-15', 'Macho', 14),
(17, 'Rami', 'Reptil', 'Piton', '2016-08-24', 'Macho', 15),
(18, 'Balu', 'Oso', 'Polar', '2014-08-19', 'Macho', 16),
(19, 'Milo', 'Perro', 'Pekines', '2014-08-07', 'Macho', 17),
(20, 'Neta', 'Reptil', 'Culebra', '2021-08-12', 'Hembra', 18),
(21, 'Fresno', 'Caballo', 'Pinto', '2018-08-02', 'Macho', 19),
(22, 'Pedro', 'Equinos', 'Borrico', '2023-08-05', 'Macho', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `id_cita` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `notas` varchar(50) NOT NULL,
  `id_veterinario` int(11) NOT NULL,
  `id_animal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`id_cita`, `fecha`, `hora`, `notas`, `id_veterinario`, `id_animal`) VALUES
(1, '2023-08-31', '11:32:11', 'Aritmia', 3, 1),
(2, '2023-08-30', '16:27:11', 'Control', 2, 2),
(3, '2023-08-29', '21:27:11', 'Presion', 1, 3),
(4, '2023-09-02', '21:27:11', 'Control', 3, 4),
(5, '2023-09-15', '21:27:11', 'Seguera parcial', 1, 5),
(6, '2023-09-01', '21:27:11', 'Reuma', 2, 6),
(7, '2023-10-06', '21:27:11', 'Control', 3, 7),
(8, '2023-09-09', '18:45:37', 'Control', 2, 8),
(9, '2023-09-16', '18:45:37', 'Huerfano, no amantado', 1, 9),
(10, '2023-08-28', '18:45:37', 'Operado hace 5 meses', 3, 10),
(11, '2023-08-27', '18:45:37', 'Control', 1, 11),
(12, '2023-08-26', '18:45:37', 'Fractura', 2, 12),
(13, '2023-08-29', '18:45:37', 'Alergias', 3, 13),
(14, '2023-10-06', '18:45:37', 'Control', 1, 14),
(15, '2023-09-08', '18:45:37', 'Comvulsiones', 2, 15),
(16, '2023-09-23', '18:45:37', 'Control', 3, 16),
(17, '2023-09-02', '18:45:37', 'Control', 1, 17),
(18, '2023-10-05', '18:45:37', 'Control', 2, 18),
(19, '2023-09-08', '18:45:37', 'Accidene autos', 3, 19),
(20, '2023-09-16', '18:45:37', 'Control', 2, 20),
(21, '2023-09-27', '18:45:37', 'Cataratas', 1, 21),
(22, '2023-08-31', '18:45:37', 'Tumor pata izquierda', 3, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `id_propietario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propietario`
--

INSERT INTO `propietario` (`id_propietario`, `nombre`, `apellido`, `nacionalidad`, `direccion`, `telefono`, `correo_electronico`) VALUES
(1, 'Luis', 'Alonzo', 'Uruguayo', 'soreda 123', '1123456788', 'luisalonzo@gmail.com'),
(2, 'Fernando', 'Fernandez', 'Argentina', 'soreda 1234', '1123456771', 'fernandofernandez@gmail.com'),
(3, 'Venancio', 'Contreras', 'Paraguayo', 'soreda 435', '1132457896', 'venanciocontreras@gmail.com'),
(4, 'Lorena', 'Lopez', 'Argentina', 'soreda 674', '1123542352', 'lorenalopez@gmail.com'),
(5, 'Sergio', 'Obregon', 'Venezolano', 'soreda 678', '1123098752', 'sergioobregon@gmail.com'),
(6, 'Luis', 'Hernandez', 'Colombiano', 'soreda 124', '1123457685', 'luishernandez@gmail.com'),
(7, 'Carmen', 'Olivera', 'Uruguaya', 'soreda 456', '1123546700', 'carmenolivera@gmail.com'),
(8, 'Pedro', 'Aimar', 'Argentina', 'Soreda 234', '1123456789', 'pedroaimar@gmail.com'),
(9, 'Alan', 'Pereyra', 'Brasileño', 'Soreda 567', '231234567890', 'alanpereyra@gmail.com'),
(10, 'Fernando', 'Cabrera', 'Ecuatoriano', 'Soreda 234', '1123457689', 'fernandocabrera@gmail.com'),
(11, 'Ariel', 'Gonzalez', 'Peruano', 'Soreda 109', '1124567567', 'arielgonzalez@gmail.com'),
(12, 'Leila', 'Cataldo', 'Tailandesa', 'Petraca 234', '1123678903', 'leilacataldo@gmail.com'),
(13, 'Sandra', 'Segovia', 'Uruguaya', 'Soreda 341', '1123456789', 'sandrasegovia@gmail.com'),
(14, 'Daniel', 'Cataldo', 'Uruguaya', 'Soreda 341', '1123456789', 'danielcataldo@gmail.com'),
(15, 'Felipe', 'Lanuara', 'Italiana', 'Soreda 21', '1123098765', 'felipelanuara@gmail.com'),
(16, 'Francisca', 'Liguori', 'Italiana', 'Soreda 21', '1123456789', 'franciscaliguori@gmail.com'),
(17, 'Teresa', 'Olivera', 'Uruguaya', 'Soreda 345', '1123456754', 'teresaolivera@gmail.com'),
(18, 'Teodoro', 'Segovia', 'Uruguaya', 'Soreda 32', '1123456712', 'teodorosegovia@gmail.com'),
(19, 'Juan', 'Calo', 'Española', 'soreda 378', '1123456781', 'juancalo@gmail.com'),
(20, 'Dora', 'Casas', 'Argentina', 'sorea785', '1123455412', 'doracasas@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamiento`
--

CREATE TABLE `tratamiento` (
  `id_tratamiento` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `costo` decimal(10,3) NOT NULL,
  `id_cita` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tratamiento`
--

INSERT INTO `tratamiento` (`id_tratamiento`, `nombre`, `descripcion`, `fecha`, `costo`, `id_cita`) VALUES
(1, 'Electrocardiograma', 'Latidos del corazon', '2023-08-26', 100000.000, 1),
(2, 'Radiografia', 'Rayos x de la zona afectada', '2023-08-30', 10000.000, 10),
(3, 'Analisis clinicos', 'analisis de sangre ,orina y materia', '2023-08-29', 5000.000, 9),
(4, 'Tomografia', 'scaneo de la zona afectada', '2023-09-08', 5000.000, 15),
(5, 'Yeso', 'tratamiento del lugar comprometido', '2023-08-26', 50000.000, 12),
(6, 'Vacunacion', 'Vacunas corespondientes a su especie y condicion', '2023-08-27', 20000.000, 7),
(7, 'Medicar por presion alta', 'Control semanal', '2023-08-30', 500.000, 3),
(8, 'Examen de vista', 'Examen ocular y medicacion', '2023-09-07', 1000.000, 5),
(9, 'Fisioterapia', '10 seciones', '2023-08-30', 25002.000, 6),
(10, 'Vacunacion', 'Vacuna contra la rabia', '2023-09-08', 5500.000, 14),
(11, 'Inyeccion', 'Antialergico', '2023-08-24', 15000.000, 13),
(12, 'Castracion', 'Por infeccion', '2023-08-28', 25000.000, 16),
(13, 'Examen de vista', 'Control por edad avanzada', '2023-08-08', 2500.000, 17),
(14, 'Vacunacion', 'Tetano', '2023-08-31', 25002.000, 18),
(15, 'Sacrificar', 'Mal estado de salud', '2023-08-27', 20008.000, 19),
(16, 'Amputar', 'Oreja por infeccion', '2023-08-29', 20000.000, 20),
(17, 'Operacion', 'Extraer cataratas', '2023-08-07', 100000.000, 21),
(18, 'Operacion', 'Extraer tumor', '2023-08-30', 10000.000, 22),
(19, 'Vacunacion', 'Pulgas', '2023-08-09', 25000.000, 8),
(20, 'Pedicura', 'Limar', '2023-08-20', 10000.000, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `veterinario`
--

CREATE TABLE `veterinario` (
  `id_veterinario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `veterinario`
--

INSERT INTO `veterinario` (`id_veterinario`, `nombre`, `especialidad`, `telefono`, `correo_electronico`) VALUES
(1, 'Sandra', 'Oftalmologia', '1123456780', 'sandraperros@gmail.com'),
(2, 'Leila', 'Traumatologia', '1132457833', 'leilafelinos@gmail.com'),
(3, 'Daniel', 'Anesteciologia', '1123542355', 'danielanestesiologia@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD KEY `propietario` (`id_propietario`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`id_cita`),
  ADD KEY `veterinario` (`id_veterinario`),
  ADD KEY `id_animal` (`id_animal`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`id_propietario`);

--
-- Indices de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD PRIMARY KEY (`id_tratamiento`),
  ADD KEY `cita` (`id_cita`);

--
-- Indices de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`id_veterinario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `cita`
--
ALTER TABLE `cita`
  MODIFY `id_cita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `propietario`
--
ALTER TABLE `propietario`
  MODIFY `id_propietario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  MODIFY `id_tratamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `id_veterinario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `propietario` FOREIGN KEY (`id_propietario`) REFERENCES `propietario` (`id_propietario`);

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`),
  ADD CONSTRAINT `veterinario` FOREIGN KEY (`id_veterinario`) REFERENCES `veterinario` (`id_veterinario`);

--
-- Filtros para la tabla `tratamiento`
--
ALTER TABLE `tratamiento`
  ADD CONSTRAINT `cita` FOREIGN KEY (`id_cita`) REFERENCES `cita` (`id_cita`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
