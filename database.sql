-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2020 a las 20:36:20
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lssemsdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'configuroweb', 573124569876, 'hola@cweb.com', '4b67deeb9aba04a5b54632ad19934f26', '2019-11-29 12:54:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `Category`, `CreationDate`) VALUES
(1, 'Mucama', '2019-11-29 00:42:22'),
(2, 'Conductor', '2019-11-30 05:43:18'),
(3, 'Cocinero', '2019-11-30 05:43:27'),
(4, 'Lechero', '2019-11-30 05:43:36'),
(5, 'Repartidor de Periódico', '2019-11-30 05:43:46'),
(6, 'Limpiador de Carro', '2019-11-30 05:43:58'),
(7, 'Niñera', '2019-11-30 05:44:05'),
(8, 'Profesor', '2019-11-30 05:44:18'),
(9, 'Instructor de Gimnasio', '2019-11-30 05:44:29'),
(10, 'Plomero', '2019-11-30 05:44:39'),
(11, 'Instructor de Basketball', '2019-11-30 05:44:56'),
(12, 'Electrónico', '2019-11-30 05:45:30'),
(13, 'Ensamblador', '2019-11-30 05:45:42'),
(14, 'Carpintero', '2019-11-30 05:45:52'),
(15, 'Limpiador de Casas', '2019-11-30 05:46:05'),
(16, 'Pintor', '2019-11-30 05:46:14'),
(17, 'Vendedor de Tienda', '2019-11-30 05:46:24'),
(18, 'Dóctor', '2019-11-30 05:46:37'),
(19, 'Fisioterapeuta', '2019-11-30 05:47:02'),
(20, 'Enfermera', '2019-11-30 05:47:12'),
(21, 'Lavandero', '2019-11-30 05:47:29'),
(22, 'Jardinero', '2019-11-30 05:47:41'),
(23, 'Mensajero', '2019-11-30 05:47:55'),
(24, 'Sastre', '2019-11-30 05:48:10'),
(25, 'Otro', '2019-11-30 05:48:22'),
(26, 'Filosofo', '2019-12-10 16:56:20'),
(27, 'Pintor Industrial', '2020-05-06 03:48:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(50) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'Nosotros', '<div><font color=\"#6a6a6a\" face=\"arial, sans-serif\"><span style=\"font-size: 14px;\"><b>La búsqueda local es el uso de motores de búsqueda especializados en Internet que permiten a los usuarios enviar búsquedas restringidas geográficamente en una base de datos estructurada de negocios locales.</b></span></font></div>', NULL, NULL, '2020-05-06 02:59:15'),
(2, 'contactus', 'Contacto', 'Ciudad Cali Colombia', 'msevillab@gmail.com', 3162430081, '2020-05-06 03:16:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblperson`
--

CREATE TABLE `tblperson` (
  `ID` int(10) NOT NULL,
  `Category` varchar(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Picture` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `City` varchar(200) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblperson`
--

INSERT INTO `tblperson` (`ID`, `Category`, `Name`, `Picture`, `MobileNumber`, `Address`, `City`, `RegDate`) VALUES
(1, 'Mucama', 'Alicia Benavides', 'f8f739456cbea88ff65ac2e6758ae0431588733438.jpg', 573166874951, 'Calle 50 N 12-34', 'Barranquilla', '2019-11-30 07:01:53'),
(2, 'Mucama', 'Miriam Galindo', 'c19c33a4106c0a2709086aa37e5772971588733565.jpg', 573184752013, 'Avenida 34 N 34-90', 'Ciénaga', '2019-12-02 04:37:21'),
(3, 'Mucama', 'Karina Galvez', '6731dfdad8d8cb3fed05450789ed4fe31588733639.jpg', 573196423187, 'Carrera 93 N 34-43', 'Cali', '2019-12-02 04:38:59'),
(4, 'Conductor', 'Juan Becerra', '1e6ae4ada992769567b71815f124fac51575261598.jpg', 573215748120, 'Transversal 90 N 13-72', 'Bogotá', '2019-12-02 04:39:58'),
(5, 'Conductor', 'Rafael Velandia', '55ccf27d26d7b23839986b6ae2e447ab1575261706.jpg', 573048574103, 'Calle 29 N 12-70', 'Medellín', '2019-12-02 04:41:46'),
(6, 'Conductor', 'Mauricio Garcia', '7fdc1a630c238af0815181f9faa190f51575261743.jpg', 573126489731, 'Carrera 56 N 92-23', 'Cucuta', '2019-12-02 04:42:23'),
(7, 'Cocinero', 'Roberto Meriño', 'efc1a80c391be252d7d777a437f868701575261793.jpg', 573156989754, 'Avenida 98 N 23-23', 'Cartagena', '2019-12-02 04:43:13'),
(8, 'Cocinero', 'Dilan Camargo', 'efc1a80c391be252d7d777a437f868701575261837.jpg', 573236748497, 'Calle 56 N 43-23', 'Sabanalarga', '2019-12-02 04:43:57'),
(9, 'Lechero', 'Daniel Mendoza', '1e6ae4ada992769567b71815f124fac51575261908.jpg', 573164879754, 'Carrera 98 N 23-13', 'Cartagena', '2019-12-02 04:45:08'),
(10, 'Lechero', 'Julio Gonzalez', '1e6ae4ada992769567b71815f124fac51575274951.jpg', 573147528497, 'Calle 34 N 34-29', 'Barranquilla', '2019-12-02 04:46:01'),
(11, 'Repartidor de Periódico', 'Esteban Pérez', '7fdc1a630c238af0815181f9faa190f51575262022.jpg', 573026748749, 'Carrera 9 N 24-25', 'Cali', '2019-12-02 04:47:02'),
(12, 'Limpiador de Carro', 'Armando Valencia', '55ccf27d26d7b23839986b6ae2e447ab1575262079.jpg', 573165656565, 'Carrera 78 N 34-25', 'Bogotá', '2019-12-02 04:47:59'),
(13, 'Niñera', 'Jasmin Florez', 'efc1a80c391be252d7d777a437f868701575262135.jpg', 573146346873, 'Calle 98 N 12-02', 'Medellín', '2019-12-02 04:48:55'),
(14, 'Profesor', 'Emilio Pedraza', 'efc1a80c391be252d7d777a437f868701575262207.jpg', 573165486742, 'Avenida Gloria N 97-12 Apto 200', 'Ciénaga', '2019-12-02 04:50:07'),
(15, 'Profesor', 'Julián Román', '7fdc1a630c238af0815181f9faa190f51575262248.jpg', 573155646878, 'Calle 14 N 23-19', 'Cali', '2019-12-02 04:50:48'),
(16, 'Profesor', 'Eduardo Galán', 'efc1a80c391be252d7d777a437f868701575262299.jpg', 573198765498, 'Carrera 25 N 18-90', 'Santamarta', '2019-12-02 04:51:39'),
(17, 'Profesor', 'Luis Páez', 'efc1a80c391be252d7d777a437f868701575262345.jpg', 573145464654, 'Calle 45 N 23-90', 'Soledad', '2019-12-02 04:52:25'),
(18, 'Instructor de Gimnasio', 'Jorge Rana', '1e6ae4ada992769567b71815f124fac51575262395.jpg', 573068744574, 'Avenida Los Martirez N 76-34', 'Bogotá', '2019-12-02 04:53:15'),
(19, 'Instructor de Gimnasio', 'Diego Ladrón', '55ccf27d26d7b23839986b6ae2e447ab1575262429.jpg', 573148032687, 'Calle 12 N 23-90', 'Ciénaga', '2019-12-02 04:53:49'),
(20, 'Plomero', 'Ricardo Cornejo', '1e6ae4ada992769567b71815f124fac51575262482.jpg', 573167867278, 'Calle 87 N 12-12', 'Cartagena', '2019-12-02 04:54:42'),
(21, 'Plomero', 'Francisco Piernagorda', '7fdc1a630c238af0815181f9faa190f51575621536.jpg', 573189895496, 'Carrera 24 N 56-20', 'Cali', '2019-12-06 08:38:56'),
(22, 'Traductor', 'Pedro Francia', '3de6c2fdd28f94768b423d0c95ae91bc1575997039.png', 573193778033, 'Calle 23 N 23-90', 'Barranquilla', '2019-12-10 16:57:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `CreationDate` (`CreationDate`);

--
-- Indices de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblperson`
--
ALTER TABLE `tblperson`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Category_2` (`Category`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tblperson`
--
ALTER TABLE `tblperson`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
