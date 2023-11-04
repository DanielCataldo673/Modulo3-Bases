-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2023 a las 16:05:52
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
-- Base de datos: `tienda_comic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_completo` varchar(256) NOT NULL,
  `biografia` text NOT NULL,
  `foto_perfil` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre_completo`, `biografia`, `foto_perfil`) VALUES
(1, 'Adrian Alphona', 'Adrian Alphona es un artista de cómics canadiense mejor conocido por su trabajo en Marvel Comics \'Runaways, que co-creó con el escritor Brian K. Vaughan.', ''),
(2, 'David Aja', 'David Aja es un dibujante de cómic español, nacido en Valladolid el 16 de abril de 1977. Trabaja para el mercado estadounidense.', ''),
(3, 'Javier Pulido', 'Javier Pulido es un dibujante de cómics español que trabaja principalmente para el mercado estadounidense. Sus obras notables incluyen Human Target, Robin: Year One, She-Hulk y The Amazing Spider-Man.', ''),
(4, 'John Buscema', 'John Buscema, nacido como Giovanni Natale Buscema, ​ fue un historietista estadounidense y uno de los mayores exponentes de Marvel Comics entre 1960 y 1980 contribuyendo a que el género se convirtiera en un icono de la cultura pop. Su hermano menor, Sal Buscema, es también dibujante de historietas.', ''),
(6, 'Jimmy Cheung', 'Jim Cheung es un dibujante de cómics británico, conocido por su trabajo en series como Scion, New Avengers: Illuminati, Young Avengers y Avengers: The Children\'s Crusade.', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comics`
--

