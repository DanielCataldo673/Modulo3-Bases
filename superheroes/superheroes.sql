-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-10-2023 a las 21:41:28
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
-- Base de datos: `superheroes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `peleas_ganadas` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `descripcion`, `peleas_ganadas`, `imagen`) VALUES
(1, 'Aquaman ', 'Aquaman   es un superhéroe que aparece en los cómics estadounidenses publicados por DC Comics. Creado por  Paul Norris y  Mort Weisinger', 678, 'aquaman.jpg'),
(2, 'Batman ', 'Batman (conocido inicialmente como The Bat-Man14​ y en español como el Hombre Murciélago) es un superhéroe ficticio de cómic  de la empresa DC comics\r\n\r\n', 1234, 'batman.jpg'),
(3, 'flash', 'Flash (conocido también como The Flash y traducido en español: Destello)(fecha de portada de enero de 1940 / mes de noviembre de 1939).', 489, 'flash.jpg'),
(4, 'Guason', 'Guason(Joker) — es un personaje creado por Bill Finger, Bob Kane y Jerry Robinson,7​8​9​  en abril de 1940, publicado por DC Comics.\r\nUno de los villanos.', 568, 'guason.jpg'),
(5, 'Cyborg', 'Cyborg (en español: Cíborg) (conocido Victor \"Vic\" Stone) un superhéroe ficticio que aparece en los cómics estadounidenses publicados por DC Comics.', 876, 'cyborg.jpg'),
(6, 'Luthor', 'Alexander Joseph \"Lex\" Luthor es un supervillano ficticio que aparece en los cómics americanos publicados por la empresa DC Comics. ', 568, 'luthor.jpg'),
(7, 'Mujer Maravilla', 'La Mujer Maravilla (en inglés: Wonder Woman) es una superheroína ficticia creada por William Moulton Marston para la editorial DC Comics. ', 1200, 'mujermaravilla.jpg'),
(8, 'Robin', ' El personaje Robin  fue creado originalmente por Bob Kane, Bill Finger y Jerry Robinson, para servir como contraparte menor del superhéroe Batman. ', 456, 'robin.jpg'),
(9, 'Shazam', 'Captain Marvel (traducido al español como Capitán Marvel o Capitán Maravilla), y desde el 2011 llamado Shazam publicado por dc comics', 789, 'shazam.jpg'),
(10, 'Superman', 'Superman (en español: Superhombre) es un superhéroe ficticio que apareció por primera vez en los cómics estadounidenses publicados por DC Comics.', 2345, 'superman.jpg');

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
