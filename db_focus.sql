-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2021 a las 20:52:08
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_focus`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acta`
--

CREATE TABLE `acta` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpersona` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalvoto` int(11) DEFAULT NULL,
  `totalnulo` int(11) DEFAULT NULL,
  `totalblanco` int(11) DEFAULT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `acta`
--

INSERT INTO `acta` (`id`, `idpersona`, `descripcion`, `totalvoto`, `totalnulo`, `totalblanco`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 20, 5, 5, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(2, 2, NULL, 50, 10, 5, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(3, 3, NULL, 60, 3, 10, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(4, 4, NULL, 80, 10, 0, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(5, 5, NULL, 66, 20, 3, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(6, 6, NULL, 90, 3, 20, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(7, 7, NULL, 80, 10, 2, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(8, 8, NULL, 90, 4, 10, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(9, 9, NULL, 60, 5, 5, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(10, 10, NULL, 30, 3, 6, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(11, 11, NULL, 70, 6, 3, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(12, 12, NULL, 90, 2, 15, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(13, 13, NULL, 80, 6, 5, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(14, 14, NULL, 60, 6, 10, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(15, 15, NULL, 86, 6, 5, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(16, 16, NULL, 90, 10, 6, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(17, 17, NULL, 95, 6, 2, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(18, 18, NULL, 20, 5, 5, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(19, 19, NULL, 80, 2, 10, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(20, 20, NULL, 60, 10, 2, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(21, 21, NULL, 40, 3, 12, 'A', '2021-01-12 00:22:29', '2021-01-12 00:22:29'),
(22, 22, NULL, 20, 5, 5, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(23, 22, NULL, 79, 9, 2, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(24, 2, NULL, 46, 2, 7, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(25, 3, NULL, 48, 6, 3, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(26, 4, NULL, 67, 8, 1, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(27, 5, NULL, 40, 20, 5, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(28, 6, NULL, 40, 6, 5, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(29, 7, NULL, 60, 15, 5, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(30, 8, NULL, 60, 3, 2, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(31, 9, NULL, 56, 9, 2, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(32, 10, NULL, 80, 3, 2, 'A', '2021-01-12 00:22:30', '2021-01-12 00:22:30'),
(33, 11, NULL, 89, 6, 5, 'A', '2021-01-12 00:22:31', '2021-01-12 00:22:31'),
(34, 13, NULL, 32, 4, 3, 'A', '2021-01-12 00:22:31', '2021-01-12 00:22:31'),
(35, 14, NULL, 120, 20, 4, 'A', '2021-01-12 00:22:32', '2021-01-12 00:22:32'),
(36, 15, NULL, 30, 3, 2, 'A', '2021-01-12 00:22:32', '2021-01-12 00:22:32'),
(37, 16, NULL, 70, 5, 2, 'A', '2021-01-12 00:22:32', '2021-01-12 00:22:32'),
(38, 17, NULL, 90, 8, 6, 'A', '2021-01-12 00:22:32', '2021-01-12 00:22:32'),
(39, 18, NULL, 70, 6, 5, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(40, 19, NULL, 80, 9, 3, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(41, 20, NULL, 80, 3, 2, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(42, 21, NULL, 60, 3, 2, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(43, 22, NULL, 86, 3, 2, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(44, 1, NULL, 60, 3, 2, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(45, 4, NULL, 86, 3, 3, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(46, 2, NULL, 80, 6, 8, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(47, 3, NULL, 67, 9, 8, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(48, 4, NULL, 90, 10, 5, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(49, 5, NULL, 53, 3, 2, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33'),
(50, 6, NULL, 70, 6, 5, 'A', '2021-01-12 00:22:33', '2021-01-12 00:22:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidato`
--

CREATE TABLE `candidato` (
  `id` int(10) UNSIGNED NOT NULL,
  `idpartido` int(10) UNSIGNED NOT NULL,
  `idpersona` int(10) UNSIGNED NOT NULL,
  `rol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(10) UNSIGNED NOT NULL,
  `idciudad` int(10) UNSIGNED DEFAULT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `idciudad`, `nombre`, `estado`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Bolivia', 'A', '2021-01-12 00:22:15', '2021-01-12 00:22:15'),
(2, 1, 'Santa Cruz', 'A', '2021-01-12 00:22:15', '2021-01-12 00:22:15'),
(3, 1, 'Beni', 'A', '2021-01-12 00:22:15', '2021-01-12 00:22:15'),
(4, 1, 'Pando', 'A', '2021-01-12 00:22:15', '2021-01-12 00:22:15'),
(5, 1, 'Cochabamba', 'A', '2021-01-12 00:22:15', '2021-01-12 00:22:15'),
(6, 1, 'Sucre', 'A', '2021-01-12 00:22:15', '2021-01-12 00:22:15'),
(7, 1, 'Tarija', 'A', '2021-01-12 00:22:15', '2021-01-12 00:22:15'),
(8, 1, 'Potosi', 'A', '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(9, 1, 'Oruro', 'A', '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(10, 1, 'La Paz', 'A', '2021-01-12 00:22:16', '2021-01-12 00:22:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(10) UNSIGNED NOT NULL,
  `ci` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero` enum('F','M','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delegado`
--

CREATE TABLE `delegado` (
  `id` int(10) UNSIGNED NOT NULL,
  `idmesa` int(10) UNSIGNED NOT NULL,
  `idpersona` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudio`
--

CREATE TABLE `estudio` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ubicacion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `foto`
--

CREATE TABLE `foto` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idservicio` int(10) UNSIGNED NOT NULL,
  `precio` int(10) UNSIGNED NOT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen_acta`
--

CREATE TABLE `imagen_acta` (
  `id` int(10) UNSIGNED NOT NULL,
  `idacta` int(10) UNSIGNED NOT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id` int(10) UNSIGNED NOT NULL,
  `idrecinto` int(10) UNSIGNED NOT NULL,
  `nro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id`, `idrecinto`, `nro`, `nombre`, `imagen`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:20', '2021-01-12 00:22:20'),
(2, 1, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(3, 1, '3', 'Mesa nro.- 3', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(4, 2, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(5, 2, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(6, 3, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(7, 3, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(8, 3, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(9, 3, '4', 'Mesa nro.-4', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(10, 4, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(11, 4, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:21', '2021-01-12 00:22:21'),
(12, 5, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:22', '2021-01-12 00:22:22'),
(13, 6, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:22', '2021-01-12 00:22:22'),
(14, 6, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:22', '2021-01-12 00:22:22'),
(15, 6, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(16, 7, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(17, 7, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(18, 8, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(19, 8, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(20, 8, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(21, 9, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(22, 9, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(23, 9, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(24, 10, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(25, 10, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(26, 10, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(27, 10, '4', 'Mesa nro.-4', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(28, 11, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(29, 11, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:23', '2021-01-12 00:22:23'),
(30, 12, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:24', '2021-01-12 00:22:24'),
(31, 12, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:24', '2021-01-12 00:22:24'),
(32, 12, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:24', '2021-01-12 00:22:24'),
(33, 13, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(34, 14, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(35, 14, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(36, 15, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(37, 16, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(38, 17, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(39, 17, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(40, 18, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(41, 18, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(42, 18, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(43, 18, '4', 'Mesa nro.-4', NULL, 'A', '2021-01-12 00:22:25', '2021-01-12 00:22:25'),
(44, 19, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:26', '2021-01-12 00:22:26'),
(45, 19, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:26', '2021-01-12 00:22:26'),
(46, 20, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(47, 21, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(48, 21, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(49, 21, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(50, 22, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(51, 23, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(52, 23, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(53, 24, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(54, 25, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(55, 25, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(56, 25, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(57, 25, '4', 'Mesa nro.-4', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(58, 26, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(59, 26, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(60, 27, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(61, 28, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(62, 28, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(63, 28, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:27', '2021-01-12 00:22:27'),
(64, 29, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(65, 29, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(66, 30, '1', 'Mesa nro.-1', NULL, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(67, 30, '2', 'Mesa nro.-2', NULL, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(68, 30, '3', 'Mesa nro.-3', NULL, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(69, 30, '4', 'Mesa nro.-4', NULL, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(70, 30, '5', 'Mesa nro.-5', NULL, 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_10_08_035725_create_ciudad_table', 1),
(17, '2019_10_08_035937_create_recinto_table', 1),
(18, '2019_10_08_042251_create_persona_table', 1),
(19, '2019_10_08_042312_create_mesa_table', 1),
(20, '2019_10_08_152108_create_partido_table', 1),
(21, '2019_10_08_155629_create_acta_table', 1),
(22, '2019_10_08_155704_create_voto_table', 1),
(23, '2019_10_08_161900_create_qr_table', 1),
(24, '2020_01_03_205719_create_imagen_acta_table', 1),
(25, '2020_01_03_205759_create_candidato_table', 1),
(26, '2020_02_16_152846_create_delegado_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sigla` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id`, `nombre`, `sigla`, `imagen`, `color`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Creemos', 'CREEMOS', NULL, '#FE15CC', 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(2, 'Movimiento Al Socialismo ', 'MAS', NULL, '#0319D3', 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(3, 'Comunidad Ciudana', 'CC', NULL, '#EA5B09', 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(4, 'Frente para la Victoria', 'FPV', NULL, '#43A703', 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(5, 'Acción Democrática Nacionalista', 'ADN', NULL, '#1BDCFF', 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(6, 'Partido de Accion Nacional Boliviano', 'PAN-BOL', NULL, '#FCA3A3', 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28'),
(7, 'Libertad y Democracia', 'LIBRE', NULL, '#FCA3A3', 'A', '2021-01-12 00:22:28', '2021-01-12 00:22:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(10) UNSIGNED NOT NULL,
  `idciudad` int(10) UNSIGNED NOT NULL,
  `ci` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` enum('F','M','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `idciudad`, `ci`, `nombre`, `apellido`, `direccion`, `telefono`, `imagen`, `genero`, `estado`, `created_at`, `updated_at`) VALUES
(1, 2, '23546513', 'Viviana', 'Banegas Rocas', 'B/27 de Mayo C/las piedras #12', '1235698', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(2, 2, '23216513', 'Jorge', 'Valdivieso Arazola', 'B/San Rosita C/las lomas #14', '3256896', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(3, 2, '978324175', 'Marcia', 'Rosales Rivero', 'B/San Martin C/4 #123', '66958963', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(4, 3, '794678913', 'Cristiane', 'Sousa Justiniano', 'B/3 de diciembre C/venezuela #456', '77789663', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(5, 3, '2379821', 'Jose Luis', 'Burgos Orellana', 'B/san francisco C/primavera #124', '65899963', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(6, 3, '34656730', 'Gualberto', 'Aguilar Romero', 'B/las maravillas C/las piedritas #125', '3336596', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(7, 4, '235346789', 'Fernando', 'Camacho Ardaya', 'B/las palmeras C/9 #126', '3365214', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(8, 4, '7984906', 'Romina', 'Ayala Martinez', 'B/los lotes C/camacho #12', '3256986', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(9, 4, '7961446', 'Brayan', 'Bogota Perez', 'B/4 de noviembre C/Claudio gomez #127', '74896523', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(10, 4, '9631562', 'Pedro', 'Algarañaz Suarez', 'B/1ero de Mayo C/tarija #128', '68963222', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(11, 5, '56844561', 'Gladys', 'Caballero Rosales', 'B/las torchas av. lujan #129', '652236', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(12, 5, '321866', 'Rolando', 'Salvatierra Rocha', 'B/las moliendas C/las tuercas #1224', '74896523', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(13, 6, '0791312', 'Jose', 'Rivero Añez', 'B/las americas C/11 #1233', '652145896', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(14, 6, '1354341', 'Mario', 'Eguez Peñaloza', 'B/Panamericano C/romulo #1246', '65215896', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(15, 7, '8957896', 'Eltan', 'Figueroa Andrades', 'B/Almendras C/las tutumas #1278', '74521563', NULL, 'M', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(16, 7, '132443', 'Karola', 'Montalvo Flores', 'B/la selva C/panama #1200', '65232145', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(17, 8, '3431300', 'Katherine', 'Vilches Ozuna', 'B/los cupesi C/italia #12798', '74589632', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(18, 8, '654851', 'Alejandra', 'Espejo zamora', 'B/espejillo C/los tajibos #1279', '78965215', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(19, 9, '7943213', 'Carla', 'Moreno Salguero', 'B/mamore C/sucre #12897', '75412369', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(20, 9, '021352', 'Nelly', 'Mendoza Paz', 'B/las frutillas C/potosi #1222', '65215896', NULL, 'F', 'A', '2021-01-12 00:22:19', '2021-01-12 00:22:19'),
(21, 10, '9959232', 'Danila', 'Rojas Valdez', 'B/el trompillo C/kenide #128791', '78939388', NULL, 'F', 'A', '2021-01-12 00:22:20', '2021-01-12 00:22:20'),
(22, 10, '9613434', 'Vilma', 'Zenteno Morales', 'B/melchor pinto C/las visitas #8955', '63596563', NULL, 'F', 'A', '2021-01-12 00:22:20', '2021-01-12 00:22:20'),
(23, 10, '9613434', 'Juan', 'Zenteno Morales', 'B/melchor pinto C/las visitas #8955', '7863256', NULL, 'M', 'A', '2021-01-12 00:22:20', '2021-01-12 00:22:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qr`
--

CREATE TABLE `qr` (
  `id` int(10) UNSIGNED NOT NULL,
  `idacta` int(10) UNSIGNED NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qrcode`
--

CREATE TABLE `qrcode` (
  `id` int(10) UNSIGNED NOT NULL,
  `idservicio` int(10) UNSIGNED NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recinto`
--

CREATE TABLE `recinto` (
  `id` int(10) UNSIGNED NOT NULL,
  `idciudad` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `recinto`
--

INSERT INTO `recinto` (`id`, `idciudad`, `nombre`, `ubicacion`, `imagen`, `estado`, `fecha`, `hora`, `created_at`, `updated_at`) VALUES
(1, 2, 'Col. Don Bosco', '2do anillo C/palmito #375', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(2, 2, 'Col. German Busch', '4do anillo C/Venezuela #502', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(3, 2, 'Col. Aleman', '2do anillo C/Enrique Finot #789', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(4, 2, 'UAGRM', '1er anillo C/Mexico #123', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(5, 2, 'Col. 1er de Mayo', '9no anillo C/Las Vegas #709', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(6, 2, 'Col. Americano', '8vo anillo C/Paraguay #736', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(7, 3, 'Esc. General Barriento', 'B/Tajibo C/Las Vegas #452', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(8, 3, 'Esc. San Matias', 'B/Los Pios C/Las palmeritas #422', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(9, 3, 'Esc. General Avaroa', 'B/Tejado C/Las Piñas #432', NULL, 'A', NULL, NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16'),
(10, 3, 'Col. San Pablo', 'B/Suiza C/Las Petas #412', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(11, 3, 'Esc. San Francisco', 'B/Andino C/Beni #333', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(12, 3, 'Univ. San Xavier', 'B/Totora C/Claveles #200', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(13, 4, 'Col. Japones ', 'B/Tokio C/Ayacucho #352', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(14, 4, 'Col. Jardin de Dios ', 'B/Paraiso C/Adan #302', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(15, 4, 'Col. Maria Auxiliadora ', 'B/Torotoro C/Alemana #213', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(16, 5, 'Univ. Unibol ', 'B/ Las MaravillasC/Camacho #462', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(17, 5, 'Univ. Chuquisica ', 'B/ Los Guapases C/Amagro #482', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(18, 5, 'Col. Frances ', 'B/ Las Hamacas C/Tulipanes #620', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(19, 6, 'Esc. Eduardo Avaroa', 'B/ Los Guapos C/pinos #654', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(20, 6, 'Esc. Angeles', 'B/ Amazonas C/La paz #634', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(21, 6, 'Col. Austria', 'B/Las tinajas C/Jimenez #644', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(22, 7, 'Col. Fe y alegria', 'B/santa Fe C/ Rodriguez #777', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(23, 7, 'Col. San Luis', 'B/Misiones del Carmen C/ Piraña #712', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(24, 7, 'Univ. Univalles', 'B/Moscu C/ San Aurelio #717', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(25, 8, 'Univ. San Simon', 'B/Alegria C/ Sucre #320', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(26, 8, 'Col. San Jose', 'B/Merced C/ Cochabamba #326', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(27, 8, 'Col. San Tomas', 'B/Teresa C/ Alemana #330', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(28, 9, 'Col. 16 de Julio', 'B/Los Chacos C/ Murillo #856', NULL, 'A', NULL, NULL, '2021-01-12 00:22:17', '2021-01-12 00:22:17'),
(29, 9, 'Col. Andres Ibañez', 'B/Los guayabos C/ Guatemala #836', NULL, 'A', NULL, NULL, '2021-01-12 00:22:18', '2021-01-12 00:22:18'),
(30, 10, 'Col. Calver', 'B/santa Maria C/ Argentina #369', NULL, 'A', NULL, NULL, '2021-01-12 00:22:18', '2021-01-12 00:22:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idestudio` int(10) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `esadmin` enum('A','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `apellido`, `email`, `usuario`, `email_verified_at`, `password`, `imagen`, `estado`, `esadmin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrador', NULL, 'admin', NULL, '$2y$10$5if5w6FaI2COiUT3RzPQK.fX3y8Lcpr3P5CPeUH6AdowzUzMdNium', NULL, 'A', 'A', NULL, '2021-01-12 00:22:16', '2021-01-12 00:22:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `voto`
--

CREATE TABLE `voto` (
  `id` int(10) UNSIGNED NOT NULL,
  `idmesa` int(10) UNSIGNED NOT NULL,
  `idacta` int(10) UNSIGNED NOT NULL,
  `idpartido` int(10) UNSIGNED DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `estado` enum('A','N','B') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `voto`
--

INSERT INTO `voto` (`id`, `idmesa`, `idacta`, `idpartido`, `cantidad`, `estado`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 30, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(2, 1, 1, 2, 10, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(3, 1, 1, 3, 20, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(4, 1, 1, 4, 40, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(5, 1, 1, 5, 50, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(6, 1, 1, 6, 25, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(7, 1, 1, 7, 55, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(8, 2, 2, 1, 30, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(9, 2, 2, 2, 15, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(10, 2, 2, 3, 20, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(11, 2, 2, 4, 25, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(12, 2, 2, 5, 35, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(13, 2, 2, 6, 60, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(14, 2, 2, 7, 55, 'A', '2021-01-12 00:22:34', '2021-01-12 00:22:34'),
(15, 3, 3, 1, 30, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(16, 3, 3, 2, 33, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(17, 3, 3, 3, 34, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(18, 3, 3, 4, 35, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(19, 3, 3, 5, 70, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(20, 3, 3, 6, 54, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(21, 3, 3, 7, 59, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(22, 4, 4, 1, 55, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(23, 4, 4, 2, 40, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(24, 4, 4, 3, 45, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(25, 4, 4, 4, 50, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(26, 4, 4, 5, 55, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(27, 4, 4, 6, 70, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(28, 4, 4, 7, 75, 'A', '2021-01-12 00:22:35', '2021-01-12 00:22:35'),
(29, 5, 5, 1, 8, 'A', '2021-01-12 00:22:36', '2021-01-12 00:22:36'),
(30, 5, 5, 2, 80, 'A', '2021-01-12 00:22:36', '2021-01-12 00:22:36'),
(31, 5, 5, 3, 90, 'A', '2021-01-12 00:22:36', '2021-01-12 00:22:36'),
(32, 5, 5, 4, 95, 'A', '2021-01-12 00:22:36', '2021-01-12 00:22:36'),
(33, 5, 5, 5, 100, 'A', '2021-01-12 00:22:36', '2021-01-12 00:22:36'),
(34, 5, 5, 6, 35, 'A', '2021-01-12 00:22:36', '2021-01-12 00:22:36'),
(35, 5, 5, 7, 85, 'A', '2021-01-12 00:22:37', '2021-01-12 00:22:37'),
(36, 6, 6, 1, 95, 'A', '2021-01-12 00:22:37', '2021-01-12 00:22:37'),
(37, 6, 6, 2, 88, 'A', '2021-01-12 00:22:37', '2021-01-12 00:22:37'),
(38, 6, 6, 3, 77, 'A', '2021-01-12 00:22:37', '2021-01-12 00:22:37'),
(39, 6, 6, 4, 75, 'A', '2021-01-12 00:22:37', '2021-01-12 00:22:37'),
(40, 6, 6, 5, 67, 'A', '2021-01-12 00:22:37', '2021-01-12 00:22:37'),
(41, 6, 6, 6, 59, 'A', '2021-01-12 00:22:37', '2021-01-12 00:22:37'),
(42, 6, 6, 7, 62, 'A', '2021-01-12 00:22:38', '2021-01-12 00:22:38'),
(43, 7, 7, 1, 100, 'A', '2021-01-12 00:22:38', '2021-01-12 00:22:38'),
(44, 7, 7, 2, 30, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(45, 7, 7, 3, 40, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(46, 7, 7, 4, 70, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(47, 7, 7, 5, 66, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(48, 7, 7, 6, 72, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(49, 7, 7, 7, 81, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(50, 8, 8, 1, 7, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(51, 8, 8, 2, 10, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(52, 8, 8, 3, 15, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(53, 8, 8, 4, 27, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(54, 8, 8, 5, 80, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(55, 8, 8, 6, 30, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(56, 8, 8, 7, 18, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(57, 9, 9, 1, 79, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(58, 9, 9, 2, 99, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(59, 9, 9, 3, 60, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(60, 9, 9, 4, 85, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(61, 9, 9, 5, 77, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(62, 9, 9, 6, 62, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(63, 9, 9, 7, 61, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(64, 10, 10, 1, 100, 'A', '2021-01-12 00:22:39', '2021-01-12 00:22:39'),
(65, 10, 10, 2, 90, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(66, 10, 10, 3, 95, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(67, 10, 10, 4, 100, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(68, 10, 10, 5, 30, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(69, 10, 10, 6, 70, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(70, 10, 10, 7, 50, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(71, 11, 11, 1, 100, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(72, 11, 11, 2, 91, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(73, 11, 11, 3, 30, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(74, 11, 11, 4, 100, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(75, 11, 11, 5, 80, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(76, 11, 11, 6, 71, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(77, 11, 11, 7, 5, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(78, 12, 12, 1, 20, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(79, 12, 12, 2, 40, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(80, 12, 12, 3, 60, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(81, 12, 12, 4, 80, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(82, 12, 12, 5, 100, 'A', '2021-01-12 00:22:40', '2021-01-12 00:22:40'),
(83, 12, 12, 6, 120, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(84, 12, 12, 7, 140, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(85, 13, 13, 1, 40, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(86, 13, 13, 2, 45, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(87, 13, 13, 3, 50, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(88, 13, 13, 4, 55, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(89, 13, 13, 5, 60, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(90, 13, 13, 6, 66, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(91, 13, 13, 7, 130, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(92, 14, 14, 1, 110, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(93, 14, 14, 2, 120, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(94, 14, 14, 3, 140, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(95, 14, 14, 4, 145, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(96, 14, 14, 4, 150, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(97, 14, 14, 5, 160, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(98, 14, 14, 6, 170, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(99, 14, 14, 7, 180, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(100, 15, 15, 1, 16, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(101, 15, 15, 2, 35, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(102, 15, 15, 3, 46, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(103, 15, 15, 4, 58, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(104, 15, 15, 5, 73, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(105, 15, 15, 6, 95, 'A', '2021-01-12 00:22:41', '2021-01-12 00:22:41'),
(106, 15, 15, 7, 112, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(107, 16, 16, 1, 20, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(108, 16, 16, 2, 37, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(109, 16, 16, 3, 42, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(110, 16, 16, 4, 55, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(111, 16, 16, 5, 60, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(112, 16, 16, 6, 10, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(113, 16, 16, 7, 84, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(114, 17, 17, 1, 8, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(115, 17, 17, 2, 17, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(116, 17, 17, 3, 22, 'A', '2021-01-12 00:22:42', '2021-01-12 00:22:42'),
(117, 17, 17, 4, 33, 'A', '2021-01-12 00:22:43', '2021-01-12 00:22:43'),
(118, 17, 17, 5, 41, 'A', '2021-01-12 00:22:43', '2021-01-12 00:22:43'),
(119, 17, 17, 6, 63, 'A', '2021-01-12 00:22:43', '2021-01-12 00:22:43'),
(120, 17, 17, 7, 72, 'A', '2021-01-12 00:22:43', '2021-01-12 00:22:43'),
(121, 18, 18, 1, 180, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(122, 18, 18, 2, 110, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(123, 18, 18, 3, 91, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(124, 18, 18, 4, 13, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(125, 18, 18, 4, 24, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(126, 18, 18, 5, 35, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(127, 18, 18, 6, 36, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(128, 18, 18, 7, 201, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(129, 19, 19, 1, 203, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(130, 19, 19, 2, 96, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(131, 19, 19, 3, 103, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(132, 19, 19, 4, 95, 'A', '2021-01-12 00:22:44', '2021-01-12 00:22:44'),
(133, 19, 19, 5, 81, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(134, 19, 19, 6, 76, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(135, 19, 19, 7, 32, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(136, 20, 20, 1, 79, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(137, 20, 20, 2, 30, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(138, 20, 20, 3, 46, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(139, 20, 20, 4, 61, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(140, 20, 20, 5, 48, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(141, 20, 20, 6, 163, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(142, 20, 20, 7, 156, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(143, 21, 21, 1, 99, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(144, 21, 21, 2, 57, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(145, 21, 21, 3, 79, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(146, 21, 21, 4, 69, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(147, 21, 21, 5, 26, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(148, 21, 21, 6, 38, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(149, 21, 21, 7, 43, 'A', '2021-01-12 00:22:45', '2021-01-12 00:22:45'),
(150, 22, 22, 1, 19, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(151, 22, 22, 2, 29, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(152, 22, 22, 3, 39, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(153, 22, 22, 4, 56, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(154, 22, 22, 5, 67, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(155, 22, 22, 6, 87, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(156, 22, 22, 7, 39, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(157, 23, 23, 1, 28, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(158, 23, 23, 2, 115, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(159, 23, 23, 3, 121, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(160, 23, 23, 4, 91, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(161, 23, 23, 5, 41, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(162, 23, 23, 6, 48, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(163, 23, 23, 7, 89, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(164, 24, 24, 1, 14, 'A', '2021-01-12 00:22:46', '2021-01-12 00:22:46'),
(165, 24, 24, 2, 49, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(166, 24, 24, 3, 56, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(167, 24, 24, 4, 78, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(168, 24, 24, 5, 56, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(169, 24, 24, 6, 37, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(170, 24, 24, 7, 62, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(171, 25, 25, 1, 49, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(172, 25, 25, 2, 87, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(173, 25, 25, 3, 46, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(174, 25, 25, 4, 49, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(175, 25, 25, 5, 63, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(176, 25, 25, 6, 215, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(177, 25, 25, 7, 10, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(178, 26, 26, 1, 19, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(179, 26, 26, 2, 56, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(180, 26, 26, 3, 62, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(181, 26, 26, 4, 116, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(182, 26, 26, 5, 120, 'A', '2021-01-12 00:22:47', '2021-01-12 00:22:47'),
(183, 26, 26, 6, 126, 'A', '2021-01-12 00:22:48', '2021-01-12 00:22:48'),
(184, 26, 26, 7, 236, 'A', '2021-01-12 00:22:48', '2021-01-12 00:22:48'),
(185, 27, 27, 1, 116, 'A', '2021-01-12 00:22:48', '2021-01-12 00:22:48'),
(186, 27, 27, 2, 110, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(187, 27, 27, 3, 56, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(188, 27, 27, 4, 76, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(189, 27, 27, 5, 89, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(190, 27, 27, 6, 110, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(191, 27, 27, 7, 223, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(192, 28, 28, 1, 56, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(193, 28, 28, 2, 63, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(194, 28, 28, 3, 79, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(195, 28, 28, 4, 112, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(196, 28, 28, 5, 123, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(197, 28, 28, 6, 10, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(198, 28, 28, 7, 20, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(199, 29, 29, 1, 63, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(200, 29, 29, 2, 321, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(201, 29, 29, 3, 13, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(202, 29, 29, 4, 28, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(203, 29, 29, 5, 36, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(204, 29, 29, 6, 89, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(205, 29, 29, 7, 47, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(206, 30, 30, 1, 66, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(207, 30, 30, 2, 78, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(208, 30, 30, 3, 231, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(209, 30, 30, 4, 78, 'A', '2021-01-12 00:22:49', '2021-01-12 00:22:49'),
(210, 30, 30, 5, 143, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(211, 30, 30, 6, 86, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(212, 30, 30, 7, 78, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(213, 31, 31, 1, 16, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(214, 31, 31, 2, 29, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(215, 31, 31, 3, 33, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(216, 31, 31, 4, 89, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(217, 31, 31, 5, 215, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(218, 31, 31, 6, 77, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(219, 31, 31, 6, 21, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(220, 31, 31, 7, 34, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(221, 32, 32, 1, 33, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(222, 32, 32, 2, 61, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(223, 32, 32, 3, 177, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(224, 32, 32, 4, 96, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(225, 32, 32, 5, 37, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(226, 32, 32, 6, 46, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(227, 32, 32, 7, 79, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(228, 33, 33, 1, 63, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(229, 33, 33, 2, 98, 'A', '2021-01-12 00:22:50', '2021-01-12 00:22:50'),
(230, 33, 33, 3, 114, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(231, 33, 33, 4, 97, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(232, 33, 33, 5, 113, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(233, 33, 33, 6, 233, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(234, 33, 33, 7, 46, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(235, 34, 34, 1, 88, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(236, 34, 34, 2, 78, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(237, 34, 34, 3, 73, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(238, 34, 34, 4, 26, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(239, 34, 34, 5, 56, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(240, 34, 34, 6, 67, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(241, 34, 34, 7, 83, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(242, 35, 35, 1, 73, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(243, 35, 35, 2, 30, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(244, 35, 35, 3, 10, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(245, 35, 35, 4, 5, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(246, 35, 35, 5, 12, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(247, 35, 35, 6, 6, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(248, 35, 35, 7, 20, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(249, 36, 36, 1, 20, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(250, 36, 36, 2, 30, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(251, 36, 36, 3, 10, 'A', '2021-01-12 00:22:51', '2021-01-12 00:22:51'),
(252, 36, 36, 4, 50, 'A', '2021-01-12 00:22:52', '2021-01-12 00:22:52'),
(253, 36, 36, 5, 2, 'A', '2021-01-12 00:22:52', '2021-01-12 00:22:52'),
(254, 36, 36, 6, 10, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(255, 36, 36, 7, 30, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(256, 37, 37, 1, 10, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(257, 37, 37, 2, 30, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(258, 37, 37, 3, 15, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(259, 37, 37, 4, 50, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(260, 37, 37, 5, 40, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(261, 37, 37, 6, 15, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(262, 37, 37, 7, 17, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(263, 38, 38, 1, 30, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(264, 38, 38, 2, 36, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(265, 38, 38, 3, 61, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(266, 38, 38, 4, 20, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(267, 38, 38, 5, 40, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(268, 38, 38, 6, 40, 'A', '2021-01-12 00:22:53', '2021-01-12 00:22:53'),
(269, 38, 38, 7, 20, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(270, 39, 39, 1, 2, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(271, 39, 39, 2, 30, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(272, 39, 39, 3, 1, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(273, 39, 39, 4, 30, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(274, 39, 39, 5, 10, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(275, 39, 39, 6, 5, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(276, 39, 39, 7, 23, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(277, 40, 40, 1, 10, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(278, 40, 40, 2, 22, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(279, 40, 40, 3, 10, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(280, 40, 40, 4, 11, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(281, 40, 40, 5, 45, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(282, 40, 40, 6, 14, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(283, 40, 40, 7, 6, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(284, 41, 41, 1, 10, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(285, 41, 41, 2, 3, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(286, 41, 41, 3, 5, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(287, 41, 41, 4, 25, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(288, 41, 41, 5, 30, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(289, 41, 41, 6, 30, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(290, 41, 41, 7, 2, 'A', '2021-01-12 00:22:54', '2021-01-12 00:22:54'),
(291, 42, 42, 1, 20, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(292, 42, 42, 2, 24, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(293, 42, 42, 3, 32, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(294, 42, 42, 4, 25, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(295, 42, 42, 5, 32, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(296, 42, 42, 6, 14, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(297, 42, 42, 7, 6, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(298, 43, 43, 1, 10, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(299, 43, 43, 2, 12, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(300, 43, 43, 3, 15, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(301, 43, 43, 4, 19, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(302, 43, 43, 5, 23, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(303, 43, 43, 6, 29, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(304, 43, 43, 7, 33, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(305, 44, 44, 1, 38, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(306, 44, 44, 2, 45, 'A', '2021-01-12 00:22:55', '2021-01-12 00:22:55'),
(307, 44, 44, 3, 58, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(308, 44, 44, 4, 68, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(309, 44, 44, 5, 76, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(310, 44, 44, 6, 79, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(311, 44, 44, 7, 88, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(312, 45, 45, 1, 45, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(313, 45, 45, 2, 57, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(314, 45, 45, 3, 89, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(315, 45, 45, 4, 99, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(316, 45, 45, 5, 113, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(317, 45, 45, 6, 66, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(318, 45, 45, 7, 120, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(319, 46, 46, 1, 79, 'A', '2021-01-12 00:22:56', '2021-01-12 00:22:56'),
(320, 46, 46, 2, 96, 'A', '2021-01-12 00:22:57', '2021-01-12 00:22:57'),
(321, 46, 46, 3, 73, 'A', '2021-01-12 00:22:57', '2021-01-12 00:22:57'),
(322, 46, 46, 4, 48, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(323, 46, 46, 5, 36, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(324, 46, 46, 6, 12, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(325, 46, 46, 7, 83, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(326, 47, 47, 1, 35, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(327, 47, 47, 2, 14, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(328, 47, 47, 3, 84, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(329, 47, 47, 4, 5, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(330, 47, 47, 5, 30, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(331, 47, 47, 6, 20, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(332, 47, 47, 7, 36, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(333, 48, 48, 1, 223, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(334, 48, 48, 2, 28, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(335, 48, 48, 3, 12, 'A', '2021-01-12 00:22:58', '2021-01-12 00:22:58'),
(336, 48, 48, 4, 5, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(337, 48, 48, 5, 78, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(338, 48, 48, 6, 62, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(339, 48, 48, 7, 39, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(340, 49, 49, 1, 40, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(341, 49, 49, 2, 5, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(342, 49, 49, 3, 17, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(343, 49, 49, 4, 78, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(344, 49, 49, 5, 15, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(345, 49, 49, 6, 20, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(346, 49, 49, 7, 62, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(347, 50, 50, 1, 4, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(348, 50, 50, 2, 12, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(349, 50, 50, 3, 28, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(350, 50, 50, 4, 46, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(351, 50, 50, 5, 5, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(352, 50, 50, 6, 10, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59'),
(353, 50, 50, 7, 82, 'A', '2021-01-12 00:22:59', '2021-01-12 00:22:59');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acta`
--
ALTER TABLE `acta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acta_idpersona_foreign` (`idpersona`);

--
-- Indices de la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidato_idpartido_foreign` (`idpartido`),
  ADD KEY `candidato_idpersona_foreign` (`idpersona`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ciudad_idciudad_foreign` (`idciudad`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `delegado`
--
ALTER TABLE `delegado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delegado_idmesa_foreign` (`idmesa`),
  ADD KEY `delegado_idpersona_foreign` (`idpersona`);

--
-- Indices de la tabla `estudio`
--
ALTER TABLE `estudio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foto_idservicio_foreign` (`idservicio`);

--
-- Indices de la tabla `imagen_acta`
--
ALTER TABLE `imagen_acta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imagen_acta_idacta_foreign` (`idacta`);

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mesa_idrecinto_foreign` (`idrecinto`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_idciudad_foreign` (`idciudad`);

--
-- Indices de la tabla `qr`
--
ALTER TABLE `qr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qr_idacta_foreign` (`idacta`);

--
-- Indices de la tabla `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qrcode_idevento_foreign` (`idservicio`);

--
-- Indices de la tabla `recinto`
--
ALTER TABLE `recinto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recinto_idciudad_foreign` (`idciudad`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evento_idestudio_foreign` (`idestudio`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voto_idmesa_foreign` (`idmesa`),
  ADD KEY `voto_idacta_foreign` (`idacta`),
  ADD KEY `voto_idpartido_foreign` (`idpartido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acta`
--
ALTER TABLE `acta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `candidato`
--
ALTER TABLE `candidato`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `delegado`
--
ALTER TABLE `delegado`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudio`
--
ALTER TABLE `estudio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen_acta`
--
ALTER TABLE `imagen_acta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `qr`
--
ALTER TABLE `qr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recinto`
--
ALTER TABLE `recinto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `voto`
--
ALTER TABLE `voto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acta`
--
ALTER TABLE `acta`
  ADD CONSTRAINT `acta_idpersona_foreign` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `candidato`
--
ALTER TABLE `candidato`
  ADD CONSTRAINT `candidato_idpartido_foreign` FOREIGN KEY (`idpartido`) REFERENCES `partido` (`id`),
  ADD CONSTRAINT `candidato_idpersona_foreign` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_idciudad_foreign` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`id`);

--
-- Filtros para la tabla `delegado`
--
ALTER TABLE `delegado`
  ADD CONSTRAINT `delegado_idmesa_foreign` FOREIGN KEY (`idmesa`) REFERENCES `mesa` (`id`),
  ADD CONSTRAINT `delegado_idpersona_foreign` FOREIGN KEY (`idpersona`) REFERENCES `persona` (`id`);

--
-- Filtros para la tabla `imagen_acta`
--
ALTER TABLE `imagen_acta`
  ADD CONSTRAINT `imagen_acta_idacta_foreign` FOREIGN KEY (`idacta`) REFERENCES `acta` (`id`);

--
-- Filtros para la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD CONSTRAINT `mesa_idrecinto_foreign` FOREIGN KEY (`idrecinto`) REFERENCES `recinto` (`id`);

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_idciudad_foreign` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`id`);

--
-- Filtros para la tabla `qr`
--
ALTER TABLE `qr`
  ADD CONSTRAINT `qr_idacta_foreign` FOREIGN KEY (`idacta`) REFERENCES `acta` (`id`);

--
-- Filtros para la tabla `recinto`
--
ALTER TABLE `recinto`
  ADD CONSTRAINT `recinto_idciudad_foreign` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`id`);

--
-- Filtros para la tabla `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `voto_idacta_foreign` FOREIGN KEY (`idacta`) REFERENCES `acta` (`id`),
  ADD CONSTRAINT `voto_idmesa_foreign` FOREIGN KEY (`idmesa`) REFERENCES `mesa` (`id`),
  ADD CONSTRAINT `voto_idpartido_foreign` FOREIGN KEY (`idpartido`) REFERENCES `partido` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
