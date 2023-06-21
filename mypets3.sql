-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2023 a las 00:24:52
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
-- Base de datos: `mypets3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'Administrador'),
(1, 'Cliente'),
(2, 'Vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 3, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 3, 22),
(23, 3, 23),
(24, 3, 24),
(25, 3, 25),
(26, 3, 26),
(27, 3, 27),
(28, 3, 28),
(29, 3, 29),
(30, 3, 30),
(31, 3, 31),
(32, 3, 32),
(33, 3, 33),
(34, 3, 34),
(35, 3, 35),
(36, 3, 36),
(37, 3, 37),
(38, 3, 38),
(39, 3, 39),
(40, 3, 40),
(41, 3, 41),
(42, 3, 42),
(43, 3, 43),
(44, 3, 44),
(45, 3, 45),
(46, 3, 46),
(47, 3, 47),
(48, 3, 48),
(49, 3, 49),
(50, 3, 50),
(51, 3, 51),
(52, 3, 52),
(53, 3, 53),
(54, 3, 54),
(55, 3, 55),
(56, 3, 56),
(57, 3, 57),
(58, 3, 58),
(59, 3, 59),
(60, 3, 60);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add marca producto', 6, 'add_marcaproducto'),
(22, 'Can change marca producto', 6, 'change_marcaproducto'),
(23, 'Can delete marca producto', 6, 'delete_marcaproducto'),
(24, 'Can view marca producto', 6, 'view_marcaproducto'),
(25, 'Can add mascota', 7, 'add_mascota'),
(26, 'Can change mascota', 7, 'change_mascota'),
(27, 'Can delete mascota', 7, 'delete_mascota'),
(28, 'Can view mascota', 7, 'view_mascota'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add carrito producto', 10, 'add_carritoproducto'),
(38, 'Can change carrito producto', 10, 'change_carritoproducto'),
(39, 'Can delete carrito producto', 10, 'delete_carritoproducto'),
(40, 'Can view carrito producto', 10, 'view_carritoproducto'),
(41, 'Can add carrito cliente', 11, 'add_carritocliente'),
(42, 'Can change carrito cliente', 11, 'change_carritocliente'),
(43, 'Can delete carrito cliente', 11, 'delete_carritocliente'),
(44, 'Can view carrito cliente', 11, 'view_carritocliente'),
(45, 'Can add boleta', 12, 'add_boleta'),
(46, 'Can change boleta', 12, 'change_boleta'),
(47, 'Can delete boleta', 12, 'delete_boleta'),
(48, 'Can view boleta', 12, 'view_boleta'),
(49, 'Can add user', 13, 'add_user'),
(50, 'Can change user', 13, 'change_user'),
(51, 'Can delete user', 13, 'delete_user'),
(52, 'Can view user', 13, 'view_user'),
(53, 'Can add estado despacho', 14, 'add_estadodespacho'),
(54, 'Can change estado despacho', 14, 'change_estadodespacho'),
(55, 'Can delete estado despacho', 14, 'delete_estadodespacho'),
(56, 'Can view estado despacho', 14, 'view_estadodespacho'),
(57, 'Can add despacho cliente', 15, 'add_despachocliente'),
(58, 'Can change despacho cliente', 15, 'change_despachocliente'),
(59, 'Can delete despacho cliente', 15, 'delete_despachocliente'),
(60, 'Can view despacho cliente', 15, 'view_despachocliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_boleta`
--

CREATE TABLE `core_boleta` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritocliente`
--

CREATE TABLE `core_carritocliente` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritocliente_items`
--

