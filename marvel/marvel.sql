-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2023 a las 15:13:33
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
-- Base de datos: `marvel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `familia` varchar(50) NOT NULL,
  `afiliacion` varchar(50) NOT NULL,
  `poderes_habilidades` varchar(50) NOT NULL,
  `origen` varchar(100) NOT NULL,
  `historia_fondo` text NOT NULL,
  `enemigos` varchar(50) NOT NULL,
  `amigos_aliados` varchar(50) NOT NULL,
  `apariciones_notables` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `creadores` varchar(50) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `alias`, `descripcion`, `familia`, `afiliacion`, `poderes_habilidades`, `origen`, `historia_fondo`, `enemigos`, `amigos_aliados`, `apariciones_notables`, `fecha_creacion`, `creadores`, `imagen`) VALUES
(2, 'Spider-Man', 'Spidi', 'Científico, vigilante, profesor, fotógrafo, superhéroe. Fuerza, velocidad, durabilidad, agilidad, sentidos, reflejos, coordinación, equilibrio y resistencia sobrehumanos. Fisiología de la araña: Precognitiva capacidad de sentido arácnido, se aferra a la mayoría de las superficies sólidas y la capacidad de las redes.', 'Cónyuge	Mary Jane Watson', 'Advengers', 'Sentido Aracnido', 'Peter Parker es un adolescente como otro cualquiera. Vive con su tía May y su tío Ben, va al institu', 'Peter Benjamin Parker era el hijo de Richard Parker y Mary Fitzpatrick, dos agentes de SHIELD que se infiltraron en la organización de Albert Malik. ¿No te suena? Pues se trata de Red Skull, uno de los principales archienemigos del Capitán América, a quien pudimos ver custodiando la Gema del Alma durante La Guerra del Infinito. Pues bien, éste los descubrió y saboteó el avión donde viajaban los padres de Peter para que pareciese un accidente aéreo.Al quedarse huérfano, Peter se mudó al barrio neoyorkino de Queens para vivir con sus tíos Benjamin Parker y May Reilly.', '    Doctor Octopus - Otto Octavius.     Hombre de ', '    Capitán América.     Falcon.     Hawkeye.     ', 'Spider-Man y sus increibles amigos\' (1981)\r\n\'Spider-Man\' (1994)\r\n\'Spiderman Unlimited\' (1999)\r\n\'El e', '1962-08-01', 'Stan Lee, Steve Ditko', '1.jpeg'),
(3, 'Iron Man', 'El Hombre de Hierro', 'Iron Man puede volar y disparar rayos de energía con las manos y el pecho, es resistente a los daños y tiene una fuerza fenomenal. Usa sus poderes para proteger al mundo de villanos, terroristas e invasores. Anthony Edward \"Tony\" Stark es un multimillonario magnate empresarial y filántropo estadounidense, playboy e ingenioso científico, que sufrió una grave lesión en el pecho durante un secuestro en el Medio Oriente.', 'Padres	Howard Stark y Maria Stark (fallecidos)', 'Advengers', 'Repulsores de energía y misiles de proyección', 'Y con toda su inteligencia, Tony inventó una increíble armadura, que le valió el nombre de Iron Man.', 'Inicialmente, la creación de Iron Man fue inspirada en temas de la Guerra Fría, particularmente el papel de la tecnología y la industria estadounidenses en la lucha contra el comunismo.​ Las imaginaciones posteriores de Iron Man han pasado de estos motivos a los asuntos contemporáneos de la época,​ como el terrorismo. Tony Stark, quien nació bajo el nombre de Anthony Edward Stark y más tarde conoceremos como Iron Man, es el hijo del jefe de Industrias Stark, Howard Stark y su esposa Maria Stark. Sin lugar a dudas, Tony es un pequeño muy inteligente que ingresa al MIT a la edad de 15 años para estudiar ingeniería mecánica. Estos conocimientos luego los potencia con maestrías en ingeniería eléctrica y física. Después de que sus padres mueren en un accidente automovilístico, pasa a heredar la compañía que pertenecía a su padre.', 'El Mandarín', 'Thor, Hulk, Ojo de Halcón', 'La trilogía de Iron Man, basada en el personaje ficticio Iron Man de Marvel Comics del Universo cine', '1963-03-01', 'Stan Lee, Jack Kirby, Steve Ditko, Larry Lieber, D', '2.webp'),
(4, 'Capitana Marvel', 'Carol Danvers', 'La Capitana Carol Susan Jane Danvers es una ex piloto de la Fuerza Aérea de los Estados Unidos que, al destruir el Motor de velocidad de la luz fabricado por su mentora Mar-Vell, fue expuesta a la energía del Teseracto, obteniendo poderes cósmicos y fue raptada para servir al Imperio Kree.', 'Joe Danvers (padre) Marie Danvers (madre) ', 'Los Vengadores; S.W.O.R.D. Ultimates; S.H.I.E.L.D.', 'Fuerza sobrehumana, poder volar y absorción de ene', 'La Capitana Carol Susan Jane Danvers es una ex piloto de la Fuerza Aérea de los Estados Unidos que, ', 'La ex piloto y agente de inteligencia de la Fuerza Aérea, Carol Danvers, persiguió su sueño de explorar el espacio como empleada de la NASA, pero su vida cambió para siempre cuando se transformó accidentalmente en un híbrido humano-Kree con poderes extraordinarios.\r\n\r\nAhora Carol es la más reciente guerrera en abrazar el manto de Capitana Marvel, quien ha tomado su lugar como uno de los héroes más poderosos del mundo.', 'Starforce (Primera aparición) Comandante Yon-Rogg ', ' Araña; Spider-Woman; Jessica Jones; Los Vengadore', 'Hasta 2021, el personaje apareció en dos películas, Captain Marvel (2019) y Avengers: Endgame (2019)', '1963-03-01', ' Roy Thomas, Gene Colan', '3.jpg'),
(5, 'Thor', 'Dios del Trueno', 'Thor es un superhéroe ficticio que aparece en los cómics estadounidenses publicados por Marvel Comics. Es el dios del trueno asgardiano basado en la deidad homónima, del pueblo ficticio inspirado en el mundo de Asgard de la mitología nórdica.', 'Odín (Padre)', 'Advengers', '    Fuerza sobrehumana, resistencia, durabilidad, ', 'Thor es el hijo de Odín, señor de los dioses de Asgard, y de Jord, que también es conocida como Gea,', 'Odín, el padre de Thor, decide colocar a Thor, sin recuerdos de la divinidad, en el cuerpo y los recuerdos de un estudiante de medicina humana existente, parcialmente discapacitado, Donald Blake.\r\n\r\nYa siendo médico y de vacaciones en Noruega, Donald presencia la llegada de una exploración alienígena. Este huye de los extraterrestres a una cueva y descubre el martillo de Thor, Mjolnir (de apariencia como un bastón) y golpearlo contra una roca, se transforma en el dios del trueno.\r\n\r\nUna vez derrota a los alienígenas, Thor comparte una doble vida con su alter ego. Este trata a los enfermos en una práctica privada con la enfermera y actual pareja Jane Foster, y defiende a la humanidad del mal.', 'La Mano, Laufey, Malekith el Maldito, Surtur', 'Balder: El mejor amigo de Thor, protege y ayuda a ', '    Thor (2011) ...\r\n    Los Vengadores (2012) ...\r\n    Thor: El mundo oscuro (2013) ...\r\n    Vengad', '1962-08-01', 'Stan Lee, Jack Kirby, Larry Lieber', '4.jpg'),
(6, 'Hulk', 'Hombre Verde', 'Hulk es un superhéroe ficticio que apareció por primera vez en los populares cómics de la Marvel en 1962. Siempre se le representa bajo una forma humanoide de piel verde capaz de usar una fuerza, resistencia y velocidad sobrehumanas y casi ilimitadas.', ' Betty Ross (Pareja)', 'Los Vengadores Los Defensores Los 4 Fantásticos​', '    Súper fuerza. Esta conlleva por defecto: Súper', 'Después de una exposición accidental a los rayos gamma durante la detonación de una bomba experiment', 'La primera (y más famosa) persona en utilizar el apodo de Hulk fue Bruce Banner, un científico que estuvo expuesto a cantidades extremas de radiación gamma que alteró la estructura de su ADN y provocó que se convirtiera en un monstruo gigante de increíble poder cada vez que se enfada.', 'Wolverine, Deadpool, Rhino, Juggernaut, Graviton, ', '4 Fantasticos', '    Los Vengadores (2012)\r\n    Vengadores: Era de Ultrón (2015)\r\n    Thor: Ragnarok (2017)\r\n    Aven', '1962-05-02', ' Stan Lee, Jack Kirby', '5.jpg'),
(7, 'Wolverine', 'Logan', 'Es un mutante que posee sentidos afinados a los animales, capacidades físicas mejoradas, poderosa capacidad de regeneración conocida como un factor de curación, y tres garras retráctiles en cada mano. Wolverine ha sido representado de diversas formas como miembro de los X-Men, Alpha Flight, Fuerza-X y Los Vengadores.', 'Thomas Logan (padre biológico, fallecido) Elizabet', 'X-Men, Alpha Flight, Fuerza-X y Los Vengadores.', 'Sentidos afinados a los animales, capacidades físi', 'Como resultado de tener sus huesos y garras con adamantium, la mutación natural de Wolverine, que lo', 'Wolverine fue el tercer mutante conocido en nacer, después de su medio hermano Dientes de Sable y siendo el primero Apocalipsis. Logan es el líder de los X-Men que perdió su memoria por culpa del programa Arma X y desde entonces ha tratado de recuperarla integrándose al grupo de los X-Men dirigido por el Profesor', 'Magneto, Dientes de Sable, Samurái de Plata', 'Charles Xavier, X-Men, Yukio, Spider-Man, The Puni', '    X-Men Origins: Wolverine (2009)\r\n    The Wolverine (2013)\r\n    Logan (2017)', '1974-10-03', ' Chris Claremont, John Romita Sr., Roy Thomas, Len', '6.jpg'),
(8, 'Capitán América', 'Steve Rogers', 'El Capitán América, cuyo nombre real es Steven \"Steve\" Grant Rogers, es un superhéroe ficticio que aparece en los cómics estadounidenses publicados por Marvel Comics.', 'Parejas: Sharon Carter, Peggy Carter', 'Los Vengadores S.H.I.E.L.D.', 'Sentidos, agilidad, velocidad y fuerza sobrehumana', 'Capitán América obtuvo sus poderes al recibir el suero del Supersoldado. Steve Rogers no se quedó de', 'Steve Rogers nació durante la Depresión y creció, convirtiéndose en un joven débil en una familia pobre. Su padre murió cuando él era un niño; su madre, durante la adolescencia de Steve. Horrorizado ante un noticiario que mostraba a los nazis en Europa, Rogers intentó alistarse en el ejército.', ' Cráneo Rojo, Batroc el saltador, Barón Zemo', 'Hombre de Hierro, Hombre Araña, Bucky Barnes, Viud', '    Capitán América: El primer vengador.\r\n    Capitán América: El Soldado del Invierno.\r\n    Capitán', '1941-03-12', ' Jack Kirby, Joe Simon', '7.jpg'),
(9, 'Doctor Strange', ' Hechicero Supremo', 'Doctor Strange sirve como el Hechicero Supremo, el principal protector de la Tierra contra las amenazas mágicas y místicas. Inspirado en historias de magia negra y Chandu el Mago, Strange fue creado durante la edad de plata de los cómics para traer un tipo diferente de personajes y temas a Marvel.', 'Eugene Strange (padre, fallecido)', ' Los Vengadores, Illuminati, Nightstalkers, Hijos ', 'Teletransportación, generación de ilusiones, proye', 'Cuando la medicina moderna le falló, se embarcó en un viaje a Kamar-Taj en el Tíbet, donde fue entre', 'Alias Doctor Strange, fue el Hechicero Supremo de la Tierra-616. Strange fue una vez un brillante pero arrogante neurocirujano, hasta que un accidente de coche le dejó lisiadas las manos. Cuando la medicina moderna le falló, se embarcó en un viaje a Kamar-Taj en el Tíbet, donde fue entrenado por el Ancestral.', 'Dormammu, Pesadilla, Kaecilius', 'Wong , Él es el ayuda de cámara del Doctor Strange', 'Hechicero Supremo (2016), Thor: Ragnarok (2017),​ Avengers: Infinity War (2018),​ Avengers: Endgame ', '1963-07-09', ' Stan Lee, Steve Ditko', '8.jpg'),
(10, 'Black Widow', 'Natalie Rushman', 'Romanoff es representada como un experta espía y combatiente cuerpo a cuerpo, entrenada en la Habitación Roja desde la infancia para ser una asesina de la KGB. Esto la pone bajo el radar de S.H.I.E.L.D., y Clint Barton es enviado a matarla, pero en cambio le perdona la vida y la recluta para la organización.', 'Pareja(s): Daredevil; Steve Rogers; Ojo de Halcón;', ' Vengadores Secretos, Los Vengadores, Los Poderoso', '    Experta táctica, combatiente cuerpo a cuerpo y', 'Natasha nació en Rusia, creció durante la Guerra Fría y fue entrenada para ser una asesina a sangre ', 'Una peligrosa conspiración, relacionada con su pasado, persigue a Natasha Romanoff, también conocida como Viuda Negra. La agente tendrá que lidiar con las consecuencias de haber sido espía, así como con las relaciones rotas, para sobrevivir.', 'Barón Zemo, Hydra, Ultron, Justin Hammer', 'Capitán América, Falcon, Iron Man, Daredevi', '    Iron Man 2. ...\r\n    The Avengers. ...\r\n    Capitán América: The Winter Soldier. ...\r\n    Avenge', '1964-04-14', ' Stan Lee, Jae Lee, Don Heck, Paul Jenkins, Don Ri', '9.jpg'),
(11, 'Ciclope', 'Scott Summers', 'Cíclope es un mutante con la capacidad de proyectar potentes explosiones de fuerza a través de sus ojos. Es visualmente distintivo su visor de rubí de cuarzo, lo que le confiere el nombre clave de Cyclops (Cíclope).', 'Parejas: Jean Grey, Emma Frost, Madelyne Pryor', 'X-MEN', 'Capacidad de proyectar potentes explosiones de fue', 'Originalmente se creyó que esta habilidad provenía de las energías del ambiente (como la radiación s', 'Scott Summers nació con el increíble poder de generar poderosas ráfagas de fuerza de conmoción a través de sus ojos. Ahora educado por el Profesor Xavier él es el líder de los X-Men, un grupo de superseres mutantes que buscan una pacifica y armoniosa convivencia humano/mutante, en un mundo que los rechaza.', 'Mr. Siniestro', 'Fenix', 'X-Men, X-Men 2 y X-Men: The Last Stand', '1963-07-13', 'Stan Lee y el artista Jack Kirby', '10.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
