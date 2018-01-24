-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-01-2018 a las 01:53:39
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `popcorn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nombre` varchar(18) NOT NULL,
  `categoria_imagen` varchar(50) NOT NULL,
  `categoria_descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_imagen`, `categoria_descripcion`) VALUES
(1, 'Accion', 'img/Accion_s.jpg', 'Las mejores peliculas de accion para una tarde entretenida'),
(2, 'Terror', 'img/Terror_s.jpg', 'Para disfrutar en una noche junto a tu pareja'),
(3, 'Comedia', 'img/Comedia_s.jpg', 'Para morirte de la risa con estas divertidas peliculas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `pelicula_id` int(11) NOT NULL,
  `pelicula_nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pelicula_descripcion` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `pelicula_urLimagen_p` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pelicula_urLimagen_s` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pelicula_categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`pelicula_id`, `pelicula_nombre`, `pelicula_descripcion`, `pelicula_urLimagen_p`, `pelicula_urLimagen_s`, `pelicula_categoria_id`) VALUES
(1, 'Rapidos y Furiosos 8', 'Con Dom y Letty de luna de miel, Brian y Mia fuera del juego y el resto de la pandilla exonerada de todo cargo, el equipo está instalado en una vida aparentemente normal. Pero cuando una misteriosa mujer (Theron) seduce a Dom (Diesel) para regresar nuevamente al mundo del crimen, se ve incapaz de rechazar la oportunidad, traicionando así a todo el mundo cercano a él. A partir de ese momento todos ', 'img/RyFurioso_p.jpg', 'img/RyFurioso_s.jpg', 1),
(2, 'it', 'Cuando empiezan a desparecer niños en el pueblo de Derry (Maine), un pandilla de amigos lidia con sus mayores miedos al enfrentarse a un malvado payaso llamado Pennywise, cuya historia de asesinatos y violencia data de siglos. Adaptación cinematográfica de la conocida novela de Stephen King “It”', 'img/it_p.jpg', 'img/it_s.jpg', 2),
(3, 'deadPool', 'Basado en el anti-héroe menos convencional de la Marvel, Deadpool narra el origen de un ex-operativo de la fuerzas especiales llamado Wade Wilson, reconvertido a mercenario, y que tras ser sometido a un cruel experimento adquiere poderes de curación rápida, adoptando Wade entonces el alter ego de Deadpool. Armado con sus nuevas habilidades y un oscuro y retorcido sentido del humor, Deadpool intent', 'img/deadPool_p.jpg', 'img/deadPool_s.jpg', 3),
(4, 'chuky', 'Nica vive en el manicomio, convencida de que ella fue quien mató a su familia. Como parte de la terapia, su psiquiatra utilizará un muñeco cuya aparición coincidirá con una horrible cadena de asesinatos en el centro. Andy, protagonista de las primeras entregas, reaparecerá para ayudar a Nica, y Tiffany, la novia de Chucky, también se dejará caer por la que es la séptima entrega de la saga.', 'img/chuky_p.jpg', 'img/chuky_s.jpg', 2),
(5, 'Alicia en el Pais de las Maravillas', 'En una fiesta en casa de Lord Ascott, Alicia se encuentra con Ábsolem, que ahora es una mariposa monarca azul que ayuda a Alicia a regresar al fantástico mundo de Infratierra, donde encuentra a sus amigos: el Conejo Blanco, el Gato Sonriente, Lirón, la Liebre, los Tweedles y el Sombrerero Loco, pero éste, desafortunadamente, ya no es el mismo: ha perdido su “muchosidad”. Alicia tendrá entonces que', 'img/alicia_p.jpg', 'img/alicia_s.jpg', 3),
(6, 'Naked', 'Un chico es forzado a revivir una y otra vez las mismas horas de nervios que siente al casarse finalmente hasta que todo acabe saliendo bien, lo que resultará una difícil tarea, ya que despertará desnudo en un ascensor sin recordar nada de lo que ha ocurrido.', 'img/naked_p.jpg', 'img/naked_s.jpg', 3),
(7, 'Piratas del Caribe', 'El capitán Jack Sparrow se enfrentará a un grupo de piratas-fantasma comandados por una de sus viejas némesis, el terrorífico capitán Salazar, recién escapado del Triángulo de las Bermudas. La única posibilidad de Sparrow para salir con vida es encontrar el legendario Tridente de Poseidón, un poderoso artefacto que le da a su poseedor el control de los mares.', 'img/pirataCaribe_p.png', 'img/pirataCaribe_s.jpg', 1),
(8, 'Resident Evil', 'Chris Redfield, de la BSAA, cuenta con la ayuda del agente del Gobierno Leon S. Kennedy y la profesora Rebecca Chambers del Instituto Alexander de Biotecnología, para parar a un mercader de la muerte que busca venganza, y amenaza con extender un virus mortal por Nueva York.', 'img/residentEvil_p.jpg', 'img/residentEvil_s.jpg', 2),
(9, 'satanic', 'Sigue a una furgoneta llena de universitarias que están visitando lugares en donde se han realizado ritos satánicos en Los Ángeles. Su curiosidad las llevará hasta el propietario de una casa espeluznante, después a salvar a una chica sospechosa de haber contemplado un sacrificio humano. El culto del que escapó la joven será la clave para resolver los atroces crímenes detrás de unas practicas infer', 'img/satanic_p.jpg', 'img/satanic_s.jpg', 2),
(10, 'Transformers ', 'Dos especies en guerra: una de carne y hueso, la otra de metal. El Último Caballero rompe con el mito original de la franquicia de Transformers y redefine lo que significa ser un héroe. Humanos y Transformers están en guerra y Optimus Prime se ha ido. La llave para salvar nuestro futuro está enterrada en los secretos del pasado, en la historia oculta de los Transformers en la Tierra. Salvar a nues', 'img/transformers_p.jpg', 'img/transformers_s.jpg', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`pelicula_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `pelicula_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
