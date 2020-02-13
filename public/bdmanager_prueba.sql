-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2020 a las 22:32:06
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdmanager_prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adjunto_noticia`
--

CREATE TABLE `adjunto_noticia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `noticia_id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `adjunto_noticia`
--

INSERT INTO `adjunto_noticia` (`id`, `noticia_id`, `tipo`, `titulo`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'imagen', 'rin-rin-1', 'rin-rin-1.jpg', '2020-01-10 15:56:38', NULL),
(2, 1, 'imagen', 'rin-rin-2', 'rin-rin-2.jpg', '2020-01-10 15:56:38', NULL),
(3, 1, 'imagen', 'rin-rin-3', 'rin-rin-3.jpg', '2020-01-10 15:56:38', NULL),
(4, 1, 'imagen', 'rin-rin-4', 'rin-rin-4.jpg', '2020-01-10 15:56:38', NULL),
(13, 1, 'documento', 'Documento 1', '1578937031iconos.xls', '2020-01-13 17:37:11', '2020-01-13 17:37:11'),
(14, 1, 'documento', 'Documento 2', '1578937053recomendacion monica.pdf', '2020-01-13 17:37:33', '2020-01-13 17:37:33'),
(16, 1, 'documento', 'Archivo 3', '1578937112Plantilla JLT 1.csv', '2020-01-13 17:38:32', '2020-01-13 17:38:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `icono`
--

CREATE TABLE `icono` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_icono` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `clase_icono` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `icono`
--

