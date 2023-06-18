-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2023 a las 16:41:30
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(52, 'Can view user', 13, 'view_user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_boleta`
--

CREATE TABLE `core_boleta` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritocliente`
--

CREATE TABLE `core_carritocliente` (
  `id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_carritocliente_items`
--

CREATE TABLE `core_carritocliente_items` (
  `id` int(11) NOT NULL,
  `carritocliente_id` int(11) NOT NULL,
  `carritoproducto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_marcaproducto`
--

CREATE TABLE `core_marcaproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_marcaproducto`
--

INSERT INTO `core_marcaproducto` (`id`, `descripcion`) VALUES
(1, 'jodran');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_mascota`
--

CREATE TABLE `core_mascota` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_mascota`
--

INSERT INTO `core_mascota` (`id`, `descripcion`) VALUES
(2, 'gato');

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
  `tipo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `vigente`, `destacado`, `marca_id`, `mascota_id`, `tipo_id`) VALUES
(1, 'Metralleta pa gato', 'Pega fuerte', 10990, 23, 'mqdefault_Q3CCd0M.jpg', 1, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'metralleta');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-15 14:36:01.449756', '1', 'jodran', 1, '[{\"added\": {}}]', 6, 1),
(2, '2023-06-15 14:36:08.560885', '1', 'dragon', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-06-15 14:36:14.548360', '1', 'metralleta', 1, '[{\"added\": {}}]', 8, 1),
(4, '2023-06-15 14:36:19.335395', '1', 'dragon', 3, '', 7, 1),
(5, '2023-06-15 14:36:22.279746', '2', 'gato', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(20, 'sessions', '0001_initial', '2023-06-15 13:32:35.785523');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('frhnmj9ceacjdpl5g9km03yucvyz6z9i', '.eJxVjE0OwiAYBe_C2hChQMGl-56BfH-VqqFJaVfGu2uTLnT7Zua9VIZtLXlrsuSJ1UUZdfrdEOghdQd8h3qbNc11XSbUu6IP2vQwszyvh_t3UKCVbx0cOwk9AjIk6sAYssg-Rnu2krwkEXDeiTeYYOytDUAhQudGMIkY1fsD_qg4vA:1q9o43:CPZsed_nqFI_4IDvoK4AmtD32QMmkF2x1CpnPQuOTWw', '2023-06-29 14:35:07.991196');

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
  `suscrito` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_user`
--

INSERT INTO `user_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `suscrito`) VALUES
(1, 'pbkdf2_sha256$216000$KhCb6Fk1EuYI$2Ok9TxwSB9sxABnR9vErx6h3PSGWwqoUPbl2IHP89+s=', '2023-06-15 14:35:07.985516', 1, 'admin', '', '', '', 1, 1, '2023-06-15 14:34:51.879997', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_groups`
--

CREATE TABLE `user_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_user_user_permissions`
--

CREATE TABLE `user_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

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
-- AUTO_INCREMENT de la tabla `core_marcaproducto`
--
ALTER TABLE `core_marcaproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_mascota`
--
ALTER TABLE `core_mascota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `user_user`
--
ALTER TABLE `user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_user_groups`
--
ALTER TABLE `user_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
