-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-08-2023 a las 23:39:43
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
-- Base de datos: `club`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportes`
--

CREATE TABLE `deportes` (
  `id_deportes` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `grupal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `deportes`
--

INSERT INTO `deportes` (`id_deportes`, `nombre`, `descripcion`, `grupal`) VALUES
(1, 'Futbol', 'El fútbol, futbol​ o balompié3 (del inglés británico football) es un deporte de equipo jugado entre dos conjuntos de once jugadores cada uno, mientras los árbitros se ocupan de que las normas se cumplan correctamente. Es, ampliamente, considerado el deporte más popular del mundo, pues lo practican unas 270 millones de personas.', 'si'),
(2, 'Tenis', 'El tenis, también llamado tenis de campo,2 es un deporte que se disputa entre dos jugadores (individuales) o entre dos parejas (dobles).\r\n\r\nEl objetivo principal del juego es lanzar una pelota golpeándola con la raqueta de modo que rebote en el otro lado pasando la red dentro de los límites permitidos del campo del rival, procurando que este no pueda devolverla para conseguir un segundo rebote en el suelo y darle un punto.\r\n\r\n', 'si'),
(3, 'Boxeo', 'El boxeo (del inglés boxing), también denominado en ocasiones boxeo inglés, boxeo irlandés o pugilismo y comúnmente conocido como box, es un deporte de combate y un arte marcial en el que dos contrincantes luchan utilizando únicamente sus puños con guantes, golpeando a su adversario de la cintura hacia arriba, dentro de un cuadrilátero especialmente diseñado para tal fin; la pelea se lleva a cabo en breves secuencias de lucha denominadas asaltos y de acuerdo a un preciso reglamento, el cual regula categorías de pesos y duración del encuentro, entre otros aspectos.\r\n\r\n', 'no'),
(4, 'Golf', 'El golf es un deporte cuyo objetivo es introducir una bola en los hoyos que están distribuidos en el campo con el menor número de golpes, utilizando para cada tipo de golpe uno de entre un conjunto de palos ligeramente diferentes entre sí, ya que la cabeza del palo tiene ángulos distintos, al igual que las varillas tienen longitudes diferentes. A menor número de grados de inclinación, mayor longitud de la varilla y, por lo tanto, más distancia. Como máximo se pueden llevar catorce palos y como mínimo cinco palos. Al que practica el golf se le denomina golfista.', 'no'),
(5, 'Baloncesto', 'El baloncesto2 (del inglés basketball; de basket, \'canasta\', y ball, \'pelota\'), también conocido como básquetbol, basquetbol o simplemente básquet,​ es un deporte de equipo, jugado entre dos conjuntos de cinco jugadores cada uno durante cuatro períodos o cuartos de diez minutos cada uno ―doce minutos cada cuarto en la NBA―. El objetivo del equipo es anotar puntos introduciendo un balón por la canasta, un aro a 3,05 metros sobre la superficie de la pista de juego del que cuelga una red. La puntuación por cada canasta o cesta es de dos o tres puntos, dependiendo de la posición desde la que se efectúa el tiro a canasta, o de uno, si se trata de un tiro libre por una falta de un jugador contrario. El equipo ganador es el que obtiene el mayor número de puntos.\r\n\r\n', 'si'),
(6, 'Rugby', 'El rugby es un deporte de evasión y contacto —con excepción de la modalidad de rugby sin contacto—, en equipo, nacido en Inglaterra. Fue en ese país donde tomó su nombre a partir de las reglas del fútbol elaboradas en el colegio de la ciudad de Rugby (Rugby School) en el siglo xix.\r\n\r\n', 'si'),
(7, 'Balonmano', 'El balonmano, hándbol o handball (en inglés), es un deporte de pelota en el que se enfrentan dos equipos y se caracteriza por transportar la pelota con las manos. Cada equipo se compone de 7 jugadores (6 de campo y un portero), pudiendo el equipo contar con otros 7 jugadores (o menos, o ninguno) y hasta 9 reservas en competiciones oficiales que pueden intercambiarse en cualquier momento con sus compañeros. Se juega en un campo rectangular, con una portería a cada lado del campo.', 'si'),
(8, 'Beisbol', 'El béisbol2 (del inglés baseball; de base, y ball, \'pelota\'), también llamado baseball o juego de pelota es un deporte de equipo jugado por dos equipos de nueve jugadores cada uno.\r\n\r\n', 'si'),
(9, 'Atletismo', 'El atletismo es un deporte que agrupa numerosas disciplinas. El término atletismo deriva de la palabra griega \"athlon\" que significa competencia o combate. En este conjunto de prácticas deportivas se busca superar a los adversarios en velocidad o en resistencia, ya sea en distancia o en mayor altura. Este deporte es considerado el deporte organizado más antiguo del mundo. La primera referencia histórica al atletismo se remonta al año 776 a. C. en Grecia, con una lista de los atletas ganadores de una competencia.\r\n\r\n', 'no'),
(10, 'Lucha grecorromana', 'La lucha grecorromana es un deporte en el cual cada participante intenta derrotar a su rival con llaves y proyecciones utilizando solo la parte superior del cuerpo. El objetivo consiste en ganar el combate haciendo caer al adversario al suelo y manteniendo sus dos hombros fijos sobre el tapiz o ganando por puntuación mediante la valoración de las técnicas y acciones conseguidas sobre el adversario. Está prohibido el uso activo de las piernas en el ataque, así como atacar las piernas del rival.\r\n\r\n', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id_inscripcion` int(11) NOT NULL,
  `fecha_de_inicio` date NOT NULL,
  `nivel` int(11) NOT NULL,
  `id_socios` int(11) NOT NULL,
  `id_deportes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripcion`
--

INSERT INTO `inscripcion` (`id_inscripcion`, `fecha_de_inicio`, `nivel`, `id_socios`, `id_deportes`) VALUES
(1, '2023-08-10', 1, 1, 1),
(2, '2023-08-01', 2, 2, 2),
(3, '2023-08-02', 1, 1, 9),
(4, '2023-08-05', 2, 2, 7),
(5, '2023-08-03', 3, 3, 3),
(6, '2023-08-05', 2, 3, 5),
(7, '2023-08-04', 1, 4, 2),
(8, '2023-08-02', 1, 5, 6),
(9, '2023-08-05', 2, 6, 7),
(10, '2023-08-09', 3, 7, 8),
(11, '2023-08-10', 1, 8, 4),
(12, '2023-08-03', 3, 9, 1),
(13, '2023-08-24', 3, 10, 10),
(14, '2023-08-03', 2, 11, 6),
(15, '2023-08-10', 1, 12, 2),
(16, '2023-08-01', 2, 13, 7),
(17, '2023-08-17', 1, 14, 4),
(18, '2023-08-02', 3, 15, 9),
(19, '2023-08-01', 2, 16, NULL),
(20, '2023-08-05', 1, 17, NULL),
(21, '2023-08-04', 2, 18, NULL),
(22, '2023-08-12', 1, 19, NULL),
(23, '2023-08-04', 1, 20, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `socios`
--

CREATE TABLE `socios` (
  `id_socios` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo_electronico` varchar(50) NOT NULL,
  `fecha_inscripcion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `socios`
--

INSERT INTO `socios` (`id_socios`, `nombre`, `apellido`, `fecha_nacimiento`, `direccion`, `telefono`, `correo_electronico`, `fecha_inscripcion`) VALUES
(1, 'Pedro', 'Contreras', '2015-08-04', 'soreda 123', 1123456780, 'pedrocontreras@gmail.com', '2023-08-03'),
(2, 'Ismael', 'Santos', '2013-08-09', 'soreda 435', 1132457891, 'ismaelsantos@gmail.com', '2023-08-05'),
(3, 'Daniel ', 'Jimenez', '2014-08-14', 'soreda 6753', 1123542378, 'danieljimenez@gmail.com', '2023-08-09'),
(4, 'Maria', 'Lozano', '2016-09-02', 'soreda 678', 1123098756, 'marialozano@gmail.com', '2023-08-03'),
(5, 'Lucas', 'Gonzalez', '2013-08-01', 'soreda 2345', 1123456789, 'lucasgonzalez@gmail.com', '2023-08-05'),
(6, 'Damian ', 'Lezcano', '2016-08-27', 'soreda 213', 1134562387, 'damianlezcano@gmail.com', '2015-05-13'),
(7, 'Federico', 'Vazquez', '2017-08-02', 'soreda 111', 1111678945, 'federicovazquez@gmail.com', '2013-08-09'),
(8, 'Valeria', 'Losa', '2015-08-04', 'soreda 1230', 1123456780, 'valerialosa@gmail.com', '2023-08-05'),
(9, 'Leila ', 'Cataldo', '2013-08-24', 'soreda 4354', 1132457891, 'leilacataldo@gmail.com', '2023-08-09'),
(10, 'Sandra', 'Segovia', '2013-09-06', 'soreda 6752', 1123542353, 'sandrasegovia@gmail.com', '2023-07-06'),
(11, 'Daniel', 'Obrero', '2014-09-12', 'soreda 6780', 1123098756, 'danielobrero@gmail.com', '2023-08-12'),
(12, 'Fernando', 'Valencia', '2017-08-05', 'soreda 456', 1123456709, 'fernandovalencia@gmail.com', '2023-08-10'),
(13, 'Juan', 'Varela', '2013-08-01', 'soreda 4567', 1154679812, 'juanvarela@gmail.com', '2023-08-10'),
(14, 'Donatto', 'Velez', '2014-08-02', 'soreda 6578', 1114567890, 'donattovelez@gmail.com', '2023-08-18'),
(15, 'Fernando', 'Alonzo', '2014-08-01', 'soreda 123', 1123456785, 'fernandoalonzo@gmail.com', '2023-08-02'),
(16, 'Venancio', 'Contreras', '2014-08-02', 'soreda 456', 1132457833, 'venanciocontreras@gmail.com', '2023-08-03'),
(17, 'Lorena', 'Lopez', '2013-08-02', 'soreda 67512', 1123542343, 'lorenalopez@gmail.com', '2023-08-17'),
(18, 'Sergio', 'Obregon', '2016-06-23', 'soreda 6788', 1123098751, 'sergioobregon@gmail.com', '2023-08-03'),
(19, 'Luis', 'Blanco', '2015-08-04', 'soreda 1245', 1123457689, 'luisblanco@gmail.com', '2023-08-02'),
(20, 'Carmen', 'Olivera', '2014-08-09', 'soreda 4567', 1123546709, 'carmenolivera@gmail.com', '2023-08-04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id_deportes`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD KEY `id_socios_deportes` (`id_socios`),
  ADD KEY `id_deportes_socios` (`id_deportes`);

--
-- Indices de la tabla `socios`
--
ALTER TABLE `socios`
  ADD PRIMARY KEY (`id_socios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deportes`
--
ALTER TABLE `deportes`
  MODIFY `id_deportes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `socios`
--
ALTER TABLE `socios`
  MODIFY `id_socios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `id_deportes_socios` FOREIGN KEY (`id_deportes`) REFERENCES `deportes` (`id_deportes`),
  ADD CONSTRAINT `id_socios_deportes` FOREIGN KEY (`id_socios`) REFERENCES `socios` (`id_socios`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
