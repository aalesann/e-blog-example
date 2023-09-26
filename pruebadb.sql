-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2023 a las 22:00:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebadb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` datetime NOT NULL,
  `url_imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `titulo`, `descripcion`, `fecha`, `url_imagen`) VALUES
(2, 'Otro título', 'Otra descripción', '2023-09-14 00:00:00', 'https://png.pngtree.com/thumb_back/fw800/background/20230408/pngtree-travel-around-the-world-background-image_2169513.jpg'),
(3, 'Otra Publicacion', 'Descripción Nueva', '2023-09-30 00:00:00', 'https://png.pngtree.com/thumb_back/fw800/background/20230408/pngtree-travel-around-the-world-background-image_2169513.jpg'),
(5, 'Nuevo titulo', 'Nueva descripción', '2023-09-11 00:00:00', 'https://www.repsol.com/content/dam/repsol-corporate/es/sostenibilidad/naturaleza%20bosque%20y%20lago.jpg.transform/rp-rendition-md/image.jpg'),
(6, 'titulo', 'desc', '2023-09-11 00:00:00', 'https://www.repsol.com/content/dam/repsol-corporate/es/sostenibilidad/naturaleza%20bosque%20y%20lago.jpg.transform/rp-rendition-md/image.jpg'),
(8, 'TITULO NUEVO', 'DESCRIPCION NUEVA ---', '2023-09-11 00:00:00', 'https://www.repsol.com/content/dam/repsol-corporate/es/sostenibilidad/naturaleza%20bosque%20y%20lago.jpg.transform/rp-rendition-md/image.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