CREATE TABLE `comics` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(256) NOT NULL,
  `personaje_principal_id` int(10) UNSIGNED NOT NULL,
  `serie_id` int(10) UNSIGNED NOT NULL,
  `guionista_id` int(10) UNSIGNED NOT NULL,
  `artista_id` int(10) UNSIGNED NOT NULL,
  `volumen` tinyint(4) NOT NULL,
  `numero` smallint(6) NOT NULL,
  `publicacion` date NOT NULL,
  `origen` enum('Estados Unidos','Argentina','Europa') NOT NULL,
  `editorial` varchar(256) NOT NULL,
  `bajada` text NOT NULL,
  `portada` varchar(256) NOT NULL,
  `precio` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comics`
--

INSERT INTO `comics` (`id`, `titulo`, `personaje_principal_id`, `serie_id`, `guionista_id`, `artista_id`, `volumen`, `numero`, `publicacion`, `origen`, `editorial`, `bajada`, `portada`, `precio`) VALUES
(1, 'No Es Normal. Parte 1 de 5: Metamorfosis', 1, 1, 1, 1, 3, 1, '2014-04-01', 'Estados Unidos', 'Marvel', 'Kamala Khan es una chica normal y corriente de Jersey City, hasta que, de repente, se ve dotada de dones extraordinarios. ?Pero qui?n es realmente la nueva Ms. Marvel? ?Adolescente? ?Musulmana? ?Inhumana?', 'mmv301.webp', 500.00),
(2, 'No Es Normal. Parte 2 de 5: Toda la Humanidad', 1, 1, 1, 1, 3, 2, '2014-05-01', 'Estados Unidos', 'Marvel', 'La vida ordinaria de Kamala Khan se ha convertido de repente en extraordinaria. ?Est? preparada para manejar estos extra?os e inmensos nuevos dones? ?O el peso del legado que tiene ante s? ser? demasiado para ella?', 'mmv302.webp', 500.00),
(3, 'No Es Normal. Parte 3 de 5: Entrada Lateral', 1, 1, 1, 1, 3, 3, '2014-06-01', 'Estados Unidos', 'Marvel', 'La totalmente nueva Ms. Marvel ya ha ganado fama internacional. Pero en el caso de Kamala, el poder de las estrellas viene acompa?ado de mucha... incomodidad.', 'mmv303.webp', 500.00),
(4, 'No Es Normal. Parte 4 de 5: Toque de Queda Pasado', 1, 1, 1, 1, 3, 4, '2014-07-01', 'Estados Unidos', 'Marvel', 'El ?xito de Marvel, Ms. Marvel, contin?a mientras Kamala Khan descubre los peligros de sus nuevos poderes pero tambi?n descubre un secreto detr?s de ellos.', 'mmv304.webp', 500.00),
(5, 'No Es Normal. Parte 5 de 5: Leyenda Urbana', 1, 1, 1, 1, 3, 5, '2014-08-01', 'Estados Unidos', 'Marvel', '?C?mo se convierte una joven de Jersey City en el pr?ximo superh?roe m?s grande? Kamala tampoco tiene idea. Pero ella viene por ti, Nueva York.', 'mmv305.webp', 500.00),
(6, 'Suerte: Parte 1 de 3', 2, 2, 2, 2, 4, 1, '2012-10-01', 'Estados Unidos', 'Marvel', 'Ojo de Halc?n, la estrella del ?xito de taquilla de este verano y h?roe hecho a s? mismo, lucha por la justicia. Con la ex-vengadora Kate Bishop a su lado, quiere demostrar que es uno de los h?roes m?s poderosos de la Tierra.', 'hev401.webp', 500.00),
(7, 'Suerte: Parte 2 de 3', 2, 2, 2, 2, 4, 2, '2012-11-01', 'Estados Unidos', 'Marvel', 'Lo que hay que saber: Fracci?n. Aja. Hawkeye. Kate Bishop. Coches. Armas. Robar a los ricos nunca se vio tan bien.', 'hev402.webp', 500.00),
(8, 'Suerte: Parte 3 de 3', 2, 2, 2, 2, 4, 3, '2012-12-01', 'Estados Unidos', 'Marvel', '?Qu? es el C?digo Vagabundo? Barton y Bishop significan el doble de Hawkeye... y el doble de problemas.', 'hev403.webp', 500.00),
(9, 'La Cinta: Parte 1 de 2', 2, 2, 2, 2, 4, 4, '2013-01-01', 'Estados Unidos', 'Marvel', ' ?No vas a creer lo que hay en La Cinta! S.H.I.E.L.D. recluta a Clint para interceptar pruebas incriminatorias, antes de que se convierta en el hombre m?s buscado del mundo.', 'hev404.webp', 500.00),
(10, 'La Cinta: Parte 2 de 2', 2, 2, 2, 2, 4, 5, '2013-02-01', 'Estados Unidos', 'Marvel', '?LA CINTA CONCLUYE! Alguien tiene un secreto mortal que cambiar? el curso de la relaci?n de Ojo de Halc?n con los Vengadores', 'hev405.webp', 500.00),
(11, 'La She-Hulk Vive', 3, 4, 3, 3, 1, 1, '1980-02-01', 'Estados Unidos', 'Marvel', 'Bruce Banner sube los escalones hasta un edificio de oficinas en Los ?ngeles. Bruce piensa para s? mismo que no puede soportarlo m?s. Dice que tarde o temprano la polic?a lo va a alcanzar.', 'sshv101.webp', 500.00),
(12, 'Movimiento', 3, 3, 4, 2, 3, 1, '2014-04-01', 'Estados Unidos', 'Marvel', 'Vengadora incondicional, miembro valioso de la FF, salvadora del mundo en m?s de una ocasi?n, tambi?n es una abogada asesina con un mont?n de t?tulos y respeto profesional. Un trago de agua fr?a y esmeralda de 2 metros de altura, es lo suficientemente dura como para noquear a Galactus de un solo golpe (?posiblemente?) y tiene un coraz?n m?s grande que la luna.', 'shv301.webp', 500.00),
(13, '...?Y?', 3, 3, 4, 2, 3, 2, '2014-05-01', 'Estados Unidos', 'Marvel', 'Jennifer abre su propia consulta, pero las cosas no van tan bien como le gustar?a. Un nuevo cliente llega a la ciudad... ?pero es un h?roe o un villano?', 'shv302.webp', 500.00),
(14, 'El Que No Quiso Ser Rey', 3, 3, 4, 2, 3, 3, '2014-06-01', 'Estados Unidos', 'Marvel', 'Cuando el hijo de Victor Von Doom pide la extradici?n, ?Jen Walters ir? hasta el fin del mundo por la Justicia!', 'shv303.webp', 500.00),
(15, 'El Celoso Defensor', 3, 3, 4, 2, 3, 4, '2014-07-01', 'Estados Unidos', 'Marvel', 'El nuevo cliente de Jen, Kristoff Vernard, ha sido secuestrado por su padre, DOCTOR DOOM. ?Qu? sabe su colega abogado MATT MURDOCK al respecto?', 'shv304.webp', 500.00),
(21, 'Ayudantes Parte 1', 74, 5, 5, 6, 1, 1, '2005-04-01', 'Estados Unidos', 'Marvel', 'El Capit?n Am?rica, Iron Man y Jessica Jones, que trabaja para el Daily Bugle, investigan a un grupo de j?venes h?roes que la prensa ha decidido llamar \"J?venes Vengadores\".\r\n\r\nIron Lad, Patriota, Asgardiano y Hulkling tienen problemas para actuar como un equipo coordinado, lo que causa que no puedan resolver una toma de rehenes durante la boda de la hija del millonario Derek Bishop acaban huyendo. Momentos despu?s llega Cassandra ?Cassie? Lang preguntando por el equipo de h?roes, la otra hija de Bishop, Kate, le informa de lo que pas? y ambas se dirigen a la vieja mansi?n de Los Vengadores a pedir ayuda.', '1666749018.webp', 1500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guionistas`
--