CREATE TABLE `core_carritocliente_items` (
  `id` int(11) NOT NULL,
  `carritocliente_id` int(11) NOT NULL,
  `carritoproducto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritoproducto`
--

CREATE TABLE `core_carritoproducto` (
  `id` int(11) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_despachocliente`
--

CREATE TABLE `core_despachocliente` (
  `id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `numerocompra_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_estadodespacho`
--

CREATE TABLE `core_estadodespacho` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_marcaproducto`
--

CREATE TABLE `core_marcaproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(15) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_marcaproducto`
--

INSERT INTO `core_marcaproducto` (`id`, `descripcion`, `imagen`) VALUES
(1, 'jodran', 'Jodran_Hi5oXcF.jpg'),
(2, 'Didadas', 'Didadas_VDHSq4q.png'),
(3, 'Nice', 'Nice_cADbKGu.png'),
(4, 'Nacoste', 'Nacoste_DOoreQQ.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_mascota`
--

CREATE TABLE `core_mascota` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_mascota`
--

INSERT INTO `core_mascota` (`id`, `descripcion`) VALUES
(2, 'gato'),
(3, 'Perro'),
(4, 'Huron'),
(5, 'Roedor'),
(6, 'Ave'),
(7, 'Pez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(90) NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL CHECK (`precio` >= 0),
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `imagen` varchar(100) DEFAULT NULL,
  `vigente` tinyint(1) NOT NULL,
  `destacado` tinyint(1) NOT NULL,
  `marca_id` int(11) NOT NULL,
  `mascota_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `carrusel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `vigente`, `destacado`, `marca_id`, `mascota_id`, `tipo_id`, `carrusel`) VALUES
(1, 'Metralleta pa gato', 'Pega fuerte', 10990, 23, 'gato_metralleta_Fmp6k19.jpg', 1, 1, 1, 2, 1, 1),
(2, 'Armadura pa gato', '+5 de armadura', 5990, 1, 'gato_armadura_jElq0iy.png', 1, 1, 1, 2, 1, 1),
(3, 'Poleron Rojo Gato', 'Poleron Rojo para gatos especial para el invierno.', 8990, 6, 'gatopoleron.jpg', 1, 1, 4, 2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'metralleta'),
(2, 'Ropa de mascota'),
(3, 'Comida'),
(4, 'Collar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(7, '2023-06-20 20:44:41.157970', '1', 'Cliente', 1, '[{\"added\": {}}]', 3, 2),
(8, '2023-06-20 20:44:45.830596', '2', 'Vendedor', 1, '[{\"added\": {}}]', 3, 2),
(9, '2023-06-20 20:44:58.055008', '2', 'Vendedor', 2, '[]', 3, 2),
(10, '2023-06-20 20:45:06.266277', '3', 'Administrador', 1, '[{\"added\": {}}]', 3, 2),
(11, '2023-06-20 20:45:11.859204', '2', 'Vendedor', 2, '[]', 3, 2),
(12, '2023-06-20 20:46:01.810097', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"Nombre\", \"Direccion\"]}}]', 13, 2),
(13, '2023-06-20 20:46:36.714333', '3', 'Benja', 1, '[{\"added\": {}}]', 13, 2),
(14, '2023-06-20 20:46:59.939645', '4', 'Vendedor 1', 1, '[{\"added\": {}}]', 13, 2),
(15, '2023-06-20 20:47:06.968806', '4', 'Vendedor 1', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 13, 2),
(16, '2023-06-20 20:58:38.401821', '4', 'Vendedor 1', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 13, 2),
(17, '2023-06-20 20:58:46.188799', '3', 'Benja', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 13, 2),
(18, '2023-06-20 20:58:53.730322', '2', 'Administrador', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 13, 2),
(19, '2023-06-20 21:08:34.226599', '1', 'Metralleta pa gato', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 9, 2),
(20, '2023-06-20 21:08:46.916997', '1', 'Metralleta pa gato', 2, '[{\"changed\": {\"fields\": [\"Carrusel\"]}}]', 9, 2),
(21, '2023-06-20 21:15:37.435226', '2', 'Armadura pa gato', 1, '[{\"added\": {}}]', 9, 2),
(22, '2023-06-20 21:16:42.990481', '1', 'jodran', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 6, 2),
(23, '2023-06-20 21:16:54.618122', '2', 'Didadas', 1, '[{\"added\": {}}]', 6, 2),
(24, '2023-06-20 21:17:08.356641', '3', 'Nice', 1, '[{\"added\": {}}]', 6, 2),
(25, '2023-06-20 21:17:17.347443', '4', 'Nacoste', 1, '[{\"added\": {}}]', 6, 2),
(26, '2023-06-20 21:17:55.571541', '2', 'Ropa de mascota', 1, '[{\"added\": {}}]', 8, 2),
(27, '2023-06-20 21:18:37.905969', '3', 'Comida', 1, '[{\"added\": {}}]', 8, 2),
(28, '2023-06-20 21:18:43.902770', '4', 'Collar', 1, '[{\"added\": {}}]', 8, 2),
(29, '2023-06-20 21:18:54.451734', '3', 'Perro', 1, '[{\"added\": {}}]', 7, 2),
(30, '2023-06-20 21:18:58.880047', '4', 'Huron', 1, '[{\"added\": {}}]', 7, 2),
(31, '2023-06-20 21:19:03.394320', '5', 'Ratón', 1, '[{\"added\": {}}]', 7, 2),
(32, '2023-06-20 21:19:13.040936', '6', 'Ave', 1, '[{\"added\": {}}]', 7, 2),
(33, '2023-06-20 21:19:49.596794', '7', 'Pez', 1, '[{\"added\": {}}]', 7, 2),
(34, '2023-06-20 21:20:13.233511', '5', 'Roedor', 2, '[{\"changed\": {\"fields\": [\"Descripcion\"]}}]', 7, 2),
(35, '2023-06-20 21:21:49.524214', '3', 'Poleron Rojo Gato', 1, '[{\"added\": {}}]', 9, 2),
(36, '2023-06-20 21:22:05.169994', '3', 'Poleron Rojo Gato', 2, '[{\"changed\": {\"fields\": [\"Imagen\"]}}]', 9, 2),
(37, '2023-06-20 21:22:21.647988', '3', 'Poleron Rojo Gato', 2, '[{\"changed\": {\"fields\": [\"Carrusel\"]}}]', 9, 2),
(38, '2023-06-20 22:00:14.794057', '3', 'Benja', 2, '[{\"changed\": {\"fields\": [\"Suscrito\"]}}]', 13, 2),
(39, '2023-06-20 22:10:16.330401', '4', 'Vendedor 1', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 13, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(12, 'core', 'boleta'),
(11, 'core', 'carritocliente'),
(10, 'core', 'carritoproducto'),
(15, 'core', 'despachocliente'),
(14, 'core', 'estadodespacho'),
(6, 'core', 'marcaproducto'),
(7, 'core', 'mascota'),
(9, 'core', 'producto'),
(8, 'core', 'tipoproducto'),
(5, 'sessions', 'session'),
(13, 'user', 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-15 13:32:31.346683'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-06-15 13:32:31.505506'),
(3, 'auth', '0001_initial', '2023-06-15 13:32:31.757618'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-06-15 13:32:32.400782'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-06-15 13:32:32.410000'),
(6, 'auth', '0004_alter_user_username_opts', '2023-06-15 13:32:32.422994'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-06-15 13:32:32.434999'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-06-15 13:32:32.509447'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-06-15 13:32:32.521451'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-06-15 13:32:32.536174'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-06-15 13:32:32.553077'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-06-15 13:32:32.599450'),
(13, 'auth', '0011_update_proxy_permissions', '2023-06-15 13:32:32.609710'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-06-15 13:32:32.620438'),
(15, 'user', '0001_initial', '2023-06-15 13:32:32.770105'),
(16, 'admin', '0001_initial', '2023-06-15 13:32:33.789517'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-06-15 13:32:34.044576'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-15 13:32:34.057576'),
(19, 'core', '0001_initial', '2023-06-15 13:32:34.375655'),
(20, 'sessions', '0001_initial', '2023-06-15 13:32:35.785523'),
(21, 'core', '0002_producto_carrusel', '2023-06-20 20:43:15.809226'),
(22, 'core', '0003_marcaproducto_imagen', '2023-06-20 20:43:15.826163'),
(23, 'core', '0004_despachocliente_estadodespacho', '2023-06-20 20:43:15.878067'),
(24, 'core', '0005_auto_20230620_1639', '2023-06-20 20:43:16.153247'),
(25, 'user', '0002_auto_20230620_1639', '2023-06-20 20:43:16.264949'),
(26, 'user', '0003_auto_20230620_1641', '2023-06-20 20:43:16.352714'),
(27, 'user', '0004_auto_20230620_1658', '2023-06-20 20:58:15.049450');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6t0zujtp453wypohxbgq7lti2n8a1e2v', '.eJxVjDsOwjAQBe_iGlnrD2ZNSZ8zWOvsBgeQI8VJhbg7iZQC2jcz760SrUtJa5M5jayuyqrT75apf0rdAT-o3ifdT3WZx6x3RR-06W5ied0O9--gUCtb7a1xgl6Ms4YAHEYxJmYXCNGD98h8zgOIZw6YL5ucxdEAbChARKs-X7e1NzA:1qBjYm:S1l2RpEo9w8QUDA5VhYY8eq9bOZWyoAQf-4kjlemxnE', '2023-07-04 22:10:48.275587'),
('frhnmj9ceacjdpl5g9km03yucvyz6z9i', '.eJxVjE0OwiAYBe_C2hChQMGl-56BfH-VqqFJaVfGu2uTLnT7Zua9VIZtLXlrsuSJ1UUZdfrdEOghdQd8h3qbNc11XSbUu6IP2vQwszyvh_t3UKCVbx0cOwk9AjIk6sAYssg-Rnu2krwkEXDeiTeYYOytDUAhQudGMIkY1fsD_qg4vA:1q9o43:CPZsed_nqFI_4IDvoK4AmtD32QMmkF2x1CpnPQuOTWw', '2023-06-29 14:35:07.991196'),
('q08ppway3cq0cs40lha53vu2vmx44yeb', '.eJxVjDsOwjAQBe_iGlnrD2ZNSZ8zWOvsBgeQI8VJhbg7iZQC2jcz760SrUtJa5M5jayuyqrT75apf0rdAT-o3ifdT3WZx6x3RR-06W5ied0O9--gUCtb7a1xgl6Ms4YAHEYxJmYXCNGD98h8zgOIZw6YL5ucxdEAbChARKs-X7e1NzA:1qBiCn:kFrxvvHclrD035avXs9XEYAcUHx1Hv4Rl5VhJgn_LEw', '2023-07-04 20:44:01.033785');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user`
--

CREATE TABLE `user_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `suscrito` tinyint(1) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_user`
--

INSERT INTO `user_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `suscrito`, `direccion`, `nombre`, `imagen`) VALUES
(2, 'pbkdf2_sha256$216000$pZsBmzXPohdf$AxY8uRFGTg7wjcDANJqoVShtqvhi9eefPRWPdyCGR38=', '2023-06-20 22:10:48.269602', 1, 'admin', '', '', '', 1, 1, '2023-06-20 20:43:54.000000', 0, 'Duocuc', 'Administrador', 'admin.jpg'),
(3, 'benja', NULL, 0, 'benja', '', '', '', 0, 1, '2023-06-20 20:46:16.000000', 1, 'Su casa', 'Benja', 'frebdifaber.png'),
(4, 'vendedor', NULL, 0, 'vendedor', '', '', '', 1, 1, '2023-06-20 20:46:39.000000', 0, 'La tienda 123', 'Vendedor 1', 'vendedor1.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_groups`
--

CREATE TABLE `user_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user_user_groups`
--

INSERT INTO `user_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 3, 1),
(6, 4, 1),
(5, 4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_user_permissions`
--

CREATE TABLE `user_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `core_boleta`
--
ALTER TABLE `core_boleta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_boleta_cliente_id_8cdbb871_fk_user_user_id` (`cliente_id`);

--
-- Indices de la tabla `core_carritocliente`
--
ALTER TABLE `core_carritocliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `core_carritocliente_items`
--
ALTER TABLE `core_carritocliente_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_carritocliente_item_carritocliente_id_carrit_54bba58c_uniq` (`carritocliente_id`,`carritoproducto_id`),
  ADD KEY `core_carritocliente__carritoproducto_id_c3a4a4f3_fk_core_carr` (`carritoproducto_id`);

--
-- Indices de la tabla `core_carritoproducto`
--
ALTER TABLE `core_carritoproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_carritoproducto_producto_id_a7fae35a_fk_core_producto_id` (`producto_id`),
  ADD KEY `core_carritoproducto_usuario_id_7f976157_fk_user_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_despachocliente`
--
ALTER TABLE `core_despachocliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_despachocliente_numerocompra_id_12f46e04_fk_core_boleta_id` (`numerocompra_id`),
  ADD KEY `core_despachocliente_usuario_id_90c370ba_fk_user_user_id` (`usuario_id`),
  ADD KEY `core_despachocliente_estado_id_8d1c3e1c_fk_core_esta` (`estado_id`);

--
-- Indices de la tabla `core_estadodespacho`
--
ALTER TABLE `core_estadodespacho`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_marcaproducto`
--
ALTER TABLE `core_marcaproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_mascota`
--
ALTER TABLE `core_mascota`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_marca_id_b2651e7a_fk_core_marcaproducto_id` (`marca_id`),
  ADD KEY `core_producto_mascota_id_fbd5f23f_fk_core_mascota_id` (`mascota_id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_user_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_user_groups_user_id_group_id_bb60391f_uniq` (`user_id`,`group_id`),
  ADD KEY `user_user_groups_group_id_c57f13c0_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_user_user_permissions_user_id_permission_id_64f4d5b8_uniq` (`user_id`,`permission_id`),
  ADD KEY `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `core_boleta`
--
ALTER TABLE `core_boleta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_carritocliente`
--
ALTER TABLE `core_carritocliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_carritocliente_items`
--
ALTER TABLE `core_carritocliente_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_carritoproducto`
--
ALTER TABLE `core_carritoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_despachocliente`
--
ALTER TABLE `core_despachocliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_estadodespacho`
--
ALTER TABLE `core_estadodespacho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_marcaproducto`
--
ALTER TABLE `core_marcaproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `core_mascota`
--
ALTER TABLE `core_mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `user_user`
--
ALTER TABLE `user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `core_boleta`
--
ALTER TABLE `core_boleta`
  ADD CONSTRAINT `core_boleta_cliente_id_8cdbb871_fk_user_user_id` FOREIGN KEY (`cliente_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_carritocliente`
--
ALTER TABLE `core_carritocliente`
  ADD CONSTRAINT `core_carritocliente_usuario_id_dd5ad0b4_fk_user_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_carritocliente_items`
--
ALTER TABLE `core_carritocliente_items`
  ADD CONSTRAINT `core_carritocliente__carritocliente_id_6a1c6fee_fk_core_carr` FOREIGN KEY (`carritocliente_id`) REFERENCES `core_carritocliente` (`id`),
  ADD CONSTRAINT `core_carritocliente__carritoproducto_id_c3a4a4f3_fk_core_carr` FOREIGN KEY (`carritoproducto_id`) REFERENCES `core_carritoproducto` (`id`);

--
-- Filtros para la tabla `core_carritoproducto`
--
ALTER TABLE `core_carritoproducto`
  ADD CONSTRAINT `core_carritoproducto_producto_id_a7fae35a_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `core_carritoproducto_usuario_id_7f976157_fk_user_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_despachocliente`
--
ALTER TABLE `core_despachocliente`
  ADD CONSTRAINT `core_despachocliente_estado_id_8d1c3e1c_fk_core_esta` FOREIGN KEY (`estado_id`) REFERENCES `core_estadodespacho` (`id`),
  ADD CONSTRAINT `core_despachocliente_numerocompra_id_12f46e04_fk_core_boleta_id` FOREIGN KEY (`numerocompra_id`) REFERENCES `core_boleta` (`id`),
  ADD CONSTRAINT `core_despachocliente_usuario_id_90c370ba_fk_user_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_marca_id_b2651e7a_fk_core_marcaproducto_id` FOREIGN KEY (`marca_id`) REFERENCES `core_marcaproducto` (`id`),
  ADD CONSTRAINT `core_producto_mascota_id_fbd5f23f_fk_core_mascota_id` FOREIGN KEY (`mascota_id`) REFERENCES `core_mascota` (`id`),
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk_core_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  ADD CONSTRAINT `user_user_groups_group_id_c57f13c0_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_user_groups_user_id_13f9a20d_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);

--
-- Filtros para la tabla `user_user_user_permissions`
--
ALTER TABLE `user_user_user_permissions`
  ADD CONSTRAINT `user_user_user_permi_permission_id_ce49d4de_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_user_user_permissions_user_id_31782f58_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