INSERT INTO `icono` (`id`, `nom_icono`, `clase_icono`, `created_at`, `updated_at`) VALUES
(1, '500px', 'fab fa-500px', '2020-01-10 15:56:38', NULL),
(2, 'icono-accesible', 'fab fa-accessible-icon', '2020-01-10 15:56:39', NULL),
(3, 'accusoft', 'fab fa-accusoft', '2020-01-10 15:56:39', NULL),
(4, 'adquisiciones incorporadas', 'fab fa-acquisitions-incorporated', '2020-01-10 15:56:39', NULL),
(5, 'anuncio', 'fas fa-ad', '2020-01-10 15:56:39', NULL),
(6, 'directorio', 'fas fa-address-book', '2020-01-10 15:56:39', NULL),
(7, 'directorio', 'far fa-address-book', '2020-01-10 15:56:39', NULL),
(8, 'tarjeta de direccion', 'fas fa-address-card', '2020-01-10 15:56:39', NULL),
(9, 'tarjeta de direccion', 'far fa-address-card', '2020-01-10 15:56:40', NULL),
(10, 'ajustar', 'fas fa-adjust', '2020-01-10 15:56:40', NULL),
(11, 'adn', 'fab fa-adn', '2020-01-10 15:56:40', NULL),
(12, 'adobe', 'fab fa-adobe', '2020-01-10 15:56:40', NULL),
(13, 'adversal', 'fab fa-adversal', '2020-01-10 15:56:40', NULL),
(14, 'tema de afiliacion', 'fab fa-affiliatetheme', '2020-01-10 15:56:40', NULL),
(15, 'ambientador', 'fas fa-air-freshener', '2020-01-10 15:56:40', NULL),
(16, 'airbnb', 'fab fa-airbnb', '2020-01-10 15:56:40', NULL),
(17, 'algolia', 'fab fa-algolia', '2020-01-10 15:56:40', NULL),
(18, 'Alinear al centro', 'fas fa-align-center', '2020-01-10 15:56:40', NULL),
(19, 'alinear-justificar', 'fas fa-align-justify', '2020-01-10 15:56:40', NULL),
(20, 'alinear a la izquierda', 'fas fa-align-left', '2020-01-10 15:56:40', NULL),
(21, 'alinear a la derecha', 'fas fa-align-right', '2020-01-10 15:56:40', NULL),
(22, 'alipay', 'fab fa-alipay', '2020-01-10 15:56:40', NULL),
(23, 'alergias', 'fas fa-allergies', '2020-01-10 15:56:40', NULL),
(24, 'Amazonas', 'fab fa-amazon', '2020-01-10 15:56:40', NULL),
(25, 'amazon-pay', 'fab fa-amazon-pay', '2020-01-10 15:56:40', NULL),
(26, 'ambulancia', 'fas fa-ambulance', '2020-01-10 15:56:40', NULL),
(27, 'interpretacion de lenguaje de señas americano', 'fas fa-american-sign-language-interpreting', '2020-01-10 15:56:40', NULL),
(28, 'amilia', 'fab fa-amilia', '2020-01-10 15:56:40', NULL),
(29, 'ancla', 'fas fa-anchor', '2020-01-10 15:56:40', NULL),
(30, 'androide', 'fab fa-android', '2020-01-10 15:56:40', NULL),
(31, 'angelicalista', 'fab fa-angellist', '2020-01-10 15:56:40', NULL),
(32, 'angulo-doble-abajo', 'fas fa-angle-double-down', '2020-01-10 15:56:40', NULL),
(33, 'angulo-doble-izquierda', 'fas fa-angle-double-left', '2020-01-10 15:56:41', NULL),
(34, 'angulo-doble-derecha', 'fas fa-angle-double-right', '2020-01-10 15:56:41', NULL),
(35, 'angulo doble', 'fas fa-angle-double-up', '2020-01-10 15:56:41', NULL),
(36, 'angulo hacia abajo', 'fas fa-angle-down', '2020-01-10 15:56:41', NULL),
(37, 'angulo izquierdo', 'fas fa-angle-left', '2020-01-10 15:56:41', NULL),
(38, 'angulo recto', 'fas fa-angle-right', '2020-01-10 15:56:41', NULL),
(39, 'angulo hacia arriba', 'fas fa-angle-up', '2020-01-10 15:56:41', NULL),
(40, 'enojado', 'fas fa-angry', '2020-01-10 15:56:41', NULL),
(41, 'enojado', 'far fa-angry', '2020-01-10 15:56:41', NULL),
(42, 'enojadocreativo', 'fab fa-angrycreative', '2020-01-10 15:56:41', NULL),
(43, 'angular', 'fab fa-angular', '2020-01-10 15:56:41', NULL),
(44, 'ankh', 'fas fa-ankh', '2020-01-10 15:56:41', NULL),
(45, 'tienda de aplicaciones', 'fab fa-app-store', '2020-01-10 15:56:41', NULL),
(46, 'app-store-ios', 'fab fa-app-store-ios', '2020-01-10 15:56:41', NULL),
(47, 'apper', 'fab fa-apper', '2020-01-10 15:56:41', NULL),
(48, 'manzana', 'fab fa-apple', '2020-01-10 15:56:41', NULL),
(49, 'apple-alt', 'fas fa-apple-alt', '2020-01-10 15:56:41', NULL),
(50, 'pago de manzana', 'fab fa-apple-pay', '2020-01-10 15:56:41', NULL),
(51, 'archivo', 'fas fa-archive', '2020-01-10 15:56:41', NULL),
(52, 'arco', 'fas fa-archway', '2020-01-10 15:56:41', NULL),
(53, 'arrow-alt-circle-down', 'fas fa-arrow-alt-circle-down', '2020-01-10 15:56:41', NULL),
(54, 'arrow-alt-circle-down', 'far fa-arrow-alt-circle-down', '2020-01-10 15:56:41', NULL),
(55, 'arrow-alt-circle-left', 'fas fa-arrow-alt-circle-left', '2020-01-10 15:56:42', NULL),
(56, 'arrow-alt-circle-left', 'far fa-arrow-alt-circle-left', '2020-01-10 15:56:42', NULL),
(57, 'arrow-alt-circle-right', 'fas fa-arrow-alt-circle-right', '2020-01-10 15:56:42', NULL),
(58, 'arrow-alt-circle-right', 'far fa-arrow-alt-circle-right', '2020-01-10 15:56:42', NULL),
(59, 'arrow-alt-circle-up', 'fas fa-arrow-alt-circle-up', '2020-01-10 15:56:42', NULL),
(60, 'arrow-alt-circle-up', 'far fa-arrow-alt-circle-up', '2020-01-10 15:56:42', NULL),
(61, 'flecha-circulo-abajo', 'fas fa-arrow-circle-down', '2020-01-10 15:56:42', NULL),
(62, 'flecha-circulo-izquierda', 'fas fa-arrow-circle-left', '2020-01-10 15:56:42', NULL),
(63, 'flecha-circulo-derecha', 'fas fa-arrow-circle-right', '2020-01-10 15:56:42', NULL),
(64, 'flecha-circulo-arriba', 'fas fa-arrow-circle-up', '2020-01-10 15:56:42', NULL),
(65, 'flecha hacia abajo', 'fas fa-arrow-down', '2020-01-10 15:56:42', NULL),
(66, 'flecha izquierda', 'fas fa-arrow-left', '2020-01-10 15:56:42', NULL),
(67, 'flecha derecha', 'fas fa-arrow-right', '2020-01-10 15:56:42', NULL),
(68, 'flecha arriba', 'fas fa-arrow-up', '2020-01-10 15:56:42', NULL),
(69, 'flechas-alt', 'fas fa-arrows-alt', '2020-01-10 15:56:42', NULL),
(70, 'flechas-alt-h', 'fas fa-arrows-alt-h', '2020-01-10 15:56:42', NULL),
(71, 'flechas-alt-v', 'fas fa-arrows-alt-v', '2020-01-10 15:56:42', NULL),
(72, 'artstation', 'fab fa-artstation', '2020-01-10 15:56:42', NULL),
(73, 'sistemas de escucha asistida', 'fas fa-assistive-listening-systems', '2020-01-10 15:56:42', NULL),
(74, 'asterisco', 'fas fa-asterisk', '2020-01-10 15:56:42', NULL),
(75, 'asymmetrik', 'fab fa-asymmetrik', '2020-01-10 15:56:42', NULL),
(76, 'a', 'fas fa-at', '2020-01-10 15:56:43', NULL),
(77, 'atlas', 'fas fa-atlas', '2020-01-10 15:56:43', NULL),
(78, 'atlassian', 'fab fa-atlassian', '2020-01-10 15:56:43', NULL),
(79, 'atomo', 'fas fa-atom', '2020-01-10 15:56:43', NULL),
(80, 'audible', 'fab fa-audible', '2020-01-10 15:56:43', NULL),
(81, 'descripcion de audio', 'fas fa-audio-description', '2020-01-10 15:56:43', NULL),
(82, 'fijador automatico', 'fab fa-autoprefixer', '2020-01-10 15:56:43', NULL),
(83, 'avianex', 'fab fa-avianex', '2020-01-10 15:56:43', NULL),
(84, 'aviato', 'fab fa-aviato', '2020-01-10 15:56:43', NULL),
(85, 'premio', 'fas fa-award', '2020-01-10 15:56:43', NULL),
(86, 'aws', 'fab fa-aws', '2020-01-10 15:56:43', NULL),
(87, 'bebe', 'fas fa-baby', '2020-01-10 15:56:43', NULL),
(88, 'cochecito de bebe', 'fas fa-baby-carriage', '2020-01-10 15:56:43', NULL),
(89, 'retroceso', 'fas fa-backspace', '2020-01-10 15:56:43', NULL),
(90, 'hacia atras', 'fas fa-backward', '2020-01-10 15:56:43', NULL),
(91, 'tocino', 'fas fa-bacon', '2020-01-10 15:56:43', NULL),
(92, 'bahai', 'fas fa-bahai', '2020-01-10 15:56:43', NULL),
(93, 'balanza', 'fas fa-balance-scale', '2020-01-10 15:56:43', NULL),
(94, 'balance-scale-left', 'fas fa-balance-scale-left', '2020-01-10 15:56:43', NULL),
(95, 'balance-scale-right', 'fas fa-balance-scale-right', '2020-01-10 15:56:44', NULL),
(96, 'prohibicion', 'fas fa-ban', '2020-01-10 15:56:44', NULL),
(97, 'Tirita', 'fas fa-band-aid', '2020-01-10 15:56:44', NULL),
(98, 'campamento de la banda', 'fab fa-bandcamp', '2020-01-10 15:56:44', NULL),
(99, 'codigo de barras', 'fas fa-barcode', '2020-01-10 15:56:44', NULL),
(100, 'barras', 'fas fa-bars', '2020-01-10 15:56:44', NULL),
(101, 'pelota de beisbol', 'fas fa-baseball-ball', '2020-01-10 15:56:44', NULL),
(102, 'pelota de baloncesto', 'fas fa-basketball-ball', '2020-01-10 15:56:44', NULL),
(103, 'bañera', 'fas fa-bath', '2020-01-10 15:56:44', NULL),
(104, 'bateria vacia', 'fas fa-battery-empty', '2020-01-10 15:56:44', NULL),
(105, 'Bateria llena', 'fas fa-battery-full', '2020-01-10 15:56:44', NULL),
(106, 'media bateria', 'fas fa-battery-half', '2020-01-10 15:56:44', NULL),
(107, 'cuarto de bateria', 'fas fa-battery-quarter', '2020-01-10 15:56:44', NULL),
(108, 'bateria de tres cuartos', 'fas fa-battery-three-quarters', '2020-01-10 15:56:44', NULL),
(109, 'red de batalla', 'fab fa-battle-net', '2020-01-10 15:56:45', NULL),
(110, 'cama', 'fas fa-bed', '2020-01-10 15:56:45', NULL),
(111, 'cerveza', 'fas fa-beer', '2020-01-10 15:56:45', NULL),
(112, 'comportamiento', 'fab fa-behance', '2020-01-10 15:56:45', NULL),
(113, 'cuadrado de comportamiento', 'fab fa-behance-square', '2020-01-10 15:56:45', NULL),
(114, 'campana', 'fas fa-bell', '2020-01-10 15:56:45', NULL),
(115, 'campana', 'far fa-bell', '2020-01-10 15:56:45', NULL),
(116, 'campana', 'fas fa-bell-slash', '2020-01-10 15:56:45', NULL),
(117, 'campana', 'far fa-bell-slash', '2020-01-10 15:56:45', NULL),
(118, 'curva de bezier', 'fas fa-bezier-curve', '2020-01-10 15:56:45', NULL),
(119, 'Biblia', 'fas fa-bible', '2020-01-10 15:56:46', NULL),
(120, 'bicicleta', 'fas fa-bicycle', '2020-01-10 15:56:46', NULL),
(121, 'andar en bicicleta', 'fas fa-biking', '2020-01-10 15:56:46', NULL),
(122, 'bimobject', 'fab fa-bimobject', '2020-01-10 15:56:46', NULL),
(123, 'prismaticos', 'fas fa-binoculars', '2020-01-10 15:56:46', NULL),
(124, 'peligro biologico', 'fas fa-biohazard', '2020-01-10 15:56:46', NULL),
(125, 'pastel de cumpleaños', 'fas fa-birthday-cake', '2020-01-10 15:56:46', NULL),
(126, 'bitbucket', 'fab fa-bitbucket', '2020-01-10 15:56:46', NULL),
(127, 'bitcoin', 'fab fa-bitcoin', '2020-01-10 15:56:46', NULL),
(128, 'bity', 'fab fa-bity', '2020-01-10 15:56:46', NULL),
(129, 'lazo negro', 'fab fa-black-tie', '2020-01-10 15:56:46', NULL),
(130, 'Mora', 'fab fa-blackberry', '2020-01-10 15:56:46', NULL),
(131, 'licuadora', 'fas fa-blender', '2020-01-10 15:56:46', NULL),
(132, 'licuadora', 'fas fa-blender-phone', '2020-01-10 15:56:46', NULL),
(133, 'ciego', 'fas fa-blind', '2020-01-10 15:56:46', NULL),
(134, 'Blog', 'fas fa-blog', '2020-01-10 15:56:47', NULL),
(135, 'blogger', 'fab fa-blogger', '2020-01-10 15:56:47', NULL),
(136, 'blogger-b', 'fab fa-blogger-b', '2020-01-10 15:56:47', NULL),
(137, 'Bluetooth', 'fab fa-bluetooth', '2020-01-10 15:56:47', NULL),
(138, 'bluetooth-b', 'fab fa-bluetooth-b', '2020-01-10 15:56:47', NULL),
(139, 'negrita', 'fas fa-bold', '2020-01-10 15:56:47', NULL),
(140, 'tornillo', 'fas fa-bolt', '2020-01-10 15:56:47', NULL),
(141, 'bomba', 'fas fa-bomb', '2020-01-10 15:56:47', NULL),
(142, 'hueso', 'fas fa-bone', '2020-01-10 15:56:47', NULL),
(143, 'bong', 'fas fa-bong', '2020-01-10 15:56:47', NULL),
(144, 'libro', 'fas fa-book', '2020-01-10 15:56:47', NULL),
(145, 'libro muerto', 'fas fa-book-dead', '2020-01-10 15:56:47', NULL),
(146, 'libro medico', 'fas fa-book-medical', '2020-01-10 15:56:47', NULL),
(147, 'libro abierto', 'fas fa-book-open', '2020-01-10 15:56:47', NULL),
(148, 'lector de libros', 'fas fa-book-reader', '2020-01-10 15:56:47', NULL),
(149, 'marcador', 'fas fa-bookmark', '2020-01-10 15:56:47', NULL),
(150, 'marcador', 'far fa-bookmark', '2020-01-10 15:56:47', NULL),
(151, 'oreja', 'fab fa-bootstrap', '2020-01-10 15:56:48', NULL),
(152, 'borde-todo', 'fas fa-border-all', '2020-01-10 15:56:48', NULL),
(153, 'borde-ninguno', 'fas fa-border-none', '2020-01-10 15:56:48', NULL),
(154, 'estilo de borde', 'fas fa-border-style', '2020-01-10 15:56:48', NULL),
(155, 'bola de boliche', 'fas fa-bowling-ball', '2020-01-10 15:56:48', NULL),
(156, 'caja', 'fas fa-box', '2020-01-10 15:56:48', NULL),
(157, 'caja abierta', 'fas fa-box-open', '2020-01-10 15:56:48', NULL),
(158, 'cajas', 'fas fa-boxes', '2020-01-10 15:56:48', NULL),
(159, 'braille', 'fas fa-braille', '2020-01-10 15:56:48', NULL),
(160, 'cerebro', 'fas fa-brain', '2020-01-10 15:56:48', NULL),
(161, 'rebanada de pan', 'fas fa-bread-slice', '2020-01-10 15:56:48', NULL),
(162, 'maletin', 'fas fa-briefcase', '2020-01-10 15:56:48', NULL),
(163, 'maletin medico', 'fas fa-briefcase-medical', '2020-01-10 15:56:48', NULL),
(164, 'torre de transmision', 'fas fa-broadcast-tower', '2020-01-10 15:56:48', NULL),
(165, 'Escoba', 'fas fa-broom', '2020-01-10 15:56:48', NULL),
(166, 'cepillo', 'fas fa-brush', '2020-01-10 15:56:48', NULL),
(167, 'btc', 'fab fa-btc', '2020-01-10 15:56:48', NULL),
(168, 'buffer', 'fab fa-buffer', '2020-01-10 15:56:48', NULL),
(169, 'error', 'fas fa-bug', '2020-01-10 15:56:49', NULL),
(170, 'edificio', 'fas fa-building', '2020-01-10 15:56:49', NULL),
(171, 'edificio', 'far fa-building', '2020-01-10 15:56:49', NULL),
(172, 'megafono', 'fas fa-bullhorn', '2020-01-10 15:56:49', NULL),
(173, 'diana', 'fas fa-bullseye', '2020-01-10 15:56:49', NULL),
(174, 'quemar', 'fas fa-burn', '2020-01-10 15:56:49', NULL),
(175, 'buromobelexperte', 'fab fa-buromobelexperte', '2020-01-10 15:56:49', NULL),
(176, 'autobus', 'fas fa-bus', '2020-01-10 15:56:49', NULL),
(177, 'bus-alt', 'fas fa-bus-alt', '2020-01-10 15:56:49', NULL),
(178, 'tiempo de Negocios', 'fas fa-business-time', '2020-01-10 15:56:49', NULL),
(179, 'comprar-n-grande', 'fab fa-buy-n-large', '2020-01-10 15:56:50', NULL),
(180, 'buysellads', 'fab fa-buysellads', '2020-01-10 15:56:50', NULL),
(181, 'calculadora', 'fas fa-calculator', '2020-01-10 15:56:50', NULL),
(182, 'calendario', 'fas fa-calendar', '2020-01-10 15:56:50', NULL),
(183, 'calendario', 'far fa-calendar', '2020-01-10 15:56:50', NULL),
(184, 'calendar-alt', 'fas fa-calendar-alt', '2020-01-10 15:56:50', NULL),
(185, 'calendar-alt', 'far fa-calendar-alt', '2020-01-10 15:56:50', NULL),
(186, 'calendario-cheque', 'fas fa-calendar-check', '2020-01-10 15:56:50', NULL),
(187, 'calendario-cheque', 'far fa-calendar-check', '2020-01-10 15:56:50', NULL),
(188, 'dia del calendario', 'fas fa-calendar-day', '2020-01-10 15:56:50', NULL),
(189, 'calendario menos', 'fas fa-calendar-minus', '2020-01-10 15:56:50', NULL),
(190, 'calendario menos', 'far fa-calendar-minus', '2020-01-10 15:56:50', NULL),
(191, 'calendar-plus', 'fas fa-calendar-plus', '2020-01-10 15:56:51', NULL),
(192, 'calendar-plus', 'far fa-calendar-plus', '2020-01-10 15:56:51', NULL),
(193, 'calendario-tiempos', 'fas fa-calendar-times', '2020-01-10 15:56:51', NULL),
(194, 'calendario-tiempos', 'far fa-calendar-times', '2020-01-10 15:56:51', NULL),
(195, 'Calendario de la semana', 'fas fa-calendar-week', '2020-01-10 15:56:51', NULL),
(196, 'camara', 'fas fa-camera', '2020-01-10 15:56:51', NULL),
(197, 'camara retro', 'fas fa-camera-retro', '2020-01-10 15:56:51', NULL),
(198, 'terreno de camping', 'fas fa-campground', '2020-01-10 15:56:51', NULL),
(199, 'hoja de arce canadiense', 'fab fa-canadian-maple-leaf', '2020-01-10 15:56:51', NULL),
(200, 'baston de caramelo', 'fas fa-candy-cane', '2020-01-10 15:56:51', NULL),
(201, 'canabis', 'fas fa-cannabis', '2020-01-10 15:56:51', NULL),
(202, 'capsulas', 'fas fa-capsules', '2020-01-10 15:56:51', NULL),
(203, 'coche', 'fas fa-car', '2020-01-10 15:56:51', NULL),
(204, 'car-alt', 'fas fa-car-alt', '2020-01-10 15:56:51', NULL),
(205, 'Bateria de coche', 'fas fa-car-battery', '2020-01-10 15:56:51', NULL),
(206, 'accidente automovilistico', 'fas fa-car-crash', '2020-01-10 15:56:51', NULL),
(207, 'lado del coche', 'fas fa-car-side', '2020-01-10 15:56:52', NULL),
(208, 'caravana', 'fas fa-caravan', '2020-01-10 15:56:52', NULL),
(209, 'descuidado', 'fas fa-caret-down', '2020-01-10 15:56:52', NULL),
(210, 'a la izquierda', 'fas fa-caret-left', '2020-01-10 15:56:52', NULL),
(211, 'derecho de cuidado', 'fas fa-caret-right', '2020-01-10 15:56:52', NULL),
(212, 'caret-square-down', 'fas fa-caret-square-down', '2020-01-10 15:56:52', NULL),
(213, 'caret-square-down', 'far fa-caret-square-down', '2020-01-10 15:56:52', NULL),
(214, 'caret-square-left', 'fas fa-caret-square-left', '2020-01-10 15:56:52', NULL),
(215, 'caret-square-left', 'far fa-caret-square-left', '2020-01-10 15:56:52', NULL),
(216, 'caret-square-right', 'fas fa-caret-square-right', '2020-01-10 15:56:52', NULL),
(217, 'caret-square-right', 'far fa-caret-square-right', '2020-01-10 15:56:52', NULL),
(218, 'cuadrado cuadrado', 'fas fa-caret-square-up', '2020-01-10 15:56:52', NULL),
(219, 'cuadrado cuadrado', 'far fa-caret-square-up', '2020-01-10 15:56:53', NULL),
(220, 'cautela', 'fas fa-caret-up', '2020-01-10 15:56:53', NULL),
(221, 'Zanahoria', 'fas fa-carrot', '2020-01-10 15:56:53', NULL),
(222, 'carro-flecha-abajo', 'fas fa-cart-arrow-down', '2020-01-10 15:56:53', NULL),
(223, 'carrito-plus', 'fas fa-cart-plus', '2020-01-10 15:56:53', NULL),
(224, 'caja registradora', 'fas fa-cash-register', '2020-01-10 15:56:53', NULL),
(225, 'gato', 'fas fa-cat', '2020-01-10 15:56:53', NULL),
(226, 'cc-amazon-pay', 'fab fa-cc-amazon-pay', '2020-01-10 15:56:53', NULL),
(227, 'cc-amex', 'fab fa-cc-amex', '2020-01-10 15:56:53', NULL),
(228, 'cc-apple-pay', 'fab fa-cc-apple-pay', '2020-01-10 15:56:53', NULL),
(229, 'cc-diners-club', 'fab fa-cc-diners-club', '2020-01-10 15:56:53', NULL),
(230, 'cc-discover', 'fab fa-cc-discover', '2020-01-10 15:56:53', NULL),
(231, 'cc-jcb', 'fab fa-cc-jcb', '2020-01-10 15:56:54', NULL),
(232, 'cc-mastercard', 'fab fa-cc-mastercard', '2020-01-10 15:56:54', NULL),
(233, 'cc-paypal', 'fab fa-cc-paypal', '2020-01-10 15:56:54', NULL),
(234, 'cc-stripe', 'fab fa-cc-stripe', '2020-01-10 15:56:54', NULL),
(235, 'visa cc', 'fab fa-cc-visa', '2020-01-10 15:56:54', NULL),
(236, 'codigo central', 'fab fa-centercode', '2020-01-10 15:56:54', NULL),
(237, 'centos', 'fab fa-centos', '2020-01-10 15:56:54', NULL),
(238, 'certificado', 'fas fa-certificate', '2020-01-10 15:56:54', NULL),
(239, 'silla', 'fas fa-chair', '2020-01-10 15:56:54', NULL),
(240, 'pizarra', 'fas fa-chalkboard', '2020-01-10 15:56:54', NULL),
(241, 'profesor de pizarra', 'fas fa-chalkboard-teacher', '2020-01-10 15:56:54', NULL),
(242, 'Estacion de carga', 'fas fa-charging-station', '2020-01-10 15:56:54', NULL),
(243, 'area de la carta', 'fas fa-chart-area', '2020-01-10 15:56:54', NULL),
(244, 'grafico de barras', 'fas fa-chart-bar', '2020-01-10 15:56:54', NULL),
(245, 'grafico de barras', 'far fa-chart-bar', '2020-01-10 15:56:54', NULL),
(246, 'linea de carta', 'fas fa-chart-line', '2020-01-10 15:56:55', NULL),
(247, 'grafico circular', 'fas fa-chart-pie', '2020-01-10 15:56:55', NULL),
(248, 'comprobar', 'fas fa-check', '2020-01-10 15:56:55', NULL),
(249, 'circulo de verificacion', 'fas fa-check-circle', '2020-01-10 15:56:55', NULL),
(250, 'circulo de verificacion', 'far fa-check-circle', '2020-01-10 15:56:55', NULL),
(251, 'doble check', 'fas fa-check-double', '2020-01-10 15:56:55', NULL),
(252, 'casilla de verificacion', 'fas fa-check-square', '2020-01-10 15:56:55', NULL),
(253, 'casilla de verificacion', 'far fa-check-square', '2020-01-10 15:56:55', NULL),
(254, 'queso', 'fas fa-cheese', '2020-01-10 15:56:55', NULL),
(255, 'ajedrez', 'fas fa-chess', '2020-01-10 15:56:55', NULL),
(256, 'obispo de ajedrez', 'fas fa-chess-bishop', '2020-01-10 15:56:55', NULL),
(257, 'tablero de ajedrez', 'fas fa-chess-board', '2020-01-10 15:56:56', NULL),
(258, 'Rey del ajedrez', 'fas fa-chess-king', '2020-01-10 15:56:56', NULL),
(259, 'caballero de ajedrez', 'fas fa-chess-knight', '2020-01-10 15:56:56', NULL),
(260, 'peon de ajedrez', 'fas fa-chess-pawn', '2020-01-10 15:56:56', NULL),
(261, 'reina del ajedrez', 'fas fa-chess-queen', '2020-01-10 15:56:56', NULL),
(262, 'torre de ajedrez', 'fas fa-chess-rook', '2020-01-10 15:56:56', NULL),
(263, 'chevron-circle-down', 'fas fa-chevron-circle-down', '2020-01-10 15:56:56', NULL),
(264, 'chevron-circle-left', 'fas fa-chevron-circle-left', '2020-01-10 15:56:56', NULL),
(265, 'chevron-circle-right', 'fas fa-chevron-circle-right', '2020-01-10 15:56:57', NULL),
(266, 'chevron-circle-up', 'fas fa-chevron-circle-up', '2020-01-10 15:56:57', NULL),
(267, 'chevron-down', 'fas fa-chevron-down', '2020-01-10 15:56:57', NULL),
(268, 'chevron-left', 'fas fa-chevron-left', '2020-01-10 15:56:57', NULL),
(269, 'chevron-right', 'fas fa-chevron-right', '2020-01-10 15:56:57', NULL),
(270, 'chevron-up', 'fas fa-chevron-up', '2020-01-10 15:56:57', NULL),
(271, 'niño', 'fas fa-child', '2020-01-10 15:56:57', NULL),
(272, 'cromo', 'fab fa-chrome', '2020-01-10 15:56:57', NULL),
(273, 'Chromecast', 'fab fa-chromecast', '2020-01-10 15:56:57', NULL),
(274, 'Iglesia', 'fas fa-church', '2020-01-10 15:56:57', NULL),
(275, 'circulo', 'fas fa-circle', '2020-01-10 15:56:57', NULL),
(276, 'circulo', 'far fa-circle', '2020-01-10 15:56:57', NULL),
(277, 'muesca circular', 'fas fa-circle-notch', '2020-01-10 15:56:57', NULL),
(278, 'ciudad', 'fas fa-city', '2020-01-10 15:56:57', NULL),
(279, 'clinica-medica', 'fas fa-clinic-medical', '2020-01-10 15:56:57', NULL),
(280, 'portapapeles', 'fas fa-clipboard', '2020-01-10 15:56:57', NULL),
(281, 'portapapeles', 'far fa-clipboard', '2020-01-10 15:56:57', NULL),
(282, 'verificacion del portapapeles', 'fas fa-clipboard-check', '2020-01-10 15:56:58', NULL),
(283, 'lista de portapapeles', 'fas fa-clipboard-list', '2020-01-10 15:56:58', NULL),
(284, 'reloj', 'fas fa-clock', '2020-01-10 15:56:58', NULL),
(285, 'reloj', 'far fa-clock', '2020-01-10 15:56:58', NULL),
(286, 'clon', 'fas fa-clone', '2020-01-10 15:56:58', NULL),
(287, 'clon', 'far fa-clone', '2020-01-10 15:56:58', NULL),
(288, 'subtitulos', 'fas fa-closed-captioning', '2020-01-10 15:56:58', NULL),
(289, 'subtitulos', 'far fa-closed-captioning', '2020-01-10 15:56:58', NULL),
(290, 'nube', 'fas fa-cloud', '2020-01-10 15:56:58', NULL),
(291, 'cloud-download-alt', 'fas fa-cloud-download-alt', '2020-01-10 15:56:58', NULL),
(292, 'albondiga de nube', 'fas fa-cloud-meatball', '2020-01-10 15:56:58', NULL),
(293, 'nube-luna', 'fas fa-cloud-moon', '2020-01-10 15:56:58', NULL),
(294, 'nube-luna-lluvia', 'fas fa-cloud-moon-rain', '2020-01-10 15:56:58', NULL),
(295, 'lluvia de nubes', 'fas fa-cloud-rain', '2020-01-10 15:56:58', NULL),
(296, 'chubascos de lluvia', 'fas fa-cloud-showers-heavy', '2020-01-10 15:56:58', NULL),
(297, 'nube-sol', 'fas fa-cloud-sun', '2020-01-10 15:56:58', NULL),
(298, 'nube-sol-lluvia', 'fas fa-cloud-sun-rain', '2020-01-10 15:56:58', NULL),
(299, 'cloud-upload-alt', 'fas fa-cloud-upload-alt', '2020-01-10 15:56:59', NULL),
(300, 'escala de nubes', 'fab fa-cloudscale', '2020-01-10 15:56:59', NULL),
(301, 'cementerio', 'fab fa-cloudsmith', '2020-01-10 15:56:59', NULL),
(302, 'cloudversify', 'fab fa-cloudversify', '2020-01-10 15:56:59', NULL),
(303, 'coctel', 'fas fa-cocktail', '2020-01-10 15:56:59', NULL),
(304, 'codigo', 'fas fa-code', '2020-01-10 15:56:59', NULL),
(305, 'codigo-rama', 'fas fa-code-branch', '2020-01-10 15:56:59', NULL),
(306, 'codepen', 'fab fa-codepen', '2020-01-10 15:56:59', NULL),
(307, 'codiepie', 'fab fa-codiepie', '2020-01-10 15:56:59', NULL),
(308, 'cafe', 'fas fa-coffee', '2020-01-10 15:56:59', NULL),
(309, 'diente', 'fas fa-cog', '2020-01-10 15:56:59', NULL),
(310, 'dientes', 'fas fa-cogs', '2020-01-10 15:56:59', NULL),
(311, 'monedas', 'fas fa-coins', '2020-01-10 15:56:59', NULL),
(312, 'columnas', 'fas fa-columns', '2020-01-10 15:56:59', NULL),
(313, 'comentario', 'fas fa-comment', '2020-01-10 15:57:00', NULL),
(314, 'comentario', 'far fa-comment', '2020-01-10 15:57:00', NULL),
(315, 'comentario-alt', 'fas fa-comment-alt', '2020-01-10 15:57:00', NULL),
(316, 'comentario-alt', 'far fa-comment-alt', '2020-01-10 15:57:00', NULL),
(317, 'comentario-dolar', 'fas fa-comment-dollar', '2020-01-10 15:57:00', NULL),
(318, 'comentario-puntos', 'fas fa-comment-dots', '2020-01-10 15:57:00', NULL),
(319, 'comentario-puntos', 'far fa-comment-dots', '2020-01-10 15:57:00', NULL),
(320, 'comentario medico', 'fas fa-comment-medical', '2020-01-10 15:57:00', NULL),
(321, 'barra de comentarios', 'fas fa-comment-slash', '2020-01-10 15:57:00', NULL),
(322, 'comentarios', 'fas fa-comments', '2020-01-10 15:57:00', NULL),
(323, 'comentarios', 'far fa-comments', '2020-01-10 15:57:00', NULL),
(324, 'comentarios-dolar', 'fas fa-comments-dollar', '2020-01-10 15:57:01', NULL),
(325, 'disco compacto', 'fas fa-compact-disc', '2020-01-10 15:57:01', NULL),
(326, 'Brujula', 'fas fa-compass', '2020-01-10 15:57:01', NULL),
(327, 'Brujula', 'far fa-compass', '2020-01-10 15:57:01', NULL),
(328, 'comprimir', 'fas fa-compress', '2020-01-10 15:57:01', NULL),
(329, 'comprimir-alt', 'fas fa-compress-alt', '2020-01-10 15:57:01', NULL),
(330, 'comprimir-flechas-alt', 'fas fa-compress-arrows-alt', '2020-01-10 15:57:01', NULL),
(331, 'conserje-campana', 'fas fa-concierge-bell', '2020-01-10 15:57:01', NULL),
(332, 'confluencia', 'fab fa-confluence', '2020-01-10 15:57:01', NULL),
(333, 'connectdevelop', 'fab fa-connectdevelop', '2020-01-10 15:57:01', NULL),
(334, 'contao', 'fab fa-contao', '2020-01-10 15:57:01', NULL),
(335, 'Galleta', 'fas fa-cookie', '2020-01-10 15:57:01', NULL),
(336, 'mordedura de galleta', 'fas fa-cookie-bite', '2020-01-10 15:57:01', NULL),
(337, 'dupdo', 'fas fa-copy', '2020-01-10 15:57:02', NULL),
(338, 'dupdo', 'far fa-copy', '2020-01-10 15:57:02', NULL),
(339, 'derechos de autor', 'fas fa-copyright', '2020-01-10 15:57:02', NULL),
(340, 'derechos de autor', 'far fa-copyright', '2020-01-10 15:57:02', NULL),
(341, 'oficina de algodon', 'fab fa-cotton-bureau', '2020-01-10 15:57:02', NULL),
(342, 'sofa', 'fas fa-couch', '2020-01-10 15:57:02', NULL),
(343, 'cpanel', 'fab fa-cpanel', '2020-01-10 15:57:02', NULL),
(344, 'creative-commons', 'fab fa-creative-commons', '2020-01-10 15:57:02', NULL),
(345, 'creative-commons-by', 'fab fa-creative-commons-by', '2020-01-10 15:57:02', NULL),
(346, 'creative-commons-nc', 'fab fa-creative-commons-nc', '2020-01-10 15:57:02', NULL),
(347, 'creative-commons-nc-eu', 'fab fa-creative-commons-nc-eu', '2020-01-10 15:57:02', NULL),
(348, 'creative-commons-nc-jp', 'fab fa-creative-commons-nc-jp', '2020-01-10 15:57:02', NULL),
(349, 'creative-commons-nd', 'fab fa-creative-commons-nd', '2020-01-10 15:57:02', NULL),
(350, 'creative-commons-pd', 'fab fa-creative-commons-pd', '2020-01-10 15:57:02', NULL),
(351, 'creative-commons-pd-alt', 'fab fa-creative-commons-pd-alt', '2020-01-10 15:57:02', NULL),
(352, 'creative-commons-remix', 'fab fa-creative-commons-remix', '2020-01-10 15:57:02', NULL),
(353, 'creative-commons-sa', 'fab fa-creative-commons-sa', '2020-01-10 15:57:02', NULL),
(354, 'creative-commons-samples', 'fab fa-creative-commons-sampling', '2020-01-10 15:57:03', NULL),
(355, 'creative-commons-samples-plus', 'fab fa-creative-commons-sampling-plus', '2020-01-10 15:57:03', NULL),
(356, 'creative-commons-share', 'fab fa-creative-commons-share', '2020-01-10 15:57:03', NULL),
(357, 'creative-commons-zero', 'fab fa-creative-commons-zero', '2020-01-10 15:57:03', NULL),
(358, 'tarjeta de credito', 'fas fa-credit-card', '2020-01-10 15:57:03', NULL),
(359, 'tarjeta de credito', 'far fa-credit-card', '2020-01-10 15:57:03', NULL),
(360, 'rol critico', 'fab fa-critical-role', '2020-01-10 15:57:03', NULL),
(361, 'cultivo', 'fas fa-crop', '2020-01-10 15:57:03', NULL),
(362, 'crop-alt', 'fas fa-crop-alt', '2020-01-10 15:57:03', NULL),
(363, 'cruzar', 'fas fa-cross', '2020-01-10 15:57:03', NULL),
(364, 'punto de mira', 'fas fa-crosshairs', '2020-01-10 15:57:03', NULL),
(365, 'cuervo', 'fas fa-crow', '2020-01-10 15:57:03', NULL),
(366, 'corona', 'fas fa-crown', '2020-01-10 15:57:03', NULL),
(367, 'muleta', 'fas fa-crutch', '2020-01-10 15:57:03', NULL),
(368, 'css3', 'fab fa-css3', '2020-01-10 15:57:03', NULL),
(369, 'css3-alt', 'fab fa-css3-alt', '2020-01-10 15:57:03', NULL),
(370, 'cubo', 'fas fa-cube', '2020-01-10 15:57:04', NULL),
(371, 'cubitos', 'fas fa-cubes', '2020-01-10 15:57:04', NULL),
(372, 'cortar', 'fas fa-cut', '2020-01-10 15:57:04', NULL),
(373, 'calamar', 'fab fa-cuttlefish', '2020-01-10 15:57:04', NULL),
(374, 'd-y-d', 'fab fa-d-and-d', '2020-01-10 15:57:04', NULL),
(375, 'd-y-d-mas alla', 'fab fa-d-and-d-beyond', '2020-01-10 15:57:04', NULL),
(376, 'tablero de instrumentos', 'fab fa-dashcube', '2020-01-10 15:57:04', NULL),
(377, 'base de datos', 'fas fa-database', '2020-01-10 15:57:04', NULL),
(378, 'sordo', 'fas fa-deaf', '2020-01-10 15:57:04', NULL),
(379, 'delicioso', 'fab fa-delicious', '2020-01-10 15:57:04', NULL),
(380, 'democrata', 'fas fa-democrat', '2020-01-10 15:57:04', NULL),
(381, 'deploydog', 'fab fa-deploydog', '2020-01-10 15:57:04', NULL),
(382, 'deskpro', 'fab fa-deskpro', '2020-01-10 15:57:04', NULL),
(383, 'escritorio', 'fas fa-desktop', '2020-01-10 15:57:04', NULL),
(384, 'dev', 'fab fa-dev', '2020-01-10 15:57:04', NULL),
(385, 'deviantart', 'fab fa-deviantart', '2020-01-10 15:57:04', NULL),
(386, 'dharmachakra', 'fas fa-dharmachakra', '2020-01-10 15:57:04', NULL),
(387, 'dhl', 'fab fa-dhl', '2020-01-10 15:57:04', NULL),
(388, 'diagnosticos', 'fas fa-diagnoses', '2020-01-10 15:57:04', NULL),
(389, 'diaspora', 'fab fa-diaspora', '2020-01-10 15:57:04', NULL),
(390, 'dado', 'fas fa-dice', '2020-01-10 15:57:04', NULL),
(391, 'dados-d20', 'fas fa-dice-d20', '2020-01-10 15:57:04', NULL),
(392, 'dados-d6', 'fas fa-dice-d6', '2020-01-10 15:57:04', NULL),
(393, 'dados y cinco', 'fas fa-dice-five', '2020-01-10 15:57:05', NULL),
(394, 'dados cuatro', 'fas fa-dice-four', '2020-01-10 15:57:05', NULL),
(395, 'dado uno', 'fas fa-dice-one', '2020-01-10 15:57:05', NULL),
(396, 'dado seis', 'fas fa-dice-six', '2020-01-10 15:57:05', NULL),
(397, 'dados-tres', 'fas fa-dice-three', '2020-01-10 15:57:05', NULL),
(398, 'dados-dos', 'fas fa-dice-two', '2020-01-10 15:57:05', NULL),
(399, 'digg', 'fab fa-digg', '2020-01-10 15:57:05', NULL),
(400, 'oceano digital', 'fab fa-digital-ocean', '2020-01-10 15:57:05', NULL),
(401, 'tacografo digital', 'fas fa-digital-tachograph', '2020-01-10 15:57:05', NULL),
(402, 'direcciones', 'fas fa-directions', '2020-01-10 15:57:05', NULL),
(403, 'discordia', 'fab fa-discord', '2020-01-10 15:57:05', NULL),
(404, 'discurso', 'fab fa-discourse', '2020-01-10 15:57:05', NULL),
(405, 'dividir', 'fas fa-divide', '2020-01-10 15:57:05', NULL),
(406, 'mareado', 'fas fa-dizzy', '2020-01-10 15:57:05', NULL),
(407, 'mareado', 'far fa-dizzy', '2020-01-10 15:57:05', NULL),
(408, 'adn', 'fas fa-dna', '2020-01-10 15:57:05', NULL),
(409, 'dochub', 'fab fa-dochub', '2020-01-10 15:57:05', NULL),
(410, 'estibador', 'fab fa-docker', '2020-01-10 15:57:05', NULL),
(411, 'perro', 'fas fa-dog', '2020-01-10 15:57:05', NULL),
(412, 'signo de dolar', 'fas fa-dollar-sign', '2020-01-10 15:57:05', NULL),
(413, 'muñequita', 'fas fa-dolly', '2020-01-10 15:57:05', NULL),
(414, 'plataforma plana', 'fas fa-dolly-flatbed', '2020-01-10 15:57:05', NULL),
(415, 'donar', 'fas fa-donate', '2020-01-10 15:57:05', NULL),
(416, 'puerta cerrada', 'fas fa-door-closed', '2020-01-10 15:57:05', NULL),
(417, 'puerta abierta', 'fas fa-door-open', '2020-01-10 15:57:05', NULL),
(418, 'circulo de puntos', 'fas fa-dot-circle', '2020-01-10 15:57:05', NULL),
(419, 'circulo de puntos', 'far fa-dot-circle', '2020-01-10 15:57:05', NULL),
(420, 'paloma', 'fas fa-dove', '2020-01-10 15:57:06', NULL),
(421, 'descargar', 'fas fa-download', '2020-01-10 15:57:06', NULL),
(422, 'draft2digital', 'fab fa-draft2digital', '2020-01-10 15:57:06', NULL),
(423, 'dibujo-brujula', 'fas fa-drafting-compass', '2020-01-10 15:57:06', NULL),
(424, 'continuar', 'fas fa-dragon', '2020-01-10 15:57:06', NULL),
(425, 'dibujar-poligono', 'fas fa-draw-polygon', '2020-01-10 15:57:06', NULL),
(426, 'regatear', 'fab fa-dribbble', '2020-01-10 15:57:06', NULL),
(427, 'dribbble-square', 'fab fa-dribbble-square', '2020-01-10 15:57:06', NULL),
(428, 'Dropbox', 'fab fa-dropbox', '2020-01-10 15:57:06', NULL),
(429, 'tambor', 'fas fa-drum', '2020-01-10 15:57:06', NULL),
(430, 'tambor de acero', 'fas fa-drum-steelpan', '2020-01-10 15:57:06', NULL),
(431, 'picadura de baqueta', 'fas fa-drumstick-bite', '2020-01-10 15:57:06', NULL),
(432, 'drupal', 'fab fa-drupal', '2020-01-10 15:57:06', NULL),
(433, 'pesa', 'fas fa-dumbbell', '2020-01-10 15:57:06', NULL),
(434, 'contenedor de basura', 'fas fa-dumpster', '2020-01-10 15:57:06', NULL),
(435, 'fuego de basurero', 'fas fa-dumpster-fire', '2020-01-10 15:57:06', NULL),
(436, 'mazmorra', 'fas fa-dungeon', '2020-01-10 15:57:06', NULL),
(437, 'dyalog', 'fab fa-dyalog', '2020-01-10 15:57:06', NULL),
(438, 'anticipado', 'fab fa-earlybirds', '2020-01-10 15:57:06', NULL),
(439, 'eBay', 'fab fa-ebay', '2020-01-10 15:57:06', NULL),
(440, 'borde', 'fab fa-edge', '2020-01-10 15:57:06', NULL),
(441, 'editar', 'fas fa-edit', '2020-01-10 15:57:06', NULL),
(442, 'editar', 'far fa-edit', '2020-01-10 15:57:06', NULL),
(443, 'huevo', 'fas fa-egg', '2020-01-10 15:57:07', NULL),
(444, 'expulsar', 'fas fa-eject', '2020-01-10 15:57:07', NULL),
(445, 'elementor', 'fab fa-elementor', '2020-01-10 15:57:07', NULL),
(446, 'puntos suspensivos-h', 'fas fa-ellipsis-h', '2020-01-10 15:57:07', NULL),
(447, 'puntos suspensivos-v', 'fas fa-ellipsis-v', '2020-01-10 15:57:07', NULL),
(448, 'ello', 'fab fa-ello', '2020-01-10 15:57:07', NULL),
(449, 'ascua', 'fab fa-ember', '2020-01-10 15:57:07', NULL),
(450, 'imperio', 'fab fa-empire', '2020-01-10 15:57:07', NULL),
(451, 'sobre', 'fas fa-envelope', '2020-01-10 15:57:07', NULL),
(452, 'sobre', 'far fa-envelope', '2020-01-10 15:57:07', NULL),
(453, 'sobre abierto', 'fas fa-envelope-open', '2020-01-10 15:57:07', NULL),
(454, 'sobre abierto', 'far fa-envelope-open', '2020-01-10 15:57:07', NULL),
(455, 'sobre-texto-abierto', 'fas fa-envelope-open-text', '2020-01-10 15:57:07', NULL),
(456, 'sobre cuadrado', 'fas fa-envelope-square', '2020-01-10 15:57:07', NULL),
(457, 'envira', 'fab fa-envira', '2020-01-10 15:57:07', NULL),
(458, 'es igual', 'fas fa-equals', '2020-01-10 15:57:07', NULL),
(459, 'borrador', 'fas fa-eraser', '2020-01-10 15:57:07', NULL),
(460, 'erlang', 'fab fa-erlang', '2020-01-10 15:57:07', NULL),
(461, 'ethereum', 'fab fa-ethereum', '2020-01-10 15:57:07', NULL),
(462, 'ethernet', 'fas fa-ethernet', '2020-01-10 15:57:07', NULL),
(463, 'etsy', 'fab fa-etsy', '2020-01-10 15:57:07', NULL),
(464, 'signo del euro', 'fas fa-euro-sign', '2020-01-10 15:57:07', NULL),
(465, 'evernote', 'fab fa-evernote', '2020-01-10 15:57:07', NULL),
(466, 'exchange-alt', 'fas fa-exchange-alt', '2020-01-10 15:57:07', NULL),
(467, 'exclamacion', 'fas fa-exclamation', '2020-01-10 15:57:08', NULL),
(468, 'circulo de exclamacion', 'fas fa-exclamation-circle', '2020-01-10 15:57:08', NULL),
(469, 'triangulo de exclamacion', 'fas fa-exclamation-triangle', '2020-01-10 15:57:08', NULL),
(470, 'expandir', 'fas fa-expand', '2020-01-10 15:57:08', NULL),
(471, 'expand-alt', 'fas fa-expand-alt', '2020-01-10 15:57:08', NULL),
(472, 'expandir-flechas-alt', 'fas fa-expand-arrows-alt', '2020-01-10 15:57:08', NULL),
(473, 'expeditedssl', 'fab fa-expeditedssl', '2020-01-10 15:57:08', NULL),
(474, 'enlace-externo-alt', 'fas fa-external-link-alt', '2020-01-10 15:57:08', NULL),
(475, 'enlace-externo-cuadrado-alt', 'fas fa-external-link-square-alt', '2020-01-10 15:57:08', NULL),
(476, 'ojo', 'fas fa-eye', '2020-01-10 15:57:08', NULL),
(477, 'ojo', 'far fa-eye', '2020-01-10 15:57:08', NULL),
(478, 'cuentagotas', 'fas fa-eye-dropper', '2020-01-10 15:57:08', NULL),
(479, 'corte de ojos', 'fas fa-eye-slash', '2020-01-10 15:57:08', NULL),
(480, 'corte de ojos', 'far fa-eye-slash', '2020-01-10 15:57:08', NULL),
(481, 'Facebook', 'fab fa-facebook', '2020-01-10 15:57:08', NULL),
(482, 'facebook-f', 'fab fa-facebook-f', '2020-01-10 15:57:08', NULL),
(483, 'Facebook Messenger', 'fab fa-facebook-messenger', '2020-01-10 15:57:08', NULL),
(484, 'cuadrado de facebook', 'fab fa-facebook-square', '2020-01-10 15:57:08', NULL),
(485, 'ventilador', 'fas fa-fan', '2020-01-10 15:57:08', NULL),
(486, 'juegos de vuelo de fantasia', 'fab fa-fantasy-flight-games', '2020-01-10 15:57:08', NULL),
(487, 'retroceso rapido', 'fas fa-fast-backward', '2020-01-10 15:57:08', NULL),
(488, 'avance rapido', 'fas fa-fast-forward', '2020-01-10 15:57:09', NULL),
(489, 'fax', 'fas fa-fax', '2020-01-10 15:57:09', NULL),
(490, 'pluma', 'fas fa-feather', '2020-01-10 15:57:09', NULL),
(491, 'feather-alt', 'fas fa-feather-alt', '2020-01-10 15:57:09', NULL),
(492, 'Federal Express', 'fab fa-fedex', '2020-01-10 15:57:09', NULL),
(493, 'fedora', 'fab fa-fedora', '2020-01-10 15:57:09', NULL),
(494, 'hembra', 'fas fa-female', '2020-01-10 15:57:09', NULL),
(495, 'caza de reaccion', 'fas fa-fighter-jet', '2020-01-10 15:57:09', NULL),
(496, 'figma', 'fab fa-figma', '2020-01-10 15:57:09', NULL),
(497, 'archivo', 'fas fa-file', '2020-01-10 15:57:09', NULL),
(498, 'archivo', 'far fa-file', '2020-01-10 15:57:09', NULL),
(499, 'file-alt', 'fas fa-file-alt', '2020-01-10 15:57:09', NULL),
(500, 'file-alt', 'far fa-file-alt', '2020-01-10 15:57:09', NULL),
(501, 'archivo-archivo', 'fas fa-file-archive', '2020-01-10 15:57:09', NULL),
(502, 'archivo-archivo', 'far fa-file-archive', '2020-01-10 15:57:09', NULL),
(503, 'archivo de audio', 'fas fa-file-audio', '2020-01-10 15:57:10', NULL),
(504, 'archivo de audio', 'far fa-file-audio', '2020-01-10 15:57:10', NULL),
(505, 'codigo de archivo', 'fas fa-file-code', '2020-01-10 15:57:10', NULL),
(506, 'codigo de archivo', 'far fa-file-code', '2020-01-10 15:57:10', NULL),
(507, 'archivo-contrato', 'fas fa-file-contract', '2020-01-10 15:57:10', NULL),
(508, 'file-csv', 'fas fa-file-csv', '2020-01-10 15:57:10', NULL),
(509, 'descarga de archivos', 'fas fa-file-download', '2020-01-10 15:57:10', NULL),
(510, 'archivo-excel', 'fas fa-file-excel', '2020-01-10 15:57:10', NULL),
(511, 'archivo-excel', 'far fa-file-excel', '2020-01-10 15:57:10', NULL),
(512, 'exportacion de archivos', 'fas fa-file-export', '2020-01-10 15:57:10', NULL),
(513, 'imagen de archivo', 'fas fa-file-image', '2020-01-10 15:57:10', NULL),
(514, 'imagen de archivo', 'far fa-file-image', '2020-01-10 15:57:10', NULL),
(515, 'importacion de archivos', 'fas fa-file-import', '2020-01-10 15:57:10', NULL),
(516, 'factura de archivo', 'fas fa-file-invoice', '2020-01-10 15:57:10', NULL),
(517, 'archivo-factura-dolar', 'fas fa-file-invoice-dollar', '2020-01-10 15:57:10', NULL),
(518, 'archivo medico', 'fas fa-file-medical', '2020-01-10 15:57:10', NULL),
(519, 'file-medical-alt', 'fas fa-file-medical-alt', '2020-01-10 15:57:10', NULL),
(520, 'archivo-pdf', 'fas fa-file-pdf', '2020-01-10 15:57:11', NULL),
(521, 'archivo-pdf', 'far fa-file-pdf', '2020-01-10 15:57:11', NULL),
(522, 'archivo-powerpoint', 'fas fa-file-powerpoint', '2020-01-10 15:57:11', NULL),
(523, 'archivo-powerpoint', 'far fa-file-powerpoint', '2020-01-10 15:57:11', NULL),
(524, 'prescripcion de archivo', 'fas fa-file-prescription', '2020-01-10 15:57:11', NULL),
(525, 'firma de archivo', 'fas fa-file-signature', '2020-01-10 15:57:11', NULL),
(526, 'Subir archivo', 'fas fa-file-upload', '2020-01-10 15:57:11', NULL),
(527, 'archivo de video', 'fas fa-file-video', '2020-01-10 15:57:11', NULL),
(528, 'archivo de video', 'far fa-file-video', '2020-01-10 15:57:11', NULL),
(529, 'palabra-archivo', 'fas fa-file-word', '2020-01-10 15:57:11', NULL),
(530, 'palabra-archivo', 'far fa-file-word', '2020-01-10 15:57:11', NULL),
(531, 'llenar', 'fas fa-fill', '2020-01-10 15:57:11', NULL),
(532, 'relleno de goteo', 'fas fa-fill-drip', '2020-01-10 15:57:11', NULL),
(533, 'pelicula', 'fas fa-film', '2020-01-10 15:57:11', NULL),
(534, 'filtrar', 'fas fa-filter', '2020-01-10 15:57:11', NULL),
(535, 'huella dactilar', 'fas fa-fingerprint', '2020-01-10 15:57:12', NULL),
(536, 'fuego', 'fas fa-fire', '2020-01-10 15:57:12', NULL),
(537, 'fire-alt', 'fas fa-fire-alt', '2020-01-10 15:57:12', NULL),
(538, 'extintor de incendios', 'fas fa-fire-extinguisher', '2020-01-10 15:57:12', NULL),
(539, 'Firefox', 'fab fa-firefox', '2020-01-10 15:57:12', NULL),
(540, 'firefox-browser', 'fab fa-firefox-browser', '2020-01-10 15:57:12', NULL),
(541, 'primeros auxilios', 'fas fa-first-aid', '2020-01-10 15:57:12', NULL),
(542, 'primer orden', 'fab fa-first-order', '2020-01-10 15:57:12', NULL),
(543, 'primer orden-alt', 'fab fa-first-order-alt', '2020-01-10 15:57:12', NULL),
(544, 'primer borrador', 'fab fa-firstdraft', '2020-01-10 15:57:12', NULL),
(545, 'pez', 'fas fa-fish', '2020-01-10 15:57:12', NULL),
(546, 'puño en alto', 'fas fa-fist-raised', '2020-01-10 15:57:12', NULL),
(547, 'bandera', 'fas fa-flag', '2020-01-10 15:57:13', NULL),
(548, 'bandera', 'far fa-flag', '2020-01-10 15:57:13', NULL),
(549, 'bandera a cuadros', 'fas fa-flag-checkered', '2020-01-10 15:57:13', NULL),
(550, 'bandera-usa', 'fas fa-flag-usa', '2020-01-10 15:57:13', NULL),
(551, 'matraz', 'fas fa-flask', '2020-01-10 15:57:13', NULL),
(552, 'flickr', 'fab fa-flickr', '2020-01-10 15:57:13', NULL),
(553, 'flipboard', 'fab fa-flipboard', '2020-01-10 15:57:13', NULL),
(554, 'sonrojado', 'fas fa-flushed', '2020-01-10 15:57:13', NULL),
(555, 'sonrojado', 'far fa-flushed', '2020-01-10 15:57:13', NULL),
(556, 'volar', 'fab fa-fly', '2020-01-10 15:57:13', NULL),
(557, 'carpeta', 'fas fa-folder', '2020-01-10 15:57:13', NULL),
(558, 'carpeta', 'far fa-folder', '2020-01-10 15:57:14', NULL),
(559, 'carpeta-menos', 'fas fa-folder-minus', '2020-01-10 15:57:14', NULL),
(560, 'carpeta abierta', 'fas fa-folder-open', '2020-01-10 15:57:14', NULL),
(561, 'carpeta abierta', 'far fa-folder-open', '2020-01-10 15:57:14', NULL),
(562, 'carpeta-plus', 'fas fa-folder-plus', '2020-01-10 15:57:14', NULL),
(563, 'fuente', 'fas fa-font', '2020-01-10 15:57:14', NULL),
(564, 'font-awesome', 'fab fa-font-awesome', '2020-01-10 15:57:14', NULL),
(565, 'font-awesome-alt', 'fab fa-font-awesome-alt', '2020-01-10 15:57:14', NULL),
(566, 'font-awesome-flag', 'fab fa-font-awesome-flag', '2020-01-10 15:57:14', NULL),
(567, 'fonticons', 'fab fa-fonticons', '2020-01-10 15:57:14', NULL),
(568, 'fonticons-fi', 'fab fa-fonticons-fi', '2020-01-10 15:57:14', NULL),
(569, 'pelota de futbol', 'fas fa-football-ball', '2020-01-10 15:57:14', NULL),
(570, 'fuerte-impresionante', 'fab fa-fort-awesome', '2020-01-10 15:57:14', NULL),
(571, 'fort-awesome-alt', 'fab fa-fort-awesome-alt', '2020-01-10 15:57:14', NULL),
(572, 'forumbee', 'fab fa-forumbee', '2020-01-10 15:57:15', NULL),
(573, 'adelante', 'fas fa-forward', '2020-01-10 15:57:15', NULL),
(574, 'firme', 'fab fa-foursquare', '2020-01-10 15:57:15', NULL),
(575, 'campo de codigo libre', 'fab fa-free-code-camp', '2020-01-10 15:57:15', NULL),
(576, 'freebsd', 'fab fa-freebsd', '2020-01-10 15:57:15', NULL),
(577, 'rana', 'fas fa-frog', '2020-01-10 15:57:15', NULL),
(578, 'fruncir el ceño', 'fas fa-frown', '2020-01-10 15:57:15', NULL),
(579, 'fruncir el ceño', 'far fa-frown', '2020-01-10 15:57:15', NULL),
(580, 'fruncir el ceño', 'fas fa-frown-open', '2020-01-10 15:57:15', NULL),
(581, 'fruncir el ceño', 'far fa-frown-open', '2020-01-10 15:57:15', NULL),
(582, 'fulcro', 'fab fa-fulcrum', '2020-01-10 15:57:15', NULL),
(583, 'dolar-embudo', 'fas fa-funnel-dollar', '2020-01-10 15:57:15', NULL),
(584, 'futbol', 'fas fa-futbol', '2020-01-10 15:57:15', NULL),
(585, 'futbol', 'far fa-futbol', '2020-01-10 15:57:15', NULL),
(586, 'republica galactica', 'fab fa-galactic-republic', '2020-01-10 15:57:15', NULL),
(587, 'senado galactico', 'fab fa-galactic-senate', '2020-01-10 15:57:15', NULL),
(588, 'gamepad', 'fas fa-gamepad', '2020-01-10 15:57:16', NULL),
(589, 'bomba de gas', 'fas fa-gas-pump', '2020-01-10 15:57:16', NULL),
(590, 'mazo', 'fas fa-gavel', '2020-01-10 15:57:16', NULL),
(591, 'joya', 'fas fa-gem', '2020-01-10 15:57:16', NULL),
(592, 'joya', 'far fa-gem', '2020-01-10 15:57:16', NULL),
(593, 'sin genero', 'fas fa-genderless', '2020-01-10 15:57:16', NULL),
(594, 'bolsillo', 'fab fa-get-pocket', '2020-01-10 15:57:17', NULL),
(595, 'gg', 'fab fa-gg', '2020-01-10 15:57:17', NULL),
(596, 'gg-circle', 'fab fa-gg-circle', '2020-01-10 15:57:17', NULL),
(597, 'fantasma', 'fas fa-ghost', '2020-01-10 15:57:17', NULL),
(598, 'regalo', 'fas fa-gift', '2020-01-10 15:57:17', NULL),
(599, 'regalos', 'fas fa-gifts', '2020-01-10 15:57:17', NULL),
(600, 'git', 'fab fa-git', '2020-01-10 15:57:17', NULL),
(601, 'git-alt', 'fab fa-git-alt', '2020-01-10 15:57:17', NULL),
(602, 'git-square', 'fab fa-git-square', '2020-01-10 15:57:17', NULL),
(603, 'github', 'fab fa-github', '2020-01-10 15:57:17', NULL),
(604, 'github-alt', 'fab fa-github-alt', '2020-01-10 15:57:17', NULL),
(605, 'github-square', 'fab fa-github-square', '2020-01-10 15:57:18', NULL),
(606, 'gitkraken', 'fab fa-gitkraken', '2020-01-10 15:57:18', NULL),
(607, 'gitlab', 'fab fa-gitlab', '2020-01-10 15:57:18', NULL),
(608, 'gitter', 'fab fa-gitter', '2020-01-10 15:57:18', NULL),
(609, 'aclamaciones de vidrio', 'fas fa-glass-cheers', '2020-01-10 15:57:18', NULL),
(610, 'copa de martini', 'fas fa-glass-martini', '2020-01-10 15:57:18', NULL),
(611, 'copa-martini-alt', 'fas fa-glass-martini-alt', '2020-01-10 15:57:18', NULL),
(612, 'whisky de vidrio', 'fas fa-glass-whiskey', '2020-01-10 15:57:18', NULL),
(613, 'vasos', 'fas fa-glasses', '2020-01-10 15:57:18', NULL),
(614, 'deslizamiento', 'fab fa-glide', '2020-01-10 15:57:18', NULL),
(615, 'deslizarse-g', 'fab fa-glide-g', '2020-01-10 15:57:18', NULL),
(616, 'globo', 'fas fa-globe', '2020-01-10 15:57:18', NULL),
(617, 'globo-africa', 'fas fa-globe-africa', '2020-01-10 15:57:19', NULL),
(618, 'globo-americas', 'fas fa-globe-americas', '2020-01-10 15:57:19', NULL),
(619, 'globo-asia', 'fas fa-globe-asia', '2020-01-10 15:57:19', NULL),
(620, 'globo-europa', 'fas fa-globe-europe', '2020-01-10 15:57:19', NULL),
(621, 'gofore', 'fab fa-gofore', '2020-01-10 15:57:19', NULL),
(622, 'pelota de golf', 'fas fa-golf-ball', '2020-01-10 15:57:19', NULL),
(623, 'Goodreads', 'fab fa-goodreads', '2020-01-10 15:57:19', NULL),
(624, 'goodreads-g', 'fab fa-goodreads-g', '2020-01-10 15:57:19', NULL),
(625, 'google', 'fab fa-google', '2020-01-10 15:57:19', NULL),
(626, 'Google Drive', 'fab fa-google-drive', '2020-01-10 15:57:19', NULL),
(627, 'Google Play', 'fab fa-google-play', '2020-01-10 15:57:19', NULL),
(628, 'Google Mas', 'fab fa-google-plus', '2020-01-10 15:57:19', NULL),
(629, 'google-plus-g', 'fab fa-google-plus-g', '2020-01-10 15:57:19', NULL),
(630, 'google-plus-square', 'fab fa-google-plus-square', '2020-01-10 15:57:19', NULL),
(631, 'Cartera de Google', 'fab fa-google-wallet', '2020-01-10 15:57:19', NULL),
(632, 'gopuram', 'fas fa-gopuram', '2020-01-10 15:57:19', NULL),
(633, 'gorro de graduacion', 'fas fa-graduation-cap', '2020-01-10 15:57:19', NULL),
(634, 'gratipay', 'fab fa-gratipay', '2020-01-10 15:57:20', NULL),
(635, 'grav', 'fab fa-grav', '2020-01-10 15:57:20', NULL),
(636, 'mas grande que', 'fas fa-greater-than', '2020-01-10 15:57:20', NULL),
(637, 'mayor que igual', 'fas fa-greater-than-equal', '2020-01-10 15:57:20', NULL),
(638, 'mueca', 'fas fa-grimace', '2020-01-10 15:57:20', NULL),
(639, 'mueca', 'far fa-grimace', '2020-01-10 15:57:20', NULL),
(640, 'mueca', 'fas fa-grin', '2020-01-10 15:57:20', NULL),
(641, 'mueca', 'far fa-grin', '2020-01-10 15:57:20', NULL),
(642, 'grin-alt', 'fas fa-grin-alt', '2020-01-10 15:57:20', NULL),
(643, 'grin-alt', 'far fa-grin-alt', '2020-01-10 15:57:20', NULL),
(644, 'haz de sonrisa', 'fas fa-grin-beam', '2020-01-10 15:57:20', NULL),
(645, 'haz de sonrisa', 'far fa-grin-beam', '2020-01-10 15:57:20', NULL),
(646, 'sonrisa-haz-sudor', 'fas fa-grin-beam-sweat', '2020-01-10 15:57:20', NULL),
(647, 'sonrisa-haz-sudor', 'far fa-grin-beam-sweat', '2020-01-10 15:57:20', NULL),
(648, 'corazones sonrientes', 'fas fa-grin-hearts', '2020-01-10 15:57:20', NULL),
(649, 'corazones sonrientes', 'far fa-grin-hearts', '2020-01-10 15:57:20', NULL),
(650, 'entrecerrar los ojos', 'fas fa-grin-squint', '2020-01-10 15:57:20', NULL),
(651, 'entrecerrar los ojos', 'far fa-grin-squint', '2020-01-10 15:57:20', NULL),
(652, 'sonreir entrecerrar los ojos', 'fas fa-grin-squint-tears', '2020-01-10 15:57:20', NULL),
(653, 'sonreir entrecerrar los ojos', 'far fa-grin-squint-tears', '2020-01-10 15:57:21', NULL),
(654, 'estrellas sonrientes', 'fas fa-grin-stars', '2020-01-10 15:57:21', NULL),
(655, 'estrellas sonrientes', 'far fa-grin-stars', '2020-01-10 15:57:21', NULL),
(656, 'sonrisas', 'fas fa-grin-tears', '2020-01-10 15:57:21', NULL),
(657, 'sonrisas', 'far fa-grin-tears', '2020-01-10 15:57:21', NULL),
(658, 'lengua sonriente', 'fas fa-grin-tongue', '2020-01-10 15:57:21', NULL),
(659, 'lengua sonriente', 'far fa-grin-tongue', '2020-01-10 15:57:21', NULL),
(660, 'entrecerrar la lengua', 'fas fa-grin-tongue-squint', '2020-01-10 15:57:21', NULL),
(661, 'entrecerrar la lengua', 'far fa-grin-tongue-squint', '2020-01-10 15:57:21', NULL),
(662, 'guiño de lengua', 'fas fa-grin-tongue-wink', '2020-01-10 15:57:22', NULL),
(663, 'guiño de lengua', 'far fa-grin-tongue-wink', '2020-01-10 15:57:22', NULL),
(664, 'guiño', 'fas fa-grin-wink', '2020-01-10 15:57:22', NULL),
(665, 'guiño', 'far fa-grin-wink', '2020-01-10 15:57:22', NULL),
(666, 'agarre horizontal', 'fas fa-grip-horizontal', '2020-01-10 15:57:22', NULL),
(667, 'lineas de agarre', 'fas fa-grip-lines', '2020-01-10 15:57:22', NULL),
(668, 'lineas de agarre verticales', 'fas fa-grip-lines-vertical', '2020-01-10 15:57:22', NULL),
(669, 'agarre vertical', 'fas fa-grip-vertical', '2020-01-10 15:57:22', NULL),
(670, 'gripfire', 'fab fa-gripfire', '2020-01-10 15:57:22', NULL),
(671, 'gruñido', 'fab fa-grunt', '2020-01-10 15:57:23', NULL),
(672, 'guitarra', 'fas fa-guitar', '2020-01-10 15:57:23', NULL),
(673, 'trago', 'fab fa-gulp', '2020-01-10 15:57:23', NULL),
(674, 'cuadrado h', 'fas fa-h-square', '2020-01-10 15:57:23', NULL),
(675, 'noticias hacker', 'fab fa-hacker-news', '2020-01-10 15:57:23', NULL),
(676, 'hacker-news-square', 'fab fa-hacker-news-square', '2020-01-10 15:57:23', NULL),
(677, 'hackerrank', 'fab fa-hackerrank', '2020-01-10 15:57:23', NULL),
(678, 'hamburguesa', 'fas fa-hamburger', '2020-01-10 15:57:23', NULL),
(679, 'martillo', 'fas fa-hammer', '2020-01-10 15:57:23', NULL),
(680, 'hamsa', 'fas fa-hamsa', '2020-01-10 15:57:23', NULL),
(681, 'tomar de las manos', 'fas fa-hand-holding', '2020-01-10 15:57:23', NULL),
(682, 'corazon de mano', 'fas fa-hand-holding-heart', '2020-01-10 15:57:23', NULL),
(683, 'mano-usd', 'fas fa-hand-holding-usd', '2020-01-10 15:57:23', NULL),
(684, 'lagarto de mano', 'fas fa-hand-lizard', '2020-01-10 15:57:23', NULL),
(685, 'lagarto de mano', 'far fa-hand-lizard', '2020-01-10 15:57:23', NULL),
(686, 'mano-dedo medio', 'fas fa-hand-middle-finger', '2020-01-10 15:57:23', NULL),
(687, 'papel de mano', 'fas fa-hand-paper', '2020-01-10 15:57:23', NULL),
(688, 'papel de mano', 'far fa-hand-paper', '2020-01-10 15:57:23', NULL),
(689, 'paz de manos', 'fas fa-hand-peace', '2020-01-10 15:57:24', NULL),
(690, 'paz de manos', 'far fa-hand-peace', '2020-01-10 15:57:24', NULL),
(691, 'hand-point-down', 'fas fa-hand-point-down', '2020-01-10 15:57:24', NULL),
(692, 'hand-point-down', 'far fa-hand-point-down', '2020-01-10 15:57:24', NULL),
(693, 'mano-punto-izquierda', 'fas fa-hand-point-left', '2020-01-10 15:57:24', NULL),
(694, 'mano-punto-izquierda', 'far fa-hand-point-left', '2020-01-10 15:57:24', NULL),
(695, 'mano-punto-derecha', 'fas fa-hand-point-right', '2020-01-10 15:57:24', NULL),
(696, 'mano-punto-derecha', 'far fa-hand-point-right', '2020-01-10 15:57:24', NULL),
(697, 'apuntar hacia arriba', 'fas fa-hand-point-up', '2020-01-10 15:57:24', NULL),
(698, 'apuntar hacia arriba', 'far fa-hand-point-up', '2020-01-10 15:57:24', NULL),
(699, 'puntero de mano', 'fas fa-hand-pointer', '2020-01-10 15:57:24', NULL),
(700, 'puntero de mano', 'far fa-hand-pointer', '2020-01-10 15:57:24', NULL),
(701, 'mano-roca', 'fas fa-hand-rock', '2020-01-10 15:57:24', NULL),
(702, 'mano-roca', 'far fa-hand-rock', '2020-01-10 15:57:24', NULL),
(703, 'tijeras de mano', 'fas fa-hand-scissors', '2020-01-10 15:57:24', NULL);
INSERT INTO `icono` (`id`, `nom_icono`, `clase_icono`, `created_at`, `updated_at`) VALUES
(704, 'tijeras de mano', 'far fa-hand-scissors', '2020-01-10 15:57:24', NULL),
(705, 'Spock de mano', 'fas fa-hand-spock', '2020-01-10 15:57:25', NULL),
(706, 'Spock de mano', 'far fa-hand-spock', '2020-01-10 15:57:25', NULL),
(707, 'manos', 'fas fa-hands', '2020-01-10 15:57:25', NULL),
(708, 'ayuda de manos', 'fas fa-hands-helping', '2020-01-10 15:57:25', NULL),
(709, 'apreton de manos', 'fas fa-handshake', '2020-01-10 15:57:25', NULL),
(710, 'apreton de manos', 'far fa-handshake', '2020-01-10 15:57:25', NULL),
(711, 'hanukiah', 'fas fa-hanukiah', '2020-01-10 15:57:25', NULL),
(712, 'casco de seguridad', 'fas fa-hard-hat', '2020-01-10 15:57:25', NULL),
(713, 'hashtag', 'fas fa-hashtag', '2020-01-10 15:57:25', NULL),
(714, 'sombrero vaquero', 'fas fa-hat-cowboy', '2020-01-10 15:57:25', NULL),
(715, 'sombrero de vaquero', 'fas fa-hat-cowboy-side', '2020-01-10 15:57:25', NULL),
(716, 'mago sombrero', 'fas fa-hat-wizard', '2020-01-10 15:57:25', NULL),
(717, 'disco duro', 'fas fa-hdd', '2020-01-10 15:57:25', NULL),
(718, 'disco duro', 'far fa-hdd', '2020-01-10 15:57:25', NULL),
(719, 'titulo', 'fas fa-heading', '2020-01-10 15:57:25', NULL),
(720, 'auriculares', 'fas fa-headphones', '2020-01-10 15:57:25', NULL),
(721, 'auriculares-alt', 'fas fa-headphones-alt', '2020-01-10 15:57:25', NULL),
(722, 'auriculares', 'fas fa-headset', '2020-01-10 15:57:26', NULL),
(723, 'corazon', 'fas fa-heart', '2020-01-10 15:57:26', NULL),
(724, 'corazon', 'far fa-heart', '2020-01-10 15:57:26', NULL),
(725, 'desgarrado', 'fas fa-heart-broken', '2020-01-10 15:57:26', NULL),
(726, 'latido del corazon', 'fas fa-heartbeat', '2020-01-10 15:57:26', NULL),
(727, 'helicoptero', 'fas fa-helicopter', '2020-01-10 15:57:26', NULL),
(728, 'resaltador', 'fas fa-highlighter', '2020-01-10 15:57:26', NULL),
(729, 'excursionismo', 'fas fa-hiking', '2020-01-10 15:57:26', NULL),
(730, 'hipopotamo', 'fas fa-hippo', '2020-01-10 15:57:26', NULL),
(731, 'caderas', 'fab fa-hips', '2020-01-10 15:57:26', NULL),
(732, 'contratar un ayudante', 'fab fa-hire-a-helper', '2020-01-10 15:57:26', NULL),
(733, 'historia', 'fas fa-history', '2020-01-10 15:57:26', NULL),
(734, 'disco de hockey', 'fas fa-hockey-puck', '2020-01-10 15:57:26', NULL),
(735, 'baya de acebo', 'fas fa-holly-berry', '2020-01-10 15:57:26', NULL),
(736, 'casa', 'fas fa-home', '2020-01-10 15:57:26', NULL),
(737, 'hooli', 'fab fa-hooli', '2020-01-10 15:57:26', NULL),
(738, 'calao', 'fab fa-hornbill', '2020-01-10 15:57:26', NULL),
(739, 'caballo', 'fas fa-horse', '2020-01-10 15:57:27', NULL),
(740, 'cabeza de caballo', 'fas fa-horse-head', '2020-01-10 15:57:27', NULL),
(741, 'hospital', 'fas fa-hospital', '2020-01-10 15:57:27', NULL),
(742, 'hospital', 'far fa-hospital', '2020-01-10 15:57:27', NULL),
(743, 'hospital-alt', 'fas fa-hospital-alt', '2020-01-10 15:57:27', NULL),
(744, 'simbolo de hospital', 'fas fa-hospital-symbol', '2020-01-10 15:57:27', NULL),
(745, 'Bañera de hidromasaje', 'fas fa-hot-tub', '2020-01-10 15:57:27', NULL),
(746, 'Pancho', 'fas fa-hotdog', '2020-01-10 15:57:27', NULL),
(747, 'hotel', 'fas fa-hotel', '2020-01-10 15:57:27', NULL),
(748, 'hotjar', 'fab fa-hotjar', '2020-01-10 15:57:27', NULL),
(749, 'reloj de arena', 'fas fa-hourglass', '2020-01-10 15:57:27', NULL),
(750, 'reloj de arena', 'far fa-hourglass', '2020-01-10 15:57:27', NULL),
(751, 'reloj de arena', 'fas fa-hourglass-end', '2020-01-10 15:57:27', NULL),
(752, 'medio reloj de arena', 'fas fa-hourglass-half', '2020-01-10 15:57:27', NULL),
(753, 'inicio de reloj de arena', 'fas fa-hourglass-start', '2020-01-10 15:57:27', NULL),
(754, 'daño a la casa', 'fas fa-house-damage', '2020-01-10 15:57:27', NULL),
(755, 'houzz', 'fab fa-houzz', '2020-01-10 15:57:27', NULL),
(756, 'hryvnia', 'fas fa-hryvnia', '2020-01-10 15:57:27', NULL),
(757, 'html5', 'fab fa-html5', '2020-01-10 15:57:27', NULL),
(758, 'hubspot', 'fab fa-hubspot', '2020-01-10 15:57:27', NULL),
(759, 'i-cursor', 'fas fa-i-cursor', '2020-01-10 15:57:27', NULL),
(760, 'helado', 'fas fa-ice-cream', '2020-01-10 15:57:27', NULL),
(761, 'carambanos', 'fas fa-icicles', '2020-01-10 15:57:27', NULL),
(762, 'iconos', 'fas fa-icons', '2020-01-10 15:57:27', NULL),
(763, 'ID insignia', 'fas fa-id-badge', '2020-01-10 15:57:28', NULL),
(764, 'ID insignia', 'far fa-id-badge', '2020-01-10 15:57:28', NULL),
(765, 'tarjeta de identificacion', 'fas fa-id-card', '2020-01-10 15:57:28', NULL),
(766, 'tarjeta de identificacion', 'far fa-id-card', '2020-01-10 15:57:28', NULL),
(767, 'id-card-alt', 'fas fa-id-card-alt', '2020-01-10 15:57:28', NULL),
(768, 'ideal', 'fab fa-ideal', '2020-01-10 15:57:28', NULL),
(769, 'iglu', 'fas fa-igloo', '2020-01-10 15:57:28', NULL),
(770, 'imagen', 'fas fa-image', '2020-01-10 15:57:28', NULL),
(771, 'imagen', 'far fa-image', '2020-01-10 15:57:28', NULL),
(772, 'imagenes', 'fas fa-images', '2020-01-10 15:57:28', NULL),
(773, 'imagenes', 'far fa-images', '2020-01-10 15:57:28', NULL),
(774, 'imdb', 'fab fa-imdb', '2020-01-10 15:57:28', NULL),
(775, 'bandeja de entrada', 'fas fa-inbox', '2020-01-10 15:57:28', NULL),
(776, 'sangrar', 'fas fa-indent', '2020-01-10 15:57:28', NULL),
(777, 'industria', 'fas fa-industry', '2020-01-10 15:57:28', NULL),
(778, 'infinito', 'fas fa-infinity', '2020-01-10 15:57:28', NULL),
(779, 'informacion', 'fas fa-info', '2020-01-10 15:57:28', NULL),
(780, 'circulo de informacion', 'fas fa-info-circle', '2020-01-10 15:57:28', NULL),
(781, 'instagram', 'fab fa-instagram', '2020-01-10 15:57:28', NULL),
(782, 'intercomunicador', 'fab fa-intercom', '2020-01-10 15:57:28', NULL),
(783, 'explorador de Internet', 'fab fa-internet-explorer', '2020-01-10 15:57:28', NULL),
(784, 'invision', 'fab fa-invision', '2020-01-10 15:57:28', NULL),
(785, 'ioxhost', 'fab fa-ioxhost', '2020-01-10 15:57:28', NULL),
(786, 'italico', 'fas fa-italic', '2020-01-10 15:57:28', NULL),
(787, 'picor-io', 'fab fa-itch-io', '2020-01-10 15:57:28', NULL),
(788, 'iTunes', 'fab fa-itunes', '2020-01-10 15:57:28', NULL),
(789, 'nota de iTunes', 'fab fa-itunes-note', '2020-01-10 15:57:29', NULL),
(790, 'Java', 'fab fa-java', '2020-01-10 15:57:29', NULL),
(791, 'jedi', 'fas fa-jedi', '2020-01-10 15:57:29', NULL),
(792, 'orden jedi', 'fab fa-jedi-order', '2020-01-10 15:57:29', NULL),
(793, 'jenkins', 'fab fa-jenkins', '2020-01-10 15:57:29', NULL),
(794, 'jira', 'fab fa-jira', '2020-01-10 15:57:29', NULL),
(795, 'joget', 'fab fa-joget', '2020-01-10 15:57:29', NULL),
(796, 'articulacion', 'fas fa-joint', '2020-01-10 15:57:29', NULL),
(797, 'joomla', 'fab fa-joomla', '2020-01-10 15:57:29', NULL),
(798, 'diario-whills', 'fas fa-journal-whills', '2020-01-10 15:57:29', NULL),
(799, 'js', 'fab fa-js', '2020-01-10 15:57:29', NULL),
(800, 'js-square', 'fab fa-js-square', '2020-01-10 15:57:29', NULL),
(801, 'jsfiddle', 'fab fa-jsfiddle', '2020-01-10 15:57:29', NULL),
(802, 'kaaba', 'fas fa-kaaba', '2020-01-10 15:57:29', NULL),
(803, 'kaggle', 'fab fa-kaggle', '2020-01-10 15:57:29', NULL),
(804, 'llave', 'fas fa-key', '2020-01-10 15:57:29', NULL),
(805, 'base clave', 'fab fa-keybase', '2020-01-10 15:57:29', NULL),
(806, 'teclado', 'fas fa-keyboard', '2020-01-10 15:57:29', NULL),
(807, 'teclado', 'far fa-keyboard', '2020-01-10 15:57:29', NULL),
(808, 'keycdn', 'fab fa-keycdn', '2020-01-10 15:57:30', NULL),
(809, 'khanda', 'fas fa-khanda', '2020-01-10 15:57:30', NULL),
(810, 'pedal de arranque', 'fab fa-kickstarter', '2020-01-10 15:57:30', NULL),
(811, 'kickstarter-k', 'fab fa-kickstarter-k', '2020-01-10 15:57:30', NULL),
(812, 'Beso', 'fas fa-kiss', '2020-01-10 15:57:30', NULL),
(813, 'Beso', 'far fa-kiss', '2020-01-10 15:57:30', NULL),
(814, 'haz de beso', 'fas fa-kiss-beam', '2020-01-10 15:57:30', NULL),
(815, 'haz de beso', 'far fa-kiss-beam', '2020-01-10 15:57:30', NULL),
(816, 'beso-guiño-corazon', 'fas fa-kiss-wink-heart', '2020-01-10 15:57:30', NULL),
(817, 'beso-guiño-corazon', 'far fa-kiss-wink-heart', '2020-01-10 15:57:30', NULL),
(818, 'pajaro del kiwi', 'fas fa-kiwi-bird', '2020-01-10 15:57:30', NULL),
(819, 'korvue', 'fab fa-korvue', '2020-01-10 15:57:30', NULL),
(820, 'punto de referencia', 'fas fa-landmark', '2020-01-10 15:57:30', NULL),
(821, 'idioma', 'fas fa-language', '2020-01-10 15:57:30', NULL),
(822, 'ordenador portatil', 'fas fa-laptop', '2020-01-10 15:57:30', NULL),
(823, 'codigo de computadora portatil', 'fas fa-laptop-code', '2020-01-10 15:57:30', NULL),
(824, 'laptop-medical', 'fas fa-laptop-medical', '2020-01-10 15:57:30', NULL),
(825, 'laravel', 'fab fa-laravel', '2020-01-10 15:57:30', NULL),
(826, 'Last FM', 'fab fa-lastfm', '2020-01-10 15:57:30', NULL),
(827, 'lastfm-square', 'fab fa-lastfm-square', '2020-01-10 15:57:30', NULL),
(828, 'risa', 'fas fa-laugh', '2020-01-10 15:57:30', NULL),
(829, 'risa', 'far fa-laugh', '2020-01-10 15:57:31', NULL),
(830, 'haz de risa', 'fas fa-laugh-beam', '2020-01-10 15:57:31', NULL),
(831, 'haz de risa', 'far fa-laugh-beam', '2020-01-10 15:57:31', NULL),
(832, 'entrecerrar los ojos', 'fas fa-laugh-squint', '2020-01-10 15:57:31', NULL),
(833, 'entrecerrar los ojos', 'far fa-laugh-squint', '2020-01-10 15:57:31', NULL),
(834, 'guiño de risa', 'fas fa-laugh-wink', '2020-01-10 15:57:31', NULL),
(835, 'guiño de risa', 'far fa-laugh-wink', '2020-01-10 15:57:31', NULL),
(836, 'grupo de capas', 'fas fa-layer-group', '2020-01-10 15:57:31', NULL),
(837, 'hoja', 'fas fa-leaf', '2020-01-10 15:57:31', NULL),
(838, 'leanpub', 'fab fa-leanpub', '2020-01-10 15:57:31', NULL),
(839, 'limon', 'fas fa-lemon', '2020-01-10 15:57:31', NULL),
(840, 'limon', 'far fa-lemon', '2020-01-10 15:57:31', NULL),
(841, 'Menos', 'fab fa-less', '2020-01-10 15:57:31', NULL),
(842, 'menos que', 'fas fa-less-than', '2020-01-10 15:57:31', NULL),
(843, 'menos que igual', 'fas fa-less-than-equal', '2020-01-10 15:57:31', NULL),
(844, 'nivel-abajo-alt', 'fas fa-level-down-alt', '2020-01-10 15:57:31', NULL),
(845, 'subir de nivel', 'fas fa-level-up-alt', '2020-01-10 15:57:31', NULL),
(846, 'anillo de vida', 'fas fa-life-ring', '2020-01-10 15:57:31', NULL),
(847, 'anillo de vida', 'far fa-life-ring', '2020-01-10 15:57:31', NULL),
(848, 'bombilla', 'fas fa-lightbulb', '2020-01-10 15:57:31', NULL),
(849, 'bombilla', 'far fa-lightbulb', '2020-01-10 15:57:31', NULL),
(850, 'linea', 'fab fa-line', '2020-01-10 15:57:31', NULL),
(851, 'enlazar', 'fas fa-link', '2020-01-10 15:57:32', NULL),
(852, 'linkedin', 'fab fa-linkedin', '2020-01-10 15:57:32', NULL),
(853, 'linkedin-in', 'fab fa-linkedin-in', '2020-01-10 15:57:32', NULL),
(854, 'linode', 'fab fa-linode', '2020-01-10 15:57:32', NULL),
(855, 'linux', 'fab fa-linux', '2020-01-10 15:57:32', NULL),
(856, 'signo de lira', 'fas fa-lira-sign', '2020-01-10 15:57:32', NULL),
(857, 'lista', 'fas fa-list', '2020-01-10 15:57:32', NULL),
(858, 'list-alt', 'fas fa-list-alt', '2020-01-10 15:57:32', NULL),
(859, 'list-alt', 'far fa-list-alt', '2020-01-10 15:57:32', NULL),
(860, 'list-ol', 'fas fa-list-ol', '2020-01-10 15:57:32', NULL),
(861, 'list-ul', 'fas fa-list-ul', '2020-01-10 15:57:32', NULL),
(862, 'ubicacion-flecha', 'fas fa-location-arrow', '2020-01-10 15:57:32', NULL),
(863, 'bloquear', 'fas fa-lock', '2020-01-10 15:57:32', NULL),
(864, 'cerradura abierta', 'fas fa-lock-open', '2020-01-10 15:57:32', NULL),
(865, 'flecha larga-alt-abajo', 'fas fa-long-arrow-alt-down', '2020-01-10 15:57:32', NULL),
(866, 'flecha larga-alt-izquierda', 'fas fa-long-arrow-alt-left', '2020-01-10 15:57:32', NULL),
(867, 'flecha larga-alt-derecha', 'fas fa-long-arrow-alt-right', '2020-01-10 15:57:32', NULL),
(868, 'flecha larga-alt-arriba', 'fas fa-long-arrow-alt-up', '2020-01-10 15:57:32', NULL),
(869, 'vision baja', 'fas fa-low-vision', '2020-01-10 15:57:33', NULL),
(870, 'carrito de equipaje', 'fas fa-luggage-cart', '2020-01-10 15:57:33', NULL),
(871, 'Lyft', 'fab fa-lyft', '2020-01-10 15:57:33', NULL),
(872, 'magento', 'fab fa-magento', '2020-01-10 15:57:33', NULL),
(873, 'magico', 'fas fa-magic', '2020-01-10 15:57:33', NULL),
(874, 'iman', 'fas fa-magnet', '2020-01-10 15:57:33', NULL),
(875, 'correo masivo', 'fas fa-mail-bulk', '2020-01-10 15:57:33', NULL),
(876, 'mailchimp', 'fab fa-mailchimp', '2020-01-10 15:57:33', NULL),
(877, 'masculino', 'fas fa-male', '2020-01-10 15:57:33', NULL),
(878, 'mandaloriano', 'fab fa-mandalorian', '2020-01-10 15:57:33', NULL),
(879, 'mapa', 'fas fa-map', '2020-01-10 15:57:33', NULL),
(880, 'mapa', 'far fa-map', '2020-01-10 15:57:33', NULL),
(881, 'marcado en el mapa', 'fas fa-map-marked', '2020-01-10 15:57:34', NULL),
(882, 'mapa-marcado-alt', 'fas fa-map-marked-alt', '2020-01-10 15:57:34', NULL),
(883, 'marcador de mapa', 'fas fa-map-marker', '2020-01-10 15:57:34', NULL),
(884, 'map-marker-alt', 'fas fa-map-marker-alt', '2020-01-10 15:57:34', NULL),
(885, 'pin de mapa', 'fas fa-map-pin', '2020-01-10 15:57:34', NULL),
(886, 'signos de mapa', 'fas fa-map-signs', '2020-01-10 15:57:34', NULL),
(887, 'reduccion', 'fab fa-markdown', '2020-01-10 15:57:34', NULL),
(888, 'marcador', 'fas fa-marker', '2020-01-10 15:57:34', NULL),
(889, 'Marte', 'fas fa-mars', '2020-01-10 15:57:34', NULL),
(890, 'doble de marte', 'fas fa-mars-double', '2020-01-10 15:57:34', NULL),
(891, 'carrera de marte', 'fas fa-mars-stroke', '2020-01-10 15:57:34', NULL),
(892, 'mars-stroke-h', 'fas fa-mars-stroke-h', '2020-01-10 15:57:35', NULL),
(893, 'mars-stroke-v', 'fas fa-mars-stroke-v', '2020-01-10 15:57:35', NULL),
(894, 'mascara', 'fas fa-mask', '2020-01-10 15:57:35', NULL),
(895, 'mastodonte', 'fab fa-mastodon', '2020-01-10 15:57:35', NULL),
(896, 'maxcdn', 'fab fa-maxcdn', '2020-01-10 15:57:35', NULL),
(897, 'mdb', 'fab fa-mdb', '2020-01-10 15:57:35', NULL),
(898, 'medalla', 'fas fa-medal', '2020-01-10 15:57:35', NULL),
(899, 'Medapps', 'fab fa-medapps', '2020-01-10 15:57:35', NULL),
(900, 'medio', 'fab fa-medium', '2020-01-10 15:57:35', NULL),
(901, 'medio m', 'fab fa-medium-m', '2020-01-10 15:57:35', NULL),
(902, 'botiquin', 'fas fa-medkit', '2020-01-10 15:57:36', NULL),
(903, 'medrt', 'fab fa-medrt', '2020-01-10 15:57:36', NULL),
(904, 'reunirse', 'fab fa-meetup', '2020-01-10 15:57:36', NULL),
(905, 'megapuerto', 'fab fa-megaport', '2020-01-10 15:57:36', NULL),
(906, 'meh', 'fas fa-meh', '2020-01-10 15:57:36', NULL),
(907, 'meh', 'far fa-meh', '2020-01-10 15:57:36', NULL),
(908, 'meh-blank', 'fas fa-meh-blank', '2020-01-10 15:57:36', NULL),
(909, 'meh-blank', 'far fa-meh-blank', '2020-01-10 15:57:36', NULL),
(910, 'ojos rodantes', 'fas fa-meh-rolling-eyes', '2020-01-10 15:57:36', NULL),
(911, 'ojos rodantes', 'far fa-meh-rolling-eyes', '2020-01-10 15:57:36', NULL),
(912, 'memoria', 'fas fa-memory', '2020-01-10 15:57:36', NULL),
(913, 'Mendeley', 'fab fa-mendeley', '2020-01-10 15:57:36', NULL),
(914, 'Menorah', 'fas fa-menorah', '2020-01-10 15:57:36', NULL),
(915, 'mercurio', 'fas fa-mercury', '2020-01-10 15:57:36', NULL),
(916, 'meteorito', 'fas fa-meteor', '2020-01-10 15:57:36', NULL),
(917, 'microblog', 'fab fa-microblog', '2020-01-10 15:57:37', NULL),
(918, 'pastilla', 'fas fa-microchip', '2020-01-10 15:57:37', NULL),
(919, 'microfono', 'fas fa-microphone', '2020-01-10 15:57:37', NULL),
(920, 'microfono-alt', 'fas fa-microphone-alt', '2020-01-10 15:57:37', NULL),
(921, 'microfono-alt-barra oblicua', 'fas fa-microphone-alt-slash', '2020-01-10 15:57:37', NULL),
(922, 'barra de microfono', 'fas fa-microphone-slash', '2020-01-10 15:57:37', NULL),
(923, 'microscopio', 'fas fa-microscope', '2020-01-10 15:57:37', NULL),
(924, 'microsoft', 'fab fa-microsoft', '2020-01-10 15:57:37', NULL),
(925, 'menos', 'fas fa-minus', '2020-01-10 15:57:37', NULL),
(926, 'circulo menos', 'fas fa-minus-circle', '2020-01-10 15:57:37', NULL),
(927, 'cuadrado menos', 'fas fa-minus-square', '2020-01-10 15:57:37', NULL),
(928, 'cuadrado menos', 'far fa-minus-square', '2020-01-10 15:57:38', NULL),
(929, 'miton', 'fas fa-mitten', '2020-01-10 15:57:38', NULL),
(930, 'mezcla', 'fab fa-mix', '2020-01-10 15:57:38', NULL),
(931, 'mixcloud', 'fab fa-mixcloud', '2020-01-10 15:57:38', NULL),
(932, 'mizuni', 'fab fa-mizuni', '2020-01-10 15:57:38', NULL),
(933, 'movil', 'fas fa-mobile', '2020-01-10 15:57:38', NULL),
(934, 'mobile-alt', 'fas fa-mobile-alt', '2020-01-10 15:57:38', NULL),
(935, 'modx', 'fab fa-modx', '2020-01-10 15:57:38', NULL),
(936, 'monero', 'fab fa-monero', '2020-01-10 15:57:38', NULL),
(937, 'billete de dinero', 'fas fa-money-bill', '2020-01-10 15:57:38', NULL),
(938, 'dinero-factura-alt', 'fas fa-money-bill-alt', '2020-01-10 15:57:38', NULL),
(939, 'dinero-factura-alt', 'far fa-money-bill-alt', '2020-01-10 15:57:39', NULL),
(940, 'ola de dinero', 'fas fa-money-bill-wave', '2020-01-10 15:57:39', NULL),
(941, 'money-bill-wave-alt', 'fas fa-money-bill-wave-alt', '2020-01-10 15:57:39', NULL),
(942, 'cheque de dinero', 'fas fa-money-check', '2020-01-10 15:57:39', NULL),
(943, 'cheque-dinero-alt', 'fas fa-money-check-alt', '2020-01-10 15:57:39', NULL),
(944, 'Monumento', 'fas fa-monument', '2020-01-10 15:57:39', NULL),
(945, 'Luna', 'fas fa-moon', '2020-01-10 15:57:39', NULL),
(946, 'Luna', 'far fa-moon', '2020-01-10 15:57:39', NULL),
(947, 'mortero', 'fas fa-mortar-pestle', '2020-01-10 15:57:39', NULL),
(948, 'mezquita', 'fas fa-mosque', '2020-01-10 15:57:39', NULL),
(949, 'motocicleta', 'fas fa-motorcycle', '2020-01-10 15:57:39', NULL),
(950, 'montaña', 'fas fa-mountain', '2020-01-10 15:57:39', NULL),
(951, 'raton', 'fas fa-mouse', '2020-01-10 15:57:39', NULL),
(952, 'Puntero del raton', 'fas fa-mouse-pointer', '2020-01-10 15:57:39', NULL),
(953, 'taza caliente', 'fas fa-mug-hot', '2020-01-10 15:57:39', NULL),
(954, 'musica', 'fas fa-music', '2020-01-10 15:57:39', NULL),
(955, 'napster', 'fab fa-napster', '2020-01-10 15:57:39', NULL),
(956, 'neos', 'fab fa-neos', '2020-01-10 15:57:39', NULL),
(957, 'cableado de red', 'fas fa-network-wired', '2020-01-10 15:57:39', NULL),
(958, 'neutro', 'fas fa-neuter', '2020-01-10 15:57:39', NULL),
(959, 'periodico', 'fas fa-newspaper', '2020-01-10 15:57:39', NULL),
(960, 'periodico', 'far fa-newspaper', '2020-01-10 15:57:40', NULL),
(961, 'nimblr', 'fab fa-nimblr', '2020-01-10 15:57:40', NULL),
(962, 'nodo', 'fab fa-node', '2020-01-10 15:57:40', NULL),
(963, 'nodo-js', 'fab fa-node-js', '2020-01-10 15:57:40', NULL),
(964, 'no es igual', 'fas fa-not-equal', '2020-01-10 15:57:40', NULL),
(965, 'notas medicas', 'fas fa-notes-medical', '2020-01-10 15:57:40', NULL),
(966, 'npm', 'fab fa-npm', '2020-01-10 15:57:40', NULL),
(967, 'ns8', 'fab fa-ns8', '2020-01-10 15:57:40', NULL),
(968, 'nutricionix', 'fab fa-nutritionix', '2020-01-10 15:57:40', NULL),
(969, 'grupo de objetos', 'fas fa-object-group', '2020-01-10 15:57:40', NULL),
(970, 'grupo de objetos', 'far fa-object-group', '2020-01-10 15:57:40', NULL),
(971, 'objeto-desagrupar', 'fas fa-object-ungroup', '2020-01-10 15:57:40', NULL),
(972, 'objeto-desagrupar', 'far fa-object-ungroup', '2020-01-10 15:57:40', NULL),
(973, 'odnoklassniki', 'fab fa-odnoklassniki', '2020-01-10 15:57:40', NULL),
(974, 'odnoklassniki-square', 'fab fa-odnoklassniki-square', '2020-01-10 15:57:40', NULL),
(975, 'lata de aceite', 'fas fa-oil-can', '2020-01-10 15:57:40', NULL),
(976, 'vieja republica', 'fab fa-old-republic', '2020-01-10 15:57:40', NULL),
(977, 'om', 'fas fa-om', '2020-01-10 15:57:40', NULL),
(978, 'carro abierto', 'fab fa-opencart', '2020-01-10 15:57:40', NULL),
(979, 'openid', 'fab fa-openid', '2020-01-10 15:57:40', NULL),
(980, 'opera', 'fab fa-opera', '2020-01-10 15:57:41', NULL),
(981, 'optin-monster', 'fab fa-optin-monster', '2020-01-10 15:57:41', NULL),
(982, 'orcid', 'fab fa-orcid', '2020-01-10 15:57:41', NULL),
(983, 'osi', 'fab fa-osi', '2020-01-10 15:57:41', NULL),
(984, 'nutria', 'fas fa-otter', '2020-01-10 15:57:41', NULL),
(985, 'outdent', 'fas fa-outdent', '2020-01-10 15:57:41', NULL),
(986, 'pagina 4', 'fab fa-page4', '2020-01-10 15:57:41', NULL),
(987, 'lineas de pagina', 'fab fa-pagelines', '2020-01-10 15:57:41', NULL),
(988, 'buscapersonas', 'fas fa-pager', '2020-01-10 15:57:41', NULL),
(989, 'Cepillo de pintura', 'fas fa-paint-brush', '2020-01-10 15:57:41', NULL),
(990, 'rodillo', 'fas fa-paint-roller', '2020-01-10 15:57:41', NULL),
(991, 'paleta', 'fas fa-palette', '2020-01-10 15:57:41', NULL),
(992, 'pelado', 'fab fa-palfed', '2020-01-10 15:57:41', NULL),
(993, 'paleta', 'fas fa-pallet', '2020-01-10 15:57:41', NULL),
(994, 'avion de papel', 'fas fa-paper-plane', '2020-01-10 15:57:41', NULL),
(995, 'avion de papel', 'far fa-paper-plane', '2020-01-10 15:57:41', NULL),
(996, 'clip de papel', 'fas fa-paperclip', '2020-01-10 15:57:41', NULL),
(997, 'caja de paracaidas', 'fas fa-parachute-box', '2020-01-10 15:57:41', NULL),
(998, 'parrafo', 'fas fa-paragraph', '2020-01-10 15:57:41', NULL),
(999, 'estacionamiento', 'fas fa-parking', '2020-01-10 15:57:41', NULL),
(1000, 'pasaporte', 'fas fa-passport', '2020-01-10 15:57:41', NULL),
(1001, 'pastafarismo', 'fas fa-pastafarianism', '2020-01-10 15:57:41', NULL),
(1002, 'pegar', 'fas fa-paste', '2020-01-10 15:57:42', NULL),
(1003, 'patreon', 'fab fa-patreon', '2020-01-10 15:57:42', NULL),
(1004, 'pausa', 'fas fa-pause', '2020-01-10 15:57:42', NULL),
(1005, 'pausa-circulo', 'fas fa-pause-circle', '2020-01-10 15:57:42', NULL),
(1006, 'pausa-circulo', 'far fa-pause-circle', '2020-01-10 15:57:42', NULL),
(1007, 'pata', 'fas fa-paw', '2020-01-10 15:57:42', NULL),
(1008, 'paypal', 'fab fa-paypal', '2020-01-10 15:57:42', NULL),
(1009, 'paz', 'fas fa-peace', '2020-01-10 15:57:42', NULL),
(1010, 'boligrafo', 'fas fa-pen', '2020-01-10 15:57:42', NULL),
(1011, 'pen-alt', 'fas fa-pen-alt', '2020-01-10 15:57:42', NULL),
(1012, 'elegante', 'fas fa-pen-fancy', '2020-01-10 15:57:42', NULL),
(1013, 'plumilla', 'fas fa-pen-nib', '2020-01-10 15:57:42', NULL),
(1014, 'pluma cuadrada', 'fas fa-pen-square', '2020-01-10 15:57:42', NULL),
(1015, 'pencil-alt', 'fas fa-pencil-alt', '2020-01-10 15:57:42', NULL),
(1016, 'regla de lapiz', 'fas fa-pencil-ruler', '2020-01-10 15:57:42', NULL),
(1017, 'centavo', 'fab fa-penny-arcade', '2020-01-10 15:57:42', NULL),
(1018, 'llevar a la gente', 'fas fa-people-carry', '2020-01-10 15:57:42', NULL),
(1019, 'picante', 'fas fa-pepper-hot', '2020-01-10 15:57:43', NULL),
(1020, 'por ciento', 'fas fa-percent', '2020-01-10 15:57:43', NULL),
(1021, 'porcentaje', 'fas fa-percentage', '2020-01-10 15:57:43', NULL),
(1022, 'periscopio', 'fab fa-periscope', '2020-01-10 15:57:43', NULL),
(1023, 'persona-cabina', 'fas fa-person-booth', '2020-01-10 15:57:43', NULL),
(1024, 'fabricador', 'fab fa-phabricator', '2020-01-10 15:57:43', NULL),
(1025, 'Phoenix-framework', 'fab fa-phoenix-framework', '2020-01-10 15:57:43', NULL),
(1026, 'escuadron fenix', 'fab fa-phoenix-squadron', '2020-01-10 15:57:43', NULL),
(1027, 'telefono', 'fas fa-phone', '2020-01-10 15:57:43', NULL),
(1028, 'phone-alt', 'fas fa-phone-alt', '2020-01-10 15:57:43', NULL),
(1029, 'barra de telefono', 'fas fa-phone-slash', '2020-01-10 15:57:43', NULL),
(1030, 'telefono cuadrado', 'fas fa-phone-square', '2020-01-10 15:57:43', NULL),
(1031, 'phone-square-alt', 'fas fa-phone-square-alt', '2020-01-10 15:57:43', NULL),
(1032, 'volumen del telefono', 'fas fa-phone-volume', '2020-01-10 15:57:43', NULL),
(1033, 'foto-video', 'fas fa-photo-video', '2020-01-10 15:57:43', NULL),
(1034, 'php', 'fab fa-php', '2020-01-10 15:57:43', NULL),
(1035, 'flautista de Hamelin', 'fab fa-pied-piper', '2020-01-10 15:57:44', NULL),
(1036, 'pied-piper-alt', 'fab fa-pied-piper-alt', '2020-01-10 15:57:44', NULL),
(1037, 'sombrero de flautista', 'fab fa-pied-piper-hat', '2020-01-10 15:57:44', NULL),
(1038, 'pied-piper-pp', 'fab fa-pied-piper-pp', '2020-01-10 15:57:44', NULL),
(1039, 'pied-piper-square', 'fab fa-pied-piper-square', '2020-01-10 15:57:44', NULL),
(1040, 'hucha', 'fas fa-piggy-bank', '2020-01-10 15:57:44', NULL),
(1041, 'pastillas', 'fas fa-pills', '2020-01-10 15:57:44', NULL),
(1042, 'pinterest', 'fab fa-pinterest', '2020-01-10 15:57:44', NULL),
(1043, 'pinterest-p', 'fab fa-pinterest-p', '2020-01-10 15:57:44', NULL),
(1044, 'pinterest-square', 'fab fa-pinterest-square', '2020-01-10 15:57:44', NULL),
(1045, 'porcion de pizza', 'fas fa-pizza-slice', '2020-01-10 15:57:44', NULL),
(1046, 'lugar de adoracion', 'fas fa-place-of-worship', '2020-01-10 15:57:44', NULL),
(1047, 'avion', 'fas fa-plane', '2020-01-10 15:57:44', NULL),
(1048, 'llegada en avion', 'fas fa-plane-arrival', '2020-01-10 15:57:44', NULL),
(1049, 'salida del avion', 'fas fa-plane-departure', '2020-01-10 15:57:44', NULL),
(1050, 'jugar', 'fas fa-play', '2020-01-10 15:57:44', NULL),
(1051, 'circulo de juego', 'fas fa-play-circle', '2020-01-10 15:57:45', NULL),
(1052, 'circulo de juego', 'far fa-play-circle', '2020-01-10 15:57:45', NULL),
(1053, 'estacion de juegos', 'fab fa-playstation', '2020-01-10 15:57:45', NULL),
(1054, 'enchufe', 'fas fa-plug', '2020-01-10 15:57:45', NULL),
(1055, 'mas', 'fas fa-plus', '2020-01-10 15:57:45', NULL),
(1056, 'circulo mas', 'fas fa-plus-circle', '2020-01-10 15:57:45', NULL),
(1057, 'cuadrado mas', 'fas fa-plus-square', '2020-01-10 15:57:45', NULL),
(1058, 'cuadrado mas', 'far fa-plus-square', '2020-01-10 15:57:45', NULL),
(1059, 'podcast', 'fas fa-podcast', '2020-01-10 15:57:45', NULL),
(1060, 'encuesta', 'fas fa-poll', '2020-01-10 15:57:45', NULL),
(1061, 'encuesta-h', 'fas fa-poll-h', '2020-01-10 15:57:45', NULL),
(1062, 'caca', 'fas fa-poo', '2020-01-10 15:57:45', NULL),
(1063, 'caca tormenta', 'fas fa-poo-storm', '2020-01-10 15:57:45', NULL),
(1064, 'mierda', 'fas fa-poop', '2020-01-10 15:57:45', NULL),
(1065, 'retrato', 'fas fa-portrait', '2020-01-10 15:57:46', NULL),
(1066, 'signo de Libra', 'fas fa-pound-sign', '2020-01-10 15:57:46', NULL),
(1067, 'apagado', 'fas fa-power-off', '2020-01-10 15:57:46', NULL),
(1068, 'orar', 'fas fa-pray', '2020-01-10 15:57:46', NULL),
(1069, 'manos orando', 'fas fa-praying-hands', '2020-01-10 15:57:46', NULL),
(1070, 'prescripcion', 'fas fa-prescription', '2020-01-10 15:57:46', NULL),
(1071, 'botella recetada', 'fas fa-prescription-bottle', '2020-01-10 15:57:46', NULL),
(1072, 'prescripcion-botella-alt', 'fas fa-prescription-bottle-alt', '2020-01-10 15:57:46', NULL),
(1073, 'impresion', 'fas fa-print', '2020-01-10 15:57:46', NULL),
(1074, 'procedimientos', 'fas fa-procedures', '2020-01-10 15:57:46', NULL),
(1075, 'caza de productos', 'fab fa-product-hunt', '2020-01-10 15:57:46', NULL),
(1076, 'diagrama del proyecto', 'fas fa-project-diagram', '2020-01-10 15:57:46', NULL),
(1077, 'empujado', 'fab fa-pushed', '2020-01-10 15:57:46', NULL),
(1078, 'pieza de puzzle', 'fas fa-puzzle-piece', '2020-01-10 15:57:46', NULL),
(1079, 'piton', 'fab fa-python', '2020-01-10 15:57:47', NULL),
(1080, 'qq', 'fab fa-qq', '2020-01-10 15:57:47', NULL),
(1081, 'Codigo QR', 'fas fa-qrcode', '2020-01-10 15:57:47', NULL),
(1082, 'pregunta', 'fas fa-question', '2020-01-10 15:57:47', NULL),
(1083, 'circulo de preguntas', 'fas fa-question-circle', '2020-01-10 15:57:47', NULL),
(1084, 'circulo de preguntas', 'far fa-question-circle', '2020-01-10 15:57:47', NULL),
(1085, 'quidditch', 'fas fa-quidditch', '2020-01-10 15:57:47', NULL),
(1086, 'Quinscape', 'fab fa-quinscape', '2020-01-10 15:57:47', NULL),
(1087, 'quora', 'fab fa-quora', '2020-01-10 15:57:47', NULL),
(1088, 'cita a la izquierda', 'fas fa-quote-left', '2020-01-10 15:57:47', NULL),
(1089, 'cita a la derecha', 'fas fa-quote-right', '2020-01-10 15:57:47', NULL),
(1090, 'Coran', 'fas fa-quran', '2020-01-10 15:57:47', NULL),
(1091, 'proyecto-r', 'fab fa-r-project', '2020-01-10 15:57:47', NULL),
(1092, 'radiacion', 'fas fa-radiation', '2020-01-10 15:57:47', NULL),
(1093, 'radiacion-alt', 'fas fa-radiation-alt', '2020-01-10 15:57:47', NULL),
(1094, 'arco iris', 'fas fa-rainbow', '2020-01-10 15:57:48', NULL),
(1095, 'aleatorio', 'fas fa-random', '2020-01-10 15:57:48', NULL),
(1096, 'frambuesa-pi', 'fab fa-raspberry-pi', '2020-01-10 15:57:48', NULL),
(1097, 'ravelry', 'fab fa-ravelry', '2020-01-10 15:57:48', NULL),
(1098, 'reaccionar', 'fab fa-react', '2020-01-10 15:57:48', NULL),
(1099, 'Reacteurope', 'fab fa-reacteurope', '2020-01-10 15:57:48', NULL),
(1100, 'leame', 'fab fa-readme', '2020-01-10 15:57:48', NULL),
(1101, 'rebelde', 'fab fa-rebel', '2020-01-10 15:57:48', NULL),
(1102, 'recibo', 'fas fa-receipt', '2020-01-10 15:57:48', NULL),
(1103, 'disco de vinilo', 'fas fa-record-vinyl', '2020-01-10 15:57:48', NULL),
(1104, 'reciclar', 'fas fa-recycle', '2020-01-10 15:57:48', NULL),
(1105, 'rio Rojo', 'fab fa-red-river', '2020-01-10 15:57:48', NULL),
(1106, 'reddit', 'fab fa-reddit', '2020-01-10 15:57:48', NULL),
(1107, 'reddit-alien', 'fab fa-reddit-alien', '2020-01-10 15:57:48', NULL),
(1108, 'reddit-square', 'fab fa-reddit-square', '2020-01-10 15:57:48', NULL),
(1109, 'sombrero rojo', 'fab fa-redhat', '2020-01-10 15:57:48', NULL),
(1110, 'rehacer', 'fas fa-redo', '2020-01-10 15:57:48', NULL),
(1111, 'redo-alt', 'fas fa-redo-alt', '2020-01-10 15:57:48', NULL),
(1112, 'registrado', 'fas fa-registered', '2020-01-10 15:57:48', NULL),
(1113, 'registrado', 'far fa-registered', '2020-01-10 15:57:48', NULL),
(1114, 'eliminar-formato', 'fas fa-remove-format', '2020-01-10 15:57:48', NULL),
(1115, 'Renren', 'fab fa-renren', '2020-01-10 15:57:48', NULL),
(1116, 'respuesta', 'fas fa-reply', '2020-01-10 15:57:48', NULL),
(1117, 'responder a todos', 'fas fa-reply-all', '2020-01-10 15:57:48', NULL),
(1118, 'respondio', 'fab fa-replyd', '2020-01-10 15:57:48', NULL),
(1119, 'republicano', 'fas fa-republican', '2020-01-10 15:57:48', NULL),
(1120, 'puerta de la investigacion', 'fab fa-researchgate', '2020-01-10 15:57:48', NULL),
(1121, 'resolviendo', 'fab fa-resolving', '2020-01-10 15:57:48', NULL),
(1122, 'Area de aseo', 'fas fa-restroom', '2020-01-10 15:57:49', NULL),
(1123, 'retuitear', 'fas fa-retweet', '2020-01-10 15:57:49', NULL),
(1124, 'Rvdo', 'fab fa-rev', '2020-01-10 15:57:49', NULL),
(1125, 'cinta', 'fas fa-ribbon', '2020-01-10 15:57:49', NULL),
(1126, 'anillo', 'fas fa-ring', '2020-01-10 15:57:49', NULL),
(1127, 'la carretera', 'fas fa-road', '2020-01-10 15:57:49', NULL),
(1128, 'robot', 'fas fa-robot', '2020-01-10 15:57:49', NULL),
(1129, 'cohete', 'fas fa-rocket', '2020-01-10 15:57:49', NULL),
(1130, 'rocketchat', 'fab fa-rocketchat', '2020-01-10 15:57:49', NULL),
(1131, 'rockrms', 'fab fa-rockrms', '2020-01-10 15:57:49', NULL),
(1132, 'ruta', 'fas fa-route', '2020-01-10 15:57:49', NULL),
(1133, 'rss', 'fas fa-rss', '2020-01-10 15:57:49', NULL),
(1134, 'rss-square', 'fas fa-rss-square', '2020-01-10 15:57:49', NULL),
(1135, 'signo de rublo', 'fas fa-ruble-sign', '2020-01-10 15:57:49', NULL),
(1136, 'regla', 'fas fa-ruler', '2020-01-10 15:57:49', NULL),
(1137, 'regla combinada', 'fas fa-ruler-combined', '2020-01-10 15:57:49', NULL),
(1138, 'regla horizontal', 'fas fa-ruler-horizontal', '2020-01-10 15:57:49', NULL),
(1139, 'regla vertical', 'fas fa-ruler-vertical', '2020-01-10 15:57:49', NULL),
(1140, 'corriendo', 'fas fa-running', '2020-01-10 15:57:49', NULL),
(1141, 'signo de rupia', 'fas fa-rupee-sign', '2020-01-10 15:57:50', NULL),
(1142, 'Llanto triste', 'fas fa-sad-cry', '2020-01-10 15:57:50', NULL),
(1143, 'Llanto triste', 'far fa-sad-cry', '2020-01-10 15:57:50', NULL),
(1144, 'triste lagrima', 'fas fa-sad-tear', '2020-01-10 15:57:50', NULL),
(1145, 'triste lagrima', 'far fa-sad-tear', '2020-01-10 15:57:50', NULL),
(1146, 'safari', 'fab fa-safari', '2020-01-10 15:57:50', NULL),
(1147, 'fuerza de ventas', 'fab fa-salesforce', '2020-01-10 15:57:50', NULL),
(1148, 'hablar con descaro a', 'fab fa-sass', '2020-01-10 15:57:50', NULL),
(1149, 'satelite', 'fas fa-satellite', '2020-01-10 15:57:50', NULL),
(1150, 'antena parabolica', 'fas fa-satellite-dish', '2020-01-10 15:57:50', NULL),
(1151, 'salvar', 'fas fa-save', '2020-01-10 15:57:50', NULL),
(1152, 'salvar', 'far fa-save', '2020-01-10 15:57:50', NULL),
(1153, 'Schlix', 'fab fa-schlix', '2020-01-10 15:57:51', NULL),
(1154, 'colegio', 'fas fa-school', '2020-01-10 15:57:51', NULL),
(1155, 'destornillador', 'fas fa-screwdriver', '2020-01-10 15:57:51', NULL),
(1156, 'scribd', 'fab fa-scribd', '2020-01-10 15:57:51', NULL),
(1157, 'voluta', 'fas fa-scroll', '2020-01-10 15:57:51', NULL),
(1158, 'tarjeta SD', 'fas fa-sd-card', '2020-01-10 15:57:51', NULL),
(1159, 'buscar', 'fas fa-search', '2020-01-10 15:57:51', NULL),
(1160, 'busqueda-dolar', 'fas fa-search-dollar', '2020-01-10 15:57:51', NULL),
(1161, 'ubicacion de busqueda', 'fas fa-search-location', '2020-01-10 15:57:51', NULL),
(1162, 'menos de busqueda', 'fas fa-search-minus', '2020-01-10 15:57:51', NULL),
(1163, 'busqueda plus', 'fas fa-search-plus', '2020-01-10 15:57:51', NULL),
(1164, 'Buscador', 'fab fa-searchengin', '2020-01-10 15:57:51', NULL),
(1165, 'planta de semillero', 'fas fa-seedling', '2020-01-10 15:57:51', NULL),
(1166, 'vender', 'fab fa-sellcast', '2020-01-10 15:57:52', NULL),
(1167, 'sellsy', 'fab fa-sellsy', '2020-01-10 15:57:52', NULL),
(1168, 'servidor', 'fas fa-server', '2020-01-10 15:57:52', NULL),
(1169, 'pila de servicios', 'fab fa-servicestack', '2020-01-10 15:57:52', NULL),
(1170, 'formas', 'fas fa-shapes', '2020-01-10 15:57:52', NULL),
(1171, 'compartir', 'fas fa-share', '2020-01-10 15:57:52', NULL),
(1172, 'share-alt', 'fas fa-share-alt', '2020-01-10 15:57:52', NULL),
(1173, 'share-alt-square', 'fas fa-share-alt-square', '2020-01-10 15:57:52', NULL),
(1174, 'cuadrado compartido', 'fas fa-share-square', '2020-01-10 15:57:52', NULL),
(1175, 'cuadrado compartido', 'far fa-share-square', '2020-01-10 15:57:52', NULL),
(1176, 'signo de shekel', 'fas fa-shekel-sign', '2020-01-10 15:57:52', NULL),
(1177, 'escudo-alt', 'fas fa-shield-alt', '2020-01-10 15:57:52', NULL),
(1178, 'enviar', 'fas fa-ship', '2020-01-10 15:57:52', NULL),
(1179, 'envio rapido', 'fas fa-shipping-fast', '2020-01-10 15:57:52', NULL),
(1180, 'camisas', 'fab fa-shirtsinbulk', '2020-01-10 15:57:52', NULL),
(1181, 'huellas de zapatos', 'fas fa-shoe-prints', '2020-01-10 15:57:52', NULL),
(1182, 'bolsa de la compra', 'fas fa-shopping-bag', '2020-01-10 15:57:52', NULL),
(1183, 'cesta de la compra', 'fas fa-shopping-basket', '2020-01-10 15:57:52', NULL),
(1184, 'carrito de compras', 'fas fa-shopping-cart', '2020-01-10 15:57:53', NULL),
(1185, 'tienda', 'fab fa-shopware', '2020-01-10 15:57:53', NULL),
(1186, 'ducha', 'fas fa-shower', '2020-01-10 15:57:53', NULL),
(1187, 'furgoneta', 'fas fa-shuttle-van', '2020-01-10 15:57:53', NULL),
(1188, 'firmar', 'fas fa-sign', '2020-01-10 15:57:53', NULL),
(1189, 'inicio de sesion alt', 'fas fa-sign-in-alt', '2020-01-10 15:57:53', NULL),
(1190, 'lenguaje de señas', 'fas fa-sign-language', '2020-01-10 15:57:53', NULL),
(1191, 'cerrar sesion', 'fas fa-sign-out-alt', '2020-01-10 15:57:53', NULL),
(1192, 'señal', 'fas fa-signal', '2020-01-10 15:57:53', NULL),
(1193, 'firma', 'fas fa-signature', '2020-01-10 15:57:53', NULL),
(1194, 'tarjeta SIM', 'fas fa-sim-card', '2020-01-10 15:57:53', NULL),
(1195, 'simplemente construido', 'fab fa-simplybuilt', '2020-01-10 15:57:53', NULL),
(1196, 'sistrix', 'fab fa-sistrix', '2020-01-10 15:57:53', NULL),
(1197, 'mapa del sitio', 'fas fa-sitemap', '2020-01-10 15:57:53', NULL),
(1198, 'sith', 'fab fa-sith', '2020-01-10 15:57:53', NULL),
(1199, 'Patinaje', 'fas fa-skating', '2020-01-10 15:57:53', NULL),
(1200, 'bosquejo', 'fab fa-sketch', '2020-01-10 15:57:54', NULL),
(1201, 'esqui', 'fas fa-skiing', '2020-01-10 15:57:54', NULL),
(1202, 'esqui nordico', 'fas fa-skiing-nordic', '2020-01-10 15:57:54', NULL),
(1203, 'craneo', 'fas fa-skull', '2020-01-10 15:57:54', NULL),
(1204, 'huesos cruzados del craneo', 'fas fa-skull-crossbones', '2020-01-10 15:57:54', NULL),
(1205, 'skyatlas', 'fab fa-skyatlas', '2020-01-10 15:57:54', NULL),
(1206, 'skype', 'fab fa-skype', '2020-01-10 15:57:54', NULL),
(1207, 'flojo', 'fab fa-slack', '2020-01-10 15:57:54', NULL),
(1208, 'slack-hash', 'fab fa-slack-hash', '2020-01-10 15:57:54', NULL),
(1209, 'barra oblicua', 'fas fa-slash', '2020-01-10 15:57:54', NULL),
(1210, 'trineo', 'fas fa-sleigh', '2020-01-10 15:57:54', NULL),
(1211, 'deslizadores-h', 'fas fa-sliders-h', '2020-01-10 15:57:54', NULL),
(1212, 'slideshare', 'fab fa-slideshare', '2020-01-10 15:57:54', NULL),
(1213, 'sonrisa', 'fas fa-smile', '2020-01-10 15:57:54', NULL),
(1214, 'sonrisa', 'far fa-smile', '2020-01-10 15:57:54', NULL),
(1215, 'haz de sonrisa', 'fas fa-smile-beam', '2020-01-10 15:57:54', NULL),
(1216, 'haz de sonrisa', 'far fa-smile-beam', '2020-01-10 15:57:54', NULL),
(1217, 'guiño de sonrisa', 'fas fa-smile-wink', '2020-01-10 15:57:54', NULL),
(1218, 'guiño de sonrisa', 'far fa-smile-wink', '2020-01-10 15:57:55', NULL),
(1219, 'niebla toxica', 'fas fa-smog', '2020-01-10 15:57:55', NULL),
(1220, 'de fumar', 'fas fa-smoking', '2020-01-10 15:57:55', NULL),
(1221, 'prohibicion de fumar', 'fas fa-smoking-ban', '2020-01-10 15:57:55', NULL),
(1222, 'SMS', 'fas fa-sms', '2020-01-10 15:57:55', NULL),
(1223, 'snapchat', 'fab fa-snapchat', '2020-01-10 15:57:55', NULL),
(1224, 'Snapchat-fantasma', 'fab fa-snapchat-ghost', '2020-01-10 15:57:55', NULL),
(1225, 'plaza-snapchat', 'fab fa-snapchat-square', '2020-01-10 15:57:55', NULL),
(1226, 'Snowboarding', 'fas fa-snowboarding', '2020-01-10 15:57:55', NULL),
(1227, 'copo de nieve', 'fas fa-snowflake', '2020-01-10 15:57:55', NULL),
(1228, 'copo de nieve', 'far fa-snowflake', '2020-01-10 15:57:55', NULL),
(1229, 'monigote de nieve', 'fas fa-snowman', '2020-01-10 15:57:55', NULL),
(1230, 'quitanieves', 'fas fa-snowplow', '2020-01-10 15:57:55', NULL),
(1231, 'calcetines', 'fas fa-socks', '2020-01-10 15:57:55', NULL),
(1232, 'panel solar', 'fas fa-solar-panel', '2020-01-10 15:57:55', NULL),
(1233, 'ordenar', 'fas fa-sort', '2020-01-10 15:57:55', NULL),
(1234, 'ordenar alfa abajo', 'fas fa-sort-alpha-down', '2020-01-10 15:57:55', NULL),
(1235, 'sort-alpha-down-alt', 'fas fa-sort-alpha-down-alt', '2020-01-10 15:57:55', NULL),
(1236, 'sort-alpha-up', 'fas fa-sort-alpha-up', '2020-01-10 15:57:56', NULL),
(1237, 'sort-alpha-up-alt', 'fas fa-sort-alpha-up-alt', '2020-01-10 15:57:56', NULL),
(1238, 'ordenar-bajar-cantidad', 'fas fa-sort-amount-down', '2020-01-10 15:57:56', NULL),
(1239, 'ordenar-cantidad-abajo-alt', 'fas fa-sort-amount-down-alt', '2020-01-10 15:57:56', NULL),
(1240, 'ordenar', 'fas fa-sort-amount-up', '2020-01-10 15:57:56', NULL),
(1241, 'sort-amount-up-alt', 'fas fa-sort-amount-up-alt', '2020-01-10 15:57:56', NULL),
(1242, 'ordenar', 'fas fa-sort-down', '2020-01-10 15:57:56', NULL),
(1243, 'ordenar-numeric-down', 'fas fa-sort-numeric-down', '2020-01-10 15:57:56', NULL),
(1244, 'sort-numeric-down-alt', 'fas fa-sort-numeric-down-alt', '2020-01-10 15:57:56', NULL),
(1245, 'ordenar-numeric-up', 'fas fa-sort-numeric-up', '2020-01-10 15:57:57', NULL),
(1246, 'sort-numeric-up-alt', 'fas fa-sort-numeric-up-alt', '2020-01-10 15:57:57', NULL),
(1247, 'clasificacion', 'fas fa-sort-up', '2020-01-10 15:57:57', NULL),
(1248, 'soundcloud', 'fab fa-soundcloud', '2020-01-10 15:57:57', NULL),
(1249, 'arbol fuente', 'fab fa-sourcetree', '2020-01-10 15:57:57', NULL),
(1250, 'spa', 'fas fa-spa', '2020-01-10 15:57:57', NULL),
(1251, 'transbordador espacial', 'fas fa-space-shuttle', '2020-01-10 15:57:57', NULL),
(1252, 'speakap', 'fab fa-speakap', '2020-01-10 15:57:57', NULL),
(1253, 'cubierta de altavoz', 'fab fa-speaker-deck', '2020-01-10 15:57:57', NULL),
(1254, 'corrector ortografico', 'fas fa-spell-check', '2020-01-10 15:57:57', NULL),
(1255, 'araña', 'fas fa-spider', '2020-01-10 15:57:57', NULL),
(1256, 'hilandero', 'fas fa-spinner', '2020-01-10 15:57:57', NULL),
(1257, 'mancha', 'fas fa-splotch', '2020-01-10 15:57:57', NULL),
(1258, 'spotify', 'fab fa-spotify', '2020-01-10 15:57:57', NULL),
(1259, 'lata de aerosol', 'fas fa-spray-can', '2020-01-10 15:57:57', NULL),
(1260, 'cuadrado', 'fas fa-square', '2020-01-10 15:57:57', NULL),
(1261, 'cuadrado', 'far fa-square', '2020-01-10 15:57:58', NULL),
(1262, 'cuadrado lleno', 'fas fa-square-full', '2020-01-10 15:57:58', NULL),
(1263, 'raiz cuadrada-alt', 'fas fa-square-root-alt', '2020-01-10 15:57:58', NULL),
(1264, 'plaza', 'fab fa-squarespace', '2020-01-10 15:57:58', NULL),
(1265, 'cambio de pila', 'fab fa-stack-exchange', '2020-01-10 15:57:58', NULL),
(1266, 'desbordamiento de pila', 'fab fa-stack-overflow', '2020-01-10 15:57:58', NULL),
(1267, 'stackpath', 'fab fa-stackpath', '2020-01-10 15:57:58', NULL),
(1268, 'sello', 'fas fa-stamp', '2020-01-10 15:57:58', NULL),
(1269, 'estrella', 'fas fa-star', '2020-01-10 15:57:58', NULL),
(1270, 'estrella', 'far fa-star', '2020-01-10 15:57:58', NULL),
(1271, 'estrella y media luna', 'fas fa-star-and-crescent', '2020-01-10 15:57:58', NULL),
(1272, 'media estrella', 'fas fa-star-half', '2020-01-10 15:57:58', NULL),
(1273, 'media estrella', 'far fa-star-half', '2020-01-10 15:57:58', NULL),
(1274, 'star-half-alt', 'fas fa-star-half-alt', '2020-01-10 15:57:59', NULL),
(1275, 'estrella de David', 'fas fa-star-of-david', '2020-01-10 15:57:59', NULL),
(1276, 'estrella de la vida', 'fas fa-star-of-life', '2020-01-10 15:57:59', NULL),
(1277, 'staylinked', 'fab fa-staylinked', '2020-01-10 15:57:59', NULL),
(1278, 'vapor', 'fab fa-steam', '2020-01-10 15:57:59', NULL),
(1279, 'cuadrado de vapor', 'fab fa-steam-square', '2020-01-10 15:57:59', NULL),
(1280, 'simbolo de vapor', 'fab fa-steam-symbol', '2020-01-10 15:57:59', NULL),
(1281, 'paso atras', 'fas fa-step-backward', '2020-01-10 15:57:59', NULL),
(1282, 'un paso adelante', 'fas fa-step-forward', '2020-01-10 15:57:59', NULL),
(1283, 'estetoscopio', 'fas fa-stethoscope', '2020-01-10 15:58:00', NULL),
(1284, 'mula adhesiva', 'fab fa-sticker-mule', '2020-01-10 15:58:00', NULL),
(1285, 'nota adhesiva', 'fas fa-sticky-note', '2020-01-10 15:58:00', NULL),
(1286, 'nota adhesiva', 'far fa-sticky-note', '2020-01-10 15:58:00', NULL),
(1287, 'detener', 'fas fa-stop', '2020-01-10 15:58:00', NULL),
(1288, 'circulo de parada', 'fas fa-stop-circle', '2020-01-10 15:58:01', NULL),
(1289, 'circulo de parada', 'far fa-stop-circle', '2020-01-10 15:58:01', NULL),
(1290, 'cronografo', 'fas fa-stopwatch', '2020-01-10 15:58:01', NULL),
(1291, 'almacenar', 'fas fa-store', '2020-01-10 15:58:01', NULL),
(1292, 'store-alt', 'fas fa-store-alt', '2020-01-10 15:58:01', NULL),
(1293, 'strava', 'fab fa-strava', '2020-01-10 15:58:01', NULL),
(1294, 'corriente', 'fas fa-stream', '2020-01-10 15:58:01', NULL),
(1295, 'vista de calle', 'fas fa-street-view', '2020-01-10 15:58:01', NULL),
(1296, 'tachado', 'fas fa-strikethrough', '2020-01-10 15:58:01', NULL),
(1297, 'raya', 'fab fa-stripe', '2020-01-10 15:58:01', NULL),
(1298, 'rayas', 'fab fa-stripe-s', '2020-01-10 15:58:01', NULL),
(1299, 'stroopwafel', 'fas fa-stroopwafel', '2020-01-10 15:58:01', NULL),
(1300, 'studiovinari', 'fab fa-studiovinari', '2020-01-10 15:58:01', NULL),
(1301, 'tropezar con', 'fab fa-stumbleupon', '2020-01-10 15:58:01', NULL),
(1302, 'stumbleupon-circle', 'fab fa-stumbleupon-circle', '2020-01-10 15:58:01', NULL),
(1303, 'subindice', 'fas fa-subscript', '2020-01-10 15:58:01', NULL),
(1304, 'subterraneo', 'fas fa-subway', '2020-01-10 15:58:01', NULL),
(1305, 'maleta', 'fas fa-suitcase', '2020-01-10 15:58:01', NULL),
(1306, 'maleta con ruedas', 'fas fa-suitcase-rolling', '2020-01-10 15:58:01', NULL),
(1307, 'Dom', 'fas fa-sun', '2020-01-10 15:58:01', NULL),
(1308, 'Dom', 'far fa-sun', '2020-01-10 15:58:01', NULL),
(1309, 'superpoderes', 'fab fa-superpowers', '2020-01-10 15:58:01', NULL),
(1310, 'sobrescrito', 'fas fa-superscript', '2020-01-10 15:58:01', NULL),
(1311, 'flexible', 'fab fa-supple', '2020-01-10 15:58:01', NULL),
(1312, 'sorpresa', 'fas fa-surprise', '2020-01-10 15:58:01', NULL),
(1313, 'sorpresa', 'far fa-surprise', '2020-01-10 15:58:01', NULL),
(1314, 'suse', 'fab fa-suse', '2020-01-10 15:58:01', NULL),
(1315, 'muestrario', 'fas fa-swatchbook', '2020-01-10 15:58:01', NULL),
(1316, 'rapido', 'fab fa-swift', '2020-01-10 15:58:01', NULL),
(1317, 'nadador', 'fas fa-swimmer', '2020-01-10 15:58:02', NULL),
(1318, 'piscina', 'fas fa-swimming-pool', '2020-01-10 15:58:02', NULL),
(1319, 'Symfony', 'fab fa-symfony', '2020-01-10 15:58:02', NULL),
(1320, 'sinagoga', 'fas fa-synagogue', '2020-01-10 15:58:02', NULL),
(1321, 'sincronizar', 'fas fa-sync', '2020-01-10 15:58:02', NULL),
(1322, 'sync-alt', 'fas fa-sync-alt', '2020-01-10 15:58:02', NULL),
(1323, 'jeringuilla', 'fas fa-syringe', '2020-01-10 15:58:02', NULL),
(1324, 'mesa', 'fas fa-table', '2020-01-10 15:58:02', NULL),
(1325, 'mesa de tennis', 'fas fa-table-tennis', '2020-01-10 15:58:02', NULL),
(1326, 'tableta', 'fas fa-tablet', '2020-01-10 15:58:02', NULL),
(1327, 'tablet-alt', 'fas fa-tablet-alt', '2020-01-10 15:58:02', NULL),
(1328, 'tabletas', 'fas fa-tablets', '2020-01-10 15:58:02', NULL),
(1329, 'tacometro-alt', 'fas fa-tachometer-alt', '2020-01-10 15:58:02', NULL),
(1330, 'etiqueta', 'fas fa-tag', '2020-01-10 15:58:02', NULL),
(1331, 'etiquetas', 'fas fa-tags', '2020-01-10 15:58:02', NULL),
(1332, 'cinta', 'fas fa-tape', '2020-01-10 15:58:02', NULL),
(1333, 'Tareas', 'fas fa-tasks', '2020-01-10 15:58:02', NULL),
(1334, 'Taxi', 'fas fa-taxi', '2020-01-10 15:58:02', NULL),
(1335, 'equipo de trabajo', 'fab fa-teamspeak', '2020-01-10 15:58:02', NULL),
(1336, 'dientes', 'fas fa-teeth', '2020-01-10 15:58:02', NULL),
(1337, 'dientes abiertos', 'fas fa-teeth-open', '2020-01-10 15:58:02', NULL),
(1338, 'telegrama', 'fab fa-telegram', '2020-01-10 15:58:02', NULL),
(1339, 'plano telegrama', 'fab fa-telegram-plane', '2020-01-10 15:58:03', NULL),
(1340, 'temperatura alta', 'fas fa-temperature-high', '2020-01-10 15:58:03', NULL),
(1341, 'temperatura baja', 'fas fa-temperature-low', '2020-01-10 15:58:03', NULL),
(1342, 'tencent-weibo', 'fab fa-tencent-weibo', '2020-01-10 15:58:03', NULL),
(1343, 'tenge', 'fas fa-tenge', '2020-01-10 15:58:03', NULL),
(1344, 'terminal', 'fas fa-terminal', '2020-01-10 15:58:03', NULL),
(1345, 'Altura del texto', 'fas fa-text-height', '2020-01-10 15:58:03', NULL),
(1346, 'ancho de texto', 'fas fa-text-width', '2020-01-10 15:58:03', NULL),
(1347, 'th', 'fas fa-th', '2020-01-10 15:58:03', NULL),
(1348, 'th-large', 'fas fa-th-large', '2020-01-10 15:58:03', NULL),
(1349, 'th-list', 'fas fa-th-list', '2020-01-10 15:58:03', NULL),
(1350, 'el yeti rojo', 'fab fa-the-red-yeti', '2020-01-10 15:58:03', NULL),
(1351, 'mascaras de teatro', 'fas fa-theater-masks', '2020-01-10 15:58:03', NULL),
(1352, 'Themeco', 'fab fa-themeco', '2020-01-10 15:58:03', NULL),
(1353, 'tema', 'fab fa-themeisle', '2020-01-10 15:58:03', NULL),
(1354, 'termometro', 'fas fa-thermometer', '2020-01-10 15:58:04', NULL),
(1355, 'termometro vacio', 'fas fa-thermometer-empty', '2020-01-10 15:58:04', NULL),
(1356, 'termometro lleno', 'fas fa-thermometer-full', '2020-01-10 15:58:04', NULL),
(1357, 'medio termometro', 'fas fa-thermometer-half', '2020-01-10 15:58:04', NULL),
(1358, 'termometro-cuarto', 'fas fa-thermometer-quarter', '2020-01-10 15:58:04', NULL),
(1359, 'termometro-tres cuartos', 'fas fa-thermometer-three-quarters', '2020-01-10 15:58:04', NULL),
(1360, 'picos de pensamiento', 'fab fa-think-peaks', '2020-01-10 15:58:04', NULL),
(1361, 'pulgares abajo', 'fas fa-thumbs-down', '2020-01-10 15:58:04', NULL),
(1362, 'pulgares abajo', 'far fa-thumbs-down', '2020-01-10 15:58:04', NULL),
(1363, 'Pulgares hacia arriba', 'fas fa-thumbs-up', '2020-01-10 15:58:04', NULL),
(1364, 'Pulgares hacia arriba', 'far fa-thumbs-up', '2020-01-10 15:58:04', NULL),
(1365, 'chinche', 'fas fa-thumbtack', '2020-01-10 15:58:04', NULL),
(1366, 'ticket-alt', 'fas fa-ticket-alt', '2020-01-10 15:58:04', NULL),
(1367, 'veces', 'fas fa-times', '2020-01-10 15:58:04', NULL),
(1368, 'circulo de tiempo', 'fas fa-times-circle', '2020-01-10 15:58:04', NULL),
(1369, 'circulo de tiempo', 'far fa-times-circle', '2020-01-10 15:58:04', NULL),
(1370, 'tinte', 'fas fa-tint', '2020-01-10 15:58:05', NULL),
(1371, 'tinte-slash', 'fas fa-tint-slash', '2020-01-10 15:58:05', NULL),
(1372, 'cansado', 'fas fa-tired', '2020-01-10 15:58:05', NULL),
(1373, 'cansado', 'far fa-tired', '2020-01-10 15:58:05', NULL),
(1374, 'alternar', 'fas fa-toggle-off', '2020-01-10 15:58:05', NULL),
(1375, 'alternar', 'fas fa-toggle-on', '2020-01-10 15:58:05', NULL),
(1376, 'baño', 'fas fa-toilet', '2020-01-10 15:58:05', NULL),
(1377, 'papel higienico', 'fas fa-toilet-paper', '2020-01-10 15:58:05', NULL),
(1378, 'caja de instrumento', 'fas fa-toolbox', '2020-01-10 15:58:05', NULL),
(1379, 'herramientas', 'fas fa-tools', '2020-01-10 15:58:05', NULL),
(1380, 'diente', 'fas fa-tooth', '2020-01-10 15:58:05', NULL),
(1381, 'Tora', 'fas fa-torah', '2020-01-10 15:58:05', NULL),
(1382, 'puerta torii', 'fas fa-torii-gate', '2020-01-10 15:58:05', NULL),
(1383, 'tractor', 'fas fa-tractor', '2020-01-10 15:58:05', NULL),
(1384, 'federacion comercial', 'fab fa-trade-federation', '2020-01-10 15:58:05', NULL),
(1385, 'marca', 'fas fa-trademark', '2020-01-10 15:58:05', NULL),
(1386, 'semaforo', 'fas fa-traffic-light', '2020-01-10 15:58:05', NULL),
(1387, 'remolque', 'fas fa-trailer', '2020-01-10 15:58:05', NULL),
(1388, 'entrenar', 'fas fa-train', '2020-01-10 15:58:05', NULL),
(1389, 'tranvia', 'fas fa-tram', '2020-01-10 15:58:05', NULL),
(1390, 'Transgenero', 'fas fa-transgender', '2020-01-10 15:58:06', NULL),
(1391, 'transgenero-alt', 'fas fa-transgender-alt', '2020-01-10 15:58:06', NULL),
(1392, 'basura', 'fas fa-trash', '2020-01-10 15:58:06', NULL),
(1393, 'trash-alt', 'fas fa-trash-alt', '2020-01-10 15:58:06', NULL),
(1394, 'trash-alt', 'far fa-trash-alt', '2020-01-10 15:58:06', NULL),
(1395, 'restauracion de basura', 'fas fa-trash-restore', '2020-01-10 15:58:06', NULL),
(1396, 'trash-restore-alt', 'fas fa-trash-restore-alt', '2020-01-10 15:58:06', NULL),
(1397, 'arbol', 'fas fa-tree', '2020-01-10 15:58:06', NULL),
(1398, 'trello', 'fab fa-trello', '2020-01-10 15:58:06', NULL),
(1399, 'tripadvisor', 'fab fa-tripadvisor', '2020-01-10 15:58:06', NULL),
(1400, 'trofeo', 'fas fa-trophy', '2020-01-10 15:58:06', NULL),
(1401, 'camion', 'fas fa-truck', '2020-01-10 15:58:06', NULL),
(1402, 'carga de camiones', 'fas fa-truck-loading', '2020-01-10 15:58:06', NULL),
(1403, 'camion monstruo', 'fas fa-truck-monster', '2020-01-10 15:58:07', NULL),
(1404, 'movimiento de camiones', 'fas fa-truck-moving', '2020-01-10 15:58:07', NULL),
(1405, 'camioneta', 'fas fa-truck-pickup', '2020-01-10 15:58:07', NULL),
(1406, 'camiseta', 'fas fa-tshirt', '2020-01-10 15:58:07', NULL),
(1407, 'tty', 'fas fa-tty', '2020-01-10 15:58:07', NULL),
(1408, 'tumblr', 'fab fa-tumblr', '2020-01-10 15:58:07', NULL),
(1409, 'plaza tumblr', 'fab fa-tumblr-square', '2020-01-10 15:58:07', NULL),
(1410, 'TV', 'fas fa-tv', '2020-01-10 15:58:07', NULL),
(1411, 'contraccion nerviosa', 'fab fa-twitch', '2020-01-10 15:58:07', NULL),
(1412, 'gorjeo', 'fab fa-twitter', '2020-01-10 15:58:07', NULL),
(1413, 'twitter-square', 'fab fa-twitter-square', '2020-01-10 15:58:07', NULL),
(1414, 'typo3', 'fab fa-typo3', '2020-01-10 15:58:07', NULL),
(1415, 'uber', 'fab fa-uber', '2020-01-10 15:58:07', NULL),
(1416, 'ubuntu', 'fab fa-ubuntu', '2020-01-10 15:58:07', NULL),
(1417, 'uikit', 'fab fa-uikit', '2020-01-10 15:58:07', NULL),
(1418, 'umbraco', 'fab fa-umbraco', '2020-01-10 15:58:07', NULL),
(1419, 'paraguas', 'fas fa-umbrella', '2020-01-10 15:58:07', NULL),
(1420, 'sombrilla-playa', 'fas fa-umbrella-beach', '2020-01-10 15:58:08', NULL),
(1421, 'subrayar', 'fas fa-underline', '2020-01-10 15:58:08', NULL),
(1422, 'deshacer', 'fas fa-undo', '2020-01-10 15:58:08', NULL),
(1423, 'deshacer-alt', 'fas fa-undo-alt', '2020-01-10 15:58:08', NULL);
INSERT INTO `icono` (`id`, `nom_icono`, `clase_icono`, `created_at`, `updated_at`) VALUES
(1424, 'falta de registro', 'fab fa-uniregistry', '2020-01-10 15:58:08', NULL),
(1425, 'unidad', 'fab fa-unity', '2020-01-10 15:58:08', NULL),
(1426, 'acceso universal', 'fas fa-universal-access', '2020-01-10 15:58:08', NULL),
(1427, 'Universidad', 'fas fa-university', '2020-01-10 15:58:08', NULL),
(1428, 'desconectar', 'fas fa-unlink', '2020-01-10 15:58:08', NULL),
(1429, 'desbloquear', 'fas fa-unlock', '2020-01-10 15:58:08', NULL),
(1430, 'unlock-alt', 'fas fa-unlock-alt', '2020-01-10 15:58:08', NULL),
(1431, 'untappd', 'fab fa-untappd', '2020-01-10 15:58:08', NULL),
(1432, 'subir', 'fas fa-upload', '2020-01-10 15:58:08', NULL),
(1433, 'UPS', 'fab fa-ups', '2020-01-10 15:58:08', NULL),
(1434, 'USB', 'fab fa-usb', '2020-01-10 15:58:08', NULL),
(1435, 'usuario', 'fas fa-user', '2020-01-10 15:58:08', NULL),
(1436, 'usuario', 'far fa-user', '2020-01-10 15:58:09', NULL),
(1437, 'user-alt', 'fas fa-user-alt', '2020-01-10 15:58:09', NULL),
(1438, 'user-alt-slash', 'fas fa-user-alt-slash', '2020-01-10 15:58:09', NULL),
(1439, 'usuario-astronauta', 'fas fa-user-astronaut', '2020-01-10 15:58:09', NULL),
(1440, 'verificacion de usuario', 'fas fa-user-check', '2020-01-10 15:58:09', NULL),
(1441, 'circulo de usuarios', 'fas fa-user-circle', '2020-01-10 15:58:09', NULL),
(1442, 'circulo de usuarios', 'far fa-user-circle', '2020-01-10 15:58:09', NULL),
(1443, 'reloj de usuario', 'fas fa-user-clock', '2020-01-10 15:58:09', NULL),
(1444, 'usuario-cog', 'fas fa-user-cog', '2020-01-10 15:58:09', NULL),
(1445, 'edicion de usuario', 'fas fa-user-edit', '2020-01-10 15:58:09', NULL),
(1446, 'usuario-amigos', 'fas fa-user-friends', '2020-01-10 15:58:09', NULL),
(1447, 'usuario graduado', 'fas fa-user-graduate', '2020-01-10 15:58:09', NULL),
(1448, 'lesionado por el usuario', 'fas fa-user-injured', '2020-01-10 15:58:09', NULL),
(1449, 'bloqueo de usuario', 'fas fa-user-lock', '2020-01-10 15:58:09', NULL),
(1450, 'usuario-md', 'fas fa-user-md', '2020-01-10 15:58:09', NULL),
(1451, 'menos usuario', 'fas fa-user-minus', '2020-01-10 15:58:09', NULL),
(1452, 'usuario-ninja', 'fas fa-user-ninja', '2020-01-10 15:58:09', NULL),
(1453, 'usuario-enfermera', 'fas fa-user-nurse', '2020-01-10 15:58:10', NULL),
(1454, 'usuario plus', 'fas fa-user-plus', '2020-01-10 15:58:10', NULL),
(1455, 'secreto de usuario', 'fas fa-user-secret', '2020-01-10 15:58:10', NULL),
(1456, 'escudo de usuario', 'fas fa-user-shield', '2020-01-10 15:58:10', NULL),
(1457, 'barra de usuario', 'fas fa-user-slash', '2020-01-10 15:58:10', NULL),
(1458, 'etiqueta de usuario', 'fas fa-user-tag', '2020-01-10 15:58:10', NULL),
(1459, 'enlace de usuario', 'fas fa-user-tie', '2020-01-10 15:58:10', NULL),
(1460, 'tiempos de usuario', 'fas fa-user-times', '2020-01-10 15:58:10', NULL),
(1461, 'los usuarios', 'fas fa-users', '2020-01-10 15:58:10', NULL),
(1462, 'usuarios-cog', 'fas fa-users-cog', '2020-01-10 15:58:10', NULL),
(1463, 'usps', 'fab fa-usps', '2020-01-10 15:58:10', NULL),
(1464, 'ussunnah', 'fab fa-ussunnah', '2020-01-10 15:58:10', NULL),
(1465, 'cuchara de utensilios', 'fas fa-utensil-spoon', '2020-01-10 15:58:10', NULL),
(1466, 'utensilios', 'fas fa-utensils', '2020-01-10 15:58:11', NULL),
(1467, 'vaadin', 'fab fa-vaadin', '2020-01-10 15:58:11', NULL),
(1468, 'vector-cuadrado', 'fas fa-vector-square', '2020-01-10 15:58:11', NULL),
(1469, 'Venus', 'fas fa-venus', '2020-01-10 15:58:11', NULL),
(1470, 'Venus doble', 'fas fa-venus-double', '2020-01-10 15:58:11', NULL),
(1471, 'venus-mars', 'fas fa-venus-mars', '2020-01-10 15:58:11', NULL),
(1472, 'viacoin', 'fab fa-viacoin', '2020-01-10 15:58:11', NULL),
(1473, 'viadeo', 'fab fa-viadeo', '2020-01-10 15:58:11', NULL),
(1474, 'viadeo-square', 'fab fa-viadeo-square', '2020-01-10 15:58:11', NULL),
(1475, 'frasco', 'fas fa-vial', '2020-01-10 15:58:11', NULL),
(1476, 'viales', 'fas fa-vials', '2020-01-10 15:58:11', NULL),
(1477, 'viber', 'fab fa-viber', '2020-01-10 15:58:11', NULL),
(1478, 'video', 'fas fa-video', '2020-01-10 15:58:11', NULL),
(1479, 'video-slash', 'fas fa-video-slash', '2020-01-10 15:58:11', NULL),
(1480, 'vihara', 'fas fa-vihara', '2020-01-10 15:58:11', NULL),
(1481, 'vimeo', 'fab fa-vimeo', '2020-01-10 15:58:11', NULL),
(1482, 'vimeo-cuadrado', 'fab fa-vimeo-square', '2020-01-10 15:58:11', NULL),
(1483, 'vimeo-v', 'fab fa-vimeo-v', '2020-01-10 15:58:12', NULL),
(1484, 'vid', 'fab fa-vine', '2020-01-10 15:58:12', NULL),
(1485, 'vk', 'fab fa-vk', '2020-01-10 15:58:12', NULL),
(1486, 'vnv', 'fab fa-vnv', '2020-01-10 15:58:12', NULL),
(1487, 'mensaje de voz', 'fas fa-voicemail', '2020-01-10 15:58:12', NULL),
(1488, 'pelota de voleibol', 'fas fa-volleyball-ball', '2020-01-10 15:58:12', NULL),
(1489, 'bajar volumen', 'fas fa-volume-down', '2020-01-10 15:58:12', NULL),
(1490, 'volumen mudo', 'fas fa-volume-mute', '2020-01-10 15:58:12', NULL),
(1491, 'volumen apagado', 'fas fa-volume-off', '2020-01-10 15:58:12', NULL),
(1492, 'sube el volumen', 'fas fa-volume-up', '2020-01-10 15:58:12', NULL),
(1493, 'votar si', 'fas fa-vote-yea', '2020-01-10 15:58:12', NULL),
(1494, 'vr-carton', 'fas fa-vr-cardboard', '2020-01-10 15:58:12', NULL),
(1495, 'vuejs', 'fab fa-vuejs', '2020-01-10 15:58:12', NULL),
(1496, 'para caminar', 'fas fa-walking', '2020-01-10 15:58:12', NULL),
(1497, 'billetera', 'fas fa-wallet', '2020-01-10 15:58:12', NULL),
(1498, 'almacen', 'fas fa-warehouse', '2020-01-10 15:58:12', NULL),
(1499, 'agua', 'fas fa-water', '2020-01-10 15:58:12', NULL),
(1500, 'onda cuadrada', 'fas fa-wave-square', '2020-01-10 15:58:12', NULL),
(1501, 'Waze', 'fab fa-waze', '2020-01-10 15:58:12', NULL),
(1502, 'llorando', 'fab fa-weebly', '2020-01-10 15:58:12', NULL),
(1503, 'weibo', 'fab fa-weibo', '2020-01-10 15:58:12', NULL),
(1504, 'peso', 'fas fa-weight', '2020-01-10 15:58:12', NULL),
(1505, 'colgar peso', 'fas fa-weight-hanging', '2020-01-10 15:58:12', NULL),
(1506, 'weixin', 'fab fa-weixin', '2020-01-10 15:58:12', NULL),
(1507, 'whatsapp', 'fab fa-whatsapp', '2020-01-10 15:58:12', NULL),
(1508, 'whatsapp-square', 'fab fa-whatsapp-square', '2020-01-10 15:58:13', NULL),
(1509, 'silla de ruedas', 'fas fa-wheelchair', '2020-01-10 15:58:13', NULL),
(1510, 'whmcs', 'fab fa-whmcs', '2020-01-10 15:58:13', NULL),
(1511, 'Wifi', 'fas fa-wifi', '2020-01-10 15:58:13', NULL),
(1512, 'wikipedia-w', 'fab fa-wikipedia-w', '2020-01-10 15:58:13', NULL),
(1513, 'viento', 'fas fa-wind', '2020-01-10 15:58:13', NULL),
(1514, 'ventana cerrada', 'fas fa-window-close', '2020-01-10 15:58:13', NULL),
(1515, 'ventana cerrada', 'far fa-window-close', '2020-01-10 15:58:13', NULL),
(1516, 'maximizar ventana', 'fas fa-window-maximize', '2020-01-10 15:58:13', NULL),
(1517, 'maximizar ventana', 'far fa-window-maximize', '2020-01-10 15:58:13', NULL),
(1518, 'minimizar ventana', 'fas fa-window-minimize', '2020-01-10 15:58:13', NULL),
(1519, 'minimizar ventana', 'far fa-window-minimize', '2020-01-10 15:58:13', NULL),
(1520, 'restaurar ventana', 'fas fa-window-restore', '2020-01-10 15:58:13', NULL),
(1521, 'restaurar ventana', 'far fa-window-restore', '2020-01-10 15:58:13', NULL),
(1522, 'ventanas', 'fab fa-windows', '2020-01-10 15:58:13', NULL),
(1523, 'botella de vino', 'fas fa-wine-bottle', '2020-01-10 15:58:13', NULL),
(1524, 'Copa de vino', 'fas fa-wine-glass', '2020-01-10 15:58:13', NULL),
(1525, 'copa de vino-alt', 'fas fa-wine-glass-alt', '2020-01-10 15:58:13', NULL),
(1526, 'wix', 'fab fa-wix', '2020-01-10 15:58:13', NULL),
(1527, 'magos de la costa', 'fab fa-wizards-of-the-coast', '2020-01-10 15:58:13', NULL),
(1528, 'batallon-manada de lobos', 'fab fa-wolf-pack-battalion', '2020-01-10 15:58:13', NULL),
(1529, 'signo ganado', 'fas fa-won-sign', '2020-01-10 15:58:13', NULL),
(1530, 'wordpress', 'fab fa-wordpress', '2020-01-10 15:58:14', NULL),
(1531, 'wordpress-simple', 'fab fa-wordpress-simple', '2020-01-10 15:58:14', NULL),
(1532, 'wpbeginner', 'fab fa-wpbeginner', '2020-01-10 15:58:14', NULL),
(1533, 'wpexplorer', 'fab fa-wpexplorer', '2020-01-10 15:58:14', NULL),
(1534, 'wpforms', 'fab fa-wpforms', '2020-01-10 15:58:14', NULL),
(1535, 'wpressr', 'fab fa-wpressr', '2020-01-10 15:58:14', NULL),
(1536, 'llave inglesa', 'fas fa-wrench', '2020-01-10 15:58:14', NULL),
(1537, 'radiografia', 'fas fa-x-ray', '2020-01-10 15:58:14', NULL),
(1538, 'xbox', 'fab fa-xbox', '2020-01-10 15:58:14', NULL),
(1539, 'xing', 'fab fa-xing', '2020-01-10 15:58:14', NULL),
(1540, 'cuadrado xing', 'fab fa-xing-square', '2020-01-10 15:58:14', NULL),
(1541, 'combinador en y', 'fab fa-y-combinator', '2020-01-10 15:58:14', NULL),
(1542, 'yahoo', 'fab fa-yahoo', '2020-01-10 15:58:14', NULL),
(1543, 'quejarse', 'fab fa-yammer', '2020-01-10 15:58:14', NULL),
(1544, 'Yandex', 'fab fa-yandex', '2020-01-10 15:58:14', NULL),
(1545, 'Yandex-internacional', 'fab fa-yandex-international', '2020-01-10 15:58:14', NULL),
(1546, 'hilo', 'fab fa-yarn', '2020-01-10 15:58:14', NULL),
(1547, 'gañido', 'fab fa-yelp', '2020-01-10 15:58:14', NULL),
(1548, 'signo de yen', 'fas fa-yen-sign', '2020-01-10 15:58:14', NULL),
(1549, 'yin-yang', 'fas fa-yin-yang', '2020-01-10 15:58:15', NULL),
(1550, 'yoast', 'fab fa-yoast', '2020-01-10 15:58:15', NULL),
(1551, 'Youtube', 'fab fa-youtube', '2020-01-10 15:58:15', NULL),
(1552, 'youtube-square', 'fab fa-youtube-square', '2020-01-10 15:58:15', NULL),
(1553, 'zhihu', 'fab fa-zhihu', '2020-01-10 15:58:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'Sistema P.H.',
  `parrafo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `ubicacion`, `titulo`, `parrafo`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'extranet-nosotros', 'Sistema P.H.', NULL, 'nosotros1.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `url` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `orden` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `icono` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `menu_id`, `nombre`, `url`, `orden`, `icono`, `created_at`, `updated_at`) VALUES
(1, 0, 'Inicio', 'admin/index', 1, 'fas fa-tachometer-alt', '2020-01-10 15:56:36', '2020-01-13 14:17:51'),
(2, 0, 'Sistema', '#', 2, 'fas fa-tools', '2020-01-10 15:56:36', '2020-01-13 14:17:51'),
(3, 0, 'Parametrización', '#', 3, 'fas fa-cogs', '2020-01-10 15:56:36', '2020-01-13 14:17:51'),
(4, 0, 'Usuarios', '#', 4, 'fas fa-users', '2020-01-10 15:56:36', '2020-01-13 14:17:52'),
(5, 2, 'Menús', 'admin/menu-index', 1, 'fas fa-list-ul', '2020-01-10 15:56:36', '2020-01-13 14:17:51'),
(6, 2, 'Roles Usuarios', 'admin/rol-index', 2, 'fas fa-user-tag', '2020-01-10 15:56:37', '2020-01-13 14:17:51'),
(7, 2, 'Menú - Roles', 'admin/_menus_rol', 3, 'fas fa-chalkboard-teacher', '2020-01-10 15:56:37', '2020-01-13 14:17:51'),
(8, 2, 'Permisos', 'admin/permiso-index', 4, 'fas fa-lock', '2020-01-10 15:56:37', '2020-01-13 14:17:51'),
(9, 2, 'Permisos -Rol', 'admin/_permiso-rol', 5, 'fas fa-user-lock', '2020-01-10 15:56:37', '2020-01-13 14:17:51'),
(10, 3, 'Datos Básicos', 'admin/parametro-index', 1, 'fas fa-eye', '2020-01-10 15:56:37', '2020-01-13 14:17:51'),
(11, 3, 'Gestión Noticias', 'admin/noticia-index', 2, 'fas fa-newspaper', '2020-01-10 15:56:37', '2020-01-13 14:17:51'),
(12, 4, 'Gestión de Usuarios', 'admin/usuario-index', 1, 'fas fa-address-book', '2020-01-10 15:56:37', '2020-01-13 14:17:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_rol`
--

CREATE TABLE `menu_rol` (
  `rol_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `menu_rol`
--

INSERT INTO `menu_rol` (`rol_id`, `menu_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(360, '2019_12_02_074621_crear_tabla_parametro', 1),
(361, '2019_12_03_091606_crear_tabla_tipo_docu', 1),
(362, '2019_12_03_091759_crear_tabla_usuario', 1),
(363, '2019_12_12_113556_crear_tabla_rol', 1),
(364, '2019_12_12_114152_crear_tabla_permiso', 1),
(365, '2019_12_12_114153_crear_tabla_usuario_rol', 1),
(366, '2019_12_12_115314_crear_tabla_permiso_rol', 1),
(367, '2019_12_12_155901_crear_tabla_menu', 1),
(368, '2019_12_12_160326_crear_tabla_menu_rol', 1),
(369, '2019_12_17_113158_crear_tabla_icono', 1),
(370, '2020_01_09_124813_crear_tabla_imagenes', 1),
(371, '2020_01_09_144406_crear_tabla_noticia', 1),
(372, '2020_01_09_150259_crear_tabla_adjunto_noticia', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE `noticia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `resumen` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `contenido` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `tipo`, `titulo`, `resumen`, `contenido`, `foto`, `fecha_vencimiento`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'noticia_principal', 'El Renacuajo Paseador', 'Esta iniciativa didactica se da para que el estudiante aplique las manifestaciones literarias ...', 'El hijo de rana, rin rin renacuajo salió esta mañana muy tieso y muy majo con pantalón corto y corbata a la moda\r\nsombrero encintado y chupa de moda.\r\nmuchacho no salgas, le grita mamá  pero el hace un gesto y orondo se vá Halló en el camino un ratón vecino y le dijo: amigo venga usted conmigo visitemos juntos a doña ratona y habrá francachela y habrá comilona.', '1578929228rin-rin-15.jpg', '2020-12-31', 1, '2020-01-10 15:56:38', '2020-01-13 20:33:29'),
(2, 'noticia_principal', 'El ingenioso hidalgo don quijote de la mancha', 'Don Quijote de la Mancha ​ es una novela escrita por el español Miguel de Cervantes Saavedra ...', 'En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo que vivía un hidalgo de los de lanza en astillero, adarga antigua, rocín flaco y galgo corredor. Una olla de algo más vaca que carnero, salpicón las más noches, duelos y quebrantos los sábados, lantejas los viernes, algún palomino de añadidura los domingos, consumían las tres cuartas partes de su hacienda. El resto della concluían sayo de velarte, calzas de velludo para las fiestas, con sus pantuflos de lo mesmo, y los días de entresemana se honraba con su vellorí de lo más fino. Tenía en su casa una ama que pasaba de los cuarenta, y una sobrina que no llegaba a los veinte, y un mozo de campo y plaza, que así ensillaba el rocín como tomaba la podadera. Frisaba la edad de nuestro hidalgo con los cincuenta años; era de complexión recia, seco de carnes, enjuto de rostro, gran madrugador y amigo de la caza. Quieren decir que tenía el sobrenombre de Quijada, o Quesada, que en esto hay alguna diferencia en los autores que deste caso escriben; aunque, por conjeturas verosímiles, se deja entender que se llamaba Quejana. Pero esto importa poco a nuestro cuento; basta que en la narración dél no se salga un punto de la verdad.', 'quijote.jpg', '2020-01-10', 1, '2020-01-10 21:33:56', '2020-01-10 21:33:56'),
(4, 'noticia_principal', 'El conde de Montecristo', 'El conde de Montecristo es una novela de aventuras clásica de Alexandre Dumas y Auguste Maquet ...', 'El 24 de febrero de 1815, el vigía de Nuestra Señora de la Guarda dio la señal de que se hallaba a la vista el bergantín El Faraón procedente de Esmirna, Trieste y Nápoles. Como suele hacerse en tales casos, salió inmediatamente en su busca un práctico, que pasó por delante del castillo de If y subió a bordo del buque entre la isla de Rión y el cabo Mongión.\r\nEn un instante, y también como de costumbre, se llenó de curiosos la plataforma del castillo de San Juan, porque en Marsella se daba gran importancia a la llegada de un buque y sobre todo si le sucedía lo que al Faraón, cuyo casco había salido de los astilleros de la antigua Focia y pertenecía a un naviero de la ciudad.', '1578929266el-conde.jpg', '2020-01-28', 1, '2020-01-13 12:40:56', '2020-01-13 15:27:46'),
(5, 'noticia_principal', 'Colombia Amarga', 'Crónicas que dejan la noción de una endemia colombiana: la violencia en todas sus manifestaciones ..', 'Diez reportajes iniciales que intentan dejar la noción de una endemia colombiana: la violencia en todas sus manifestaciones, que nos llegó con la invasión de América y que se hace más patética en la época de la República. Tras ella, el éxodo que en las últimas décadas ha llevado a millares de gentes de la zona andina y de los litorales a morir en la tierra paupérrima de las selvas; a emigrar hacia Venezuela, Ecuador, Panamá y el Caribe, en forma de mercado humano, o hacia Estados Unidos y Europa, portando droga.', '1578919631colombia-amarga.jpg', '2020-01-29', 1, '2020-01-13 12:47:11', '2020-01-13 12:47:11'),
(6, 'noticia_principal', 'El Informe Pelícano', 'El Informe Pelícano novela del escritor estadounidense John Grisham publicada en 1992 ...', 'El juez liberal del Tribunal Supremo Abe Rosenberg es asesinado de un balazo en la cabeza. Más tarde, Glenn Jensen, el juez conservador del tribunal, muere estrangulado en un cine, posiblemente por el mismo asesino. Una estudiante de derecho llamado Darby Shaw cree tener la respuesta a estos asesinatos.', '1578919939informe.jpg', '2020-01-29', 1, '2020-01-13 12:52:19', '2020-01-13 12:52:19'),
(7, 'noticia_principal', 'Carnaval de Negros y Blancos', 'El Carnaval de Negros y Blancos es la fiesta más grande e importante del sur de Colombia.', 'El Carnaval de Negros y Blancos es la fiesta más grande e importante del sur de Colombia. Si bien por su indicación geográfica le pertenece a la ciudad de San Juan de Pasto,1​ también ha sido adoptada por otros municipios del departamento de Nariño y del suroccidente Colombiano. Se celebra del 2 al 7 de enero de cada año, y atrae un considerable número de turistas colombianos y extranjeros.', '1578948953negros.jpeg', '2020-02-26', 1, '2020-01-13 20:55:53', '2020-01-13 20:55:53'),
(8, 'noticia_corta', 'El carnaval de Barranquillas', 'noticia corta', 'El carnaval de Barranquilla es un acontecimiento en el que se expresan todas las variedades culturales y el folclor de la Costa Caribe Colombiana, así como las más variadas manifestaciones locales, como la música popular y el baile. Son motivo de risas y sustos los muchos disfraces que invocan todo tipo de especies animales, nativas y extrañas; negros africanos; cabezones; dementes; muñecotas; superhéroes; seres mitológicos, que trascienden los límites de la sexualidad y la Muerte, entre un número casi interminable de invenciones y ocurrencias populares. Algunos de los disfraces más tradicionales del carnaval de Barranquilla son la Marimonda, el Garabato, el Congo y el Monocuco. Otros elementos propios del carnaval de Barranquilla son las máscaras de torito, las letanías, las verbenas, así como los disfraces satíricos y alusivos a sucesos de actualidad que se convierten en motivo de hilaridad colectiva y que causan gran expectativa cada año. Actualmente participan cerca de quinientas agrupaciones folclóricas y los ingresos generados a la ciudad por este evento rondan los cuarenta mil millones de pesos.', '1578949358barranquilla.jpg', '2020-02-27', 1, '2020-01-13 21:02:38', '2020-01-13 21:06:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametro`
--

CREATE TABLE `parametro` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre_conjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Conjunto de prueba',
  `direccion_conjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'direccion conjunto',
  `telefono_conjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT '(031 555 44 33)',
  `email_conjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'emailprueba@conjunto.com',
  `fondo_conjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'imagen-principal.jpg',
  `logo_conjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'logo-principal.png',
  `slogan_conjunto` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'Slogan Principal del Conjunto',
  `nosotros_conjunto` longtext COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `parametro`
--

INSERT INTO `parametro` (`id`, `nombre_conjunto`, `direccion_conjunto`, `telefono_conjunto`, `email_conjunto`, `fondo_conjunto`, `logo_conjunto`, `slogan_conjunto`, `nosotros_conjunto`, `created_at`, `updated_at`) VALUES
(1, 'Conjunto de prueba', 'direccion conjunto', '031 555 44 33', 'emailprueba@conjunto.com', 'imagen-principal.jpg', 'logo-principal.png', 'Slogan Principal del Conjunto', 'Del mismo modo que se puede cambiar el aspecto del texto por medio de las barras de herramientas,es posible tambien modificar el aspecto de los parrafos.', '2020-01-10 15:56:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso`
--

CREATE TABLE `permiso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permiso_rol`
--

CREATE TABLE `permiso_rol` (
  `rol_id` bigint(20) UNSIGNED NOT NULL,
  `permiso_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador Sistema', '2020-01-10 15:56:34', NULL),
(2, 'Administrador', '2020-01-10 15:56:34', NULL),
(3, 'Concejo Presidente', '2020-01-10 15:56:35', NULL),
(4, 'Concejo Vice-Presidente', '2020-01-10 15:56:35', NULL),
(5, 'Concejo Secretario', '2020-01-10 15:56:35', NULL),
(6, 'Concejo Tesorero', '2020-01-10 15:56:35', NULL),
(7, 'Concejo Vocal', '2020-01-10 15:56:35', NULL),
(8, 'Contador', '2020-01-10 15:56:35', NULL),
(9, 'Seguridad', '2020-01-10 15:56:35', NULL),
(10, 'Propietario', '2020-01-10 15:56:35', NULL),
(11, 'Residente', '2020-01-10 15:56:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_docu`
--

CREATE TABLE `tipo_docu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `abreb_id` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_id` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_docu`
--

INSERT INTO `tipo_docu` (`id`, `abreb_id`, `tipo_id`, `created_at`, `updated_at`) VALUES
(1, 'CC', 'Cedula de ciudadania', '2020-01-10 15:56:35', NULL),
(2, 'CE', 'Cedula de extranjeria', '2020-01-10 15:56:35', NULL),
(3, 'PA', 'Pasaporte', '2020-01-10 15:56:36', NULL),
(4, 'RC', 'Registro Civil', '2020-01-10 15:56:36', NULL),
(5, 'TI', 'Tarjeta de identidad', '2020-01-10 15:56:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_docu_id` bigint(20) UNSIGNED NOT NULL,
  `identificacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'usuario-inicial.jpg',
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `tipo_docu_id`, `identificacion`, `nombres`, `apellidos`, `genero`, `fecha_nacimiento`, `email`, `telefono`, `foto`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, '79984883', 'Cesar Eduardo', 'Maya Toloza', 'M', '1978-05-22', 'cesarmaya1006@gmail.com', '350 807 9232', 'usuario-inicial.jpg', '$2y$10$djRask9Yv4RLv1XnOV7O8OmarXqg.sRbHa9LnyJsYCOyVaMKhx46i', '2020-01-10 15:56:36', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol_id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id`, `rol_id`, `usuario_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2020-01-10 15:56:36', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adjunto_noticia`
--
ALTER TABLE `adjunto_noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_adjunto_noticia` (`noticia_id`);

--
-- Indices de la tabla `icono`
--
ALTER TABLE `icono`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `imagenes_ubicacion_unique` (`ubicacion`),
  ADD UNIQUE KEY `imagenes_foto_unique` (`foto`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD KEY `fk_menurol_rol` (`rol_id`),
  ADD KEY `fk_menurol_menu` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parametro`
--
ALTER TABLE `parametro`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso`
--
ALTER TABLE `permiso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD KEY `fk_permisorol_rol` (`rol_id`),
  ADD KEY `fk_permisorol_permiso` (`permiso_id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rol_nombre_unique` (`nombre`);

--
-- Indices de la tabla `tipo_docu`
--
ALTER TABLE `tipo_docu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuariorol_tipo_docu` (`tipo_docu_id`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuariorol_rol` (`rol_id`),
  ADD KEY `fk_usuariorol_usuario` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adjunto_noticia`
--
ALTER TABLE `adjunto_noticia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `icono`
--
ALTER TABLE `icono`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1554;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `parametro`
--
ALTER TABLE `parametro`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permiso`
--
ALTER TABLE `permiso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tipo_docu`
--
ALTER TABLE `tipo_docu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adjunto_noticia`
--
ALTER TABLE `adjunto_noticia`
  ADD CONSTRAINT `fk_adjunto_noticia` FOREIGN KEY (`noticia_id`) REFERENCES `noticia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_rol`
--
ALTER TABLE `menu_rol`
  ADD CONSTRAINT `fk_menurol_menu` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_menurol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `permiso_rol`
--
ALTER TABLE `permiso_rol`
  ADD CONSTRAINT `fk_permisorol_permiso` FOREIGN KEY (`permiso_id`) REFERENCES `permiso` (`id`),
  ADD CONSTRAINT `fk_permisorol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuariorol_tipo_docu` FOREIGN KEY (`tipo_docu_id`) REFERENCES `tipo_docu` (`id`);

--
-- Filtros para la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD CONSTRAINT `fk_usuariorol_rol` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `fk_usuariorol_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