CREATE TABLE `guionistas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre_completo` varchar(256) NOT NULL,
  `biografia` text NOT NULL,
  `foto_perfil` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `guionistas`
--

INSERT INTO `guionistas` (`id`, `nombre_completo`, `biografia`, `foto_perfil`) VALUES
(1, 'G. Willow Wilson', 'Gwendolyn Willow Wilson (31 de agosto de 1982), conocida profesionalmente como G. Willow Wilson, es una escritora de cómics estadounidense, autora de prosa, ensayista, y periodista. Vivió en Egipto durante su veintena; su primera novela gráfica, Cairo (Vértigo, 2007), se ambienta allí y estuvo considerada como mejor novela gráfica para adolescentes tanto por la American Library Association como por la School Library Journal. Su cómic Air fue nominado para el Premio Eisner, y su primera novela, Alif el invisible, ganó el World Fantasy Award de 2013.', 'fotoGenerica.png'),
(2, 'Matt Fraction', 'Matt Fritchman, más conocido por el seudónimo de Matt Fraction, es un escritor de cómics estadounidense ganador del premio Eisner, conocido por su trabajo como el escritor de The Invincible Iron Man, The Immortal Iron Fist, Uncanny X-Men y Hawkeye para Marvel.', 'fotoGenerica.png'),
(3, 'Stan Lee', 'Stanley Martin Lieber, ​ más conocido como Stan Lee, fue un escritor y editor de cómics estadounidense, además de productor y actor ocasional de cine.\r\n\r\nEs principalmente conocido por haber cocreado personajes icónicos del mundo del cómic tales como Spider-Man, X-Men, Los 4 Fantásticos, Hulk, Iron Man, Thor, Daredevil, Doctor Strange, Black Panther, Ant-Man y Bruja Escarlata, entre otros muchos superhéroes, casi siempre acompañado de los dibujantes y escritores Steve Ditko y Jack Kirby. El trabajo de Stan Lee fue fundamental para expandir Marvel Comics, llevándola de una pequeña casa publicitaria a una gran corporación multimedia. Todavía hoy, los cómics de Marvel se distinguen por indicar siempre «Stan Lee presenta» en los rótulos de presentación. También tuvo un programa televisivo en History Channel en donde buscaba superhumanos «reales».', 'fotoGenerica.png'),
(4, 'Charles Soule', 'Charles Soule es un escritor de cómics, novelista, músico y abogado residente en Nueva York. Es mejor conocido por escribir Daredevil, She-Hulk, Death of Wolverine y varios libros y series de cómics.', 'fotoGenerica.png'),
(5, 'Allan Heinberg', 'Allan Heinberg es un guionista estadounidense responsable de la creación para Marvel Cómics de Jóvenes Vengadores, pero que se ha encargado con anterioridad de escribir y/o producir para televisión La cruda realidad, Cinco en familia, Sexo en la ciudad, Las chicas Gilmore, The O.C. y Anatomía de Grey.', 'fotoGenerica.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `alias` varchar(256) NOT NULL,
  `biografia` text NOT NULL,
  `creador` varchar(256) NOT NULL,
  `primera_aparicion` year(4) NOT NULL,
  `imagen` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `alias`, `biografia`, `creador`, `primera_aparicion`, `imagen`) VALUES
(1, 'Kamala Khan', 'Ms. Marvel', 'Ms. Marvel (Kamala Khan) es una superheroína pakistaní que aparece en los cómics publicados por Marvel Comics. Creada por los editores Sana Amanat y Stephen Wacker, la escritora G. Willow Wilson y el artista Adrian Alphona, Khan fue el primer personaje musulmán de Marvel en protagonizar su propio cómic. Debutó en Captain Marvel #14 (agosto de 2013), antes de protagonizar Ms. Marvel en febrero de 2014.', 'Sana Amanat y Stephen Wacker', '2013', '1666655316_.webp'),
(2, 'Clint Barton', 'Hawkeye', 'Un hábil tirador y arquero estadounidense, antiguo artista de circo y supervillano menor convertido en miembro de los Vengadores; \"Los héroes más poderosos de la Tierra\". Como miembro de los Vengadores siempre tuvo roces con el equipo, pero siempre volvió para luchar contra cualquier amenaza. Barton fue criado en el circo, entrenado por criminales y pasó de ser un joven problemático a uno de los mayores héroes de la Tierra. Conocido por el uso de un arco y una flecha como arma principal, su habilidad es tan grande que parece que nunca falla. Ha trabajado con la Viuda Negra, con quien desarrolló una fuerte amistad.', 'Stan Lee y Don Heck', '1964', '1666745128_hawkeye.webp'),
(3, 'Jennifer Walters', 'She-Hulk', 'Una abogada talentosa y prima de Bruce Banner, Hulk. Después de que un mafioso le disparó y la hirió gravemente, fue salvada por una transfusión de sangre de Bruce, y su irradiación gamma transformó a Jennifer en She-Hulk, dando inicio a su carrera aventurera.', 'Stan Lee y John Buscema', '1979', '1666745134_she-hulk.webp'),
(19, 'Matt Murdock', 'Daredevil', 'Daredevil cuya identidad secreta es Matt Murdock fue abandonado por su madre, y criado por su padre, el boxeador Jack \"Batallador\" Murdock, en la Cocina del Infierno (Barrio de Manhattan, Nueva York). Al darse cuenta de que las reglas son necesarias para evitar que las personas se comporten indebidamente, el joven Matt decidió estudiar Derecho. Sin embargo, al tratar de impedir un accidente, un camión derramó su carga radiactiva dejando ciego a Matt; sorprendentemente, la radiación incrementó sus cuatro sentidos restantes.\r\n\r\nBajo la tutela del maestro ciego de artes marciales, Stick, Matt dominó sus sentidos y se convirtió en un luchador formidable. Con el establecimiento de una pequeña firma de abogados en Nueva York junto a Foggy, Matt se comprometió a servir a la Ley como Matt Murdock y luchar contra los males más allá del alcance de ésta como el gladiador carmesí, Daredevil.', 'Stan Lee, Bill Everett', '1964', '1666655285_.webp'),
(20, 'Tony Stark', 'Iron Man', 'Tony Stark es un genio inventor y multimillonario industrial, que se enfunda en su armadura de tecnología punta para convertirse en el superhéroe Iron Man. Hijo adoptivo del fabricante de armas Howard Stark, Tony heredó la empresa de su familia a una edad temprana tras la muerte de sus padres. Mientras supervisaba una planta de fabricación en un país extranjero, Stark fue secuestrado por terroristas locales. En lugar de ceder a las exigencias de sus captores para construir armas para ellos, Stark creó una poderosa armadura para poder escapar. De vuelta a América, Stark mejoró la armadura y puso sus vastos recursos y su intelecto al servicio de la mejora del mundo como Iron Man.', 'Stan Lee', '1962', '1666655291_.webp'),
(21, 'Kate Bishop', 'Hawkeye', 'Katherine Bishop, o simplemente Kate Bishop, es una superheroína ficticia que aparece en los cómics estadounidenses publicados por Marvel Comics. Ella es un miembro de los Jóvenes Vengadores, un equipo de superhéroes en el Universo compartido de Marvel, el Universo Marvel. Ella es el tercer personaje y la primera mujer en tomar el nombre del Ojo de Halcón después de Clint Barton de Los Vengadores y Wyatt McDonald del Escuadrón Supremo. Su traje está inspirado en el primer traje del Ojo de Halcón y del Pájaro Burlón.', 'Allan Heinberg, Jim Cheung', '2005', '1666745073_hawkeye.webp'),
(68, 'Billy Kaplan', 'Wiccan', 'Reclutado para los Jóvenes Vengadores por Iron Lad, la historia de Wiccan incluye el descubrimiento de que él y su compañero héroe adolescente Speed son, de hecho, hermanos gemelos perdidos hace mucho tiempo, y que la pareja son los hijos de Scarlet Witch y su esposo Visión. Las historias más importantes para el personaje incluyen la búsqueda de él y su hermano de su madre desaparecida, aprender a dominar sus poderes y una relación continua con su compañero de equipo Hulkling.', 'Allan Heinberg, Jim Cheung', '1986', '1666653905_wiccan.webp'),
(74, 'Young Avengers', 'Jóvenes Vengadores', 'Jóvenes Vengadores es una colección de la editorial Marvel aparecida el mes de abril de 2005. Estos jóvenes bautizados como los sucesores de Los Vengadores pasan a formar parte del rico Universo Marvel, interactuando desde su creación con el resto de personajes de la editorial americana, compartiendo incluso cabecera durante la Guerra Civil con otros jóvenes con los que, además de compartir edad, comparten argumentos e historias similares (como la del Super Skrull), y nacimiento reciente: los Runaways.', 'Allan Heinberg, Jim Cheung', '2005', '1666748579.webp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes_x_comic`
--

CREATE TABLE `personajes_x_comic` (
  `id` int(10) UNSIGNED NOT NULL,
  `comic_id` int(10) UNSIGNED NOT NULL,
  `personaje_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes_x_comic`
--

INSERT INTO `personajes_x_comic` (`id`, `comic_id`, `personaje_id`) VALUES
(1, 12, 19),
(2, 12, 20),
(3, 6, 21),
(4, 12, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `historia` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`id`, `nombre`, `historia`) VALUES
(1, 'Ms. Marvel', ''),
(2, 'Hawkeye', ''),
(3, 'She-Hulk', ''),
(4, 'Savage She-Hulk', ''),
(5, 'Young Avengers', 'Jóvenes Vengadores es una colección de la editorial Marvel aparecida el mes de abril de 2005. Estos jóvenes bautizados como los sucesores de Los Vengadores pasan a formar parte del rico Universo Marvel, interactuando desde su creación con el resto de personajes de la editorial americana, compartiendo incluso cabecera durante la Guerra Civil con otros jóvenes con los que, además de compartir edad, comparten argumentos e historias similares (como la del Super Skrull), y nacimiento reciente: los Runaways.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(256) NOT NULL,
  `nombre_usuario` varchar(20) NOT NULL,
  `nombre_completo` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `rol` enum('superadmin','admin','usuario') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `nombre_usuario`, `nombre_completo`, `password`, `rol`) VALUES
(1, 'danielcataldo123@gmail.com', 'danielcataldogerente', 'Jorge Daniel Cataldo', '12345gerente', 'superadmin'),
(2, 'marielaolivera@gmail.com', 'marielaoliverasubger', 'Mariela Olivera', 'limonverde65', 'superadmin'),
(3, 'maximocataldo@gmail.com', 'maximocataldoadmin', 'Maximo Felipe Cataldo Segovia', 'circulorojo2024', 'admin'),
(4, 'sandrasegovia@gmail.com', 'sandrasegoviamarketi', 'Sandra Segovia', 'veloclaro2425', 'admin'),
(5, 'eusebiocataldo@gmail.com', 'eusebiocataldo2023', 'Eusebio Cataldo', 'estrelladeldsud1', 'usuario'),
(6, 'felipelanuara@gmail.com', 'felipelanuara2023', 'Felipe Lanuara', 'calabriaitalia6512', 'usuario'),
(7, 'norbertopicardo@gmail.com', 'norbertopicardo2023', 'Norberto Picardo', 'comic00003', 'usuario'),
(8, 'antoniolopez@gmail.com', 'antoniolopez2023', 'Antonio Lopez', 'comic00004', 'usuario'),
(9, 'carmelogonzalez@gmail.com', 'carmelogonzalez2023', 'Carmelo Gonzalez', 'comic00005', 'usuario'),
(10, 'naomifernandezcrespo@gmail.com', 'fernandezcrespo2023', 'Naomi Fernandez Crespo', 'comic00001', 'usuario'),
(11, 'franciscaliguori@gmail.com', 'franciscaliguori2023', 'Francisca Liguori', 'comic00002', 'usuario');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comics`
--
ALTER TABLE `comics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personaje_principal` (`personaje_principal_id`),
  ADD KEY `serie` (`serie_id`),
  ADD KEY `guionista` (`guionista_id`),
  ADD KEY `artista` (`artista_id`);

--
-- Indices de la tabla `guionistas`
--
ALTER TABLE `guionistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes_x_comic`
--
ALTER TABLE `personajes_x_comic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personaje` (`personaje_id`),
  ADD KEY `comic` (`comic_id`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `comics`
--
ALTER TABLE `comics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `guionistas`
--
ALTER TABLE `guionistas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `personajes_x_comic`
--
ALTER TABLE `personajes_x_comic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comics`
--
ALTER TABLE `comics`
  ADD CONSTRAINT `artista` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `guionista` FOREIGN KEY (`guionista_id`) REFERENCES `guionistas` (`id`),
  ADD CONSTRAINT `personaje_principal` FOREIGN KEY (`personaje_principal_id`) REFERENCES `personajes` (`id`),
  ADD CONSTRAINT `serie` FOREIGN KEY (`serie_id`) REFERENCES `series` (`id`);

--
-- Filtros para la tabla `personajes_x_comic`
--
ALTER TABLE `personajes_x_comic`
  ADD CONSTRAINT `comic` FOREIGN KEY (`comic_id`) REFERENCES `comics` (`id`),
  ADD CONSTRAINT `personaje` FOREIGN KEY (`personaje_id`) REFERENCES `personajes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
