-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-05-2020 a las 19:57:07
-- Versión del servidor: 5.5.59
-- Versión de PHP: 5.4.45-0+deb7u12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--CREATE DATABASE IF NOT EXISTS KumbiaTest;
--USE  KumbiaTest;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tanhuato`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE IF NOT EXISTS `sucursales` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id sucursal',
  `Tipo` enum('Sucursal','Oficina','Coorporativo') NOT NULL,
  `IdCatalogo` int(5) unsigned NOT NULL COMMENT 'Catálogo',
  `IdAutoriza` int(4) unsigned NOT NULL COMMENT 'Usuario Autoriza',
  `IdPlaza` int(5) unsigned NOT NULL COMMENT 'Plaza',
  `idReportar` int(5) NOT NULL COMMENT 'Sucursal donde se reporta',
  `Nombre` varchar(50) NOT NULL COMMENT 'Nombre de la sucursal',
  `Encargado` varchar(50) NOT NULL COMMENT 'Gerente de sucursal',
  `Direccion` varchar(50) NOT NULL COMMENT 'Dirección',
  `Domicilio` varchar(100) NOT NULL COMMENT 'Calle',
  `Numero` varchar(10) NOT NULL COMMENT 'Número',
  `Interior` varchar(10) NOT NULL,
  `Barrio` varchar(50) NOT NULL COMMENT 'Barrio o Colonia',
  `Ciudad` varchar(50) NOT NULL COMMENT 'Localidad',
  `Estado` varchar(30) NOT NULL,
  `CP` varchar(6) NOT NULL,
  `IdCiudad` int(5) NOT NULL COMMENT 'Municipio',
  `NumeroCajerosautomaticos` int(3) NOT NULL COMMENT 'Número de cajeros autmáticos',
  `ClaveLocalidad` varchar(10) NOT NULL COMMENT 'Clave localidad',
  `Telefono` varchar(14) NOT NULL COMMENT 'Télefono',
  `Telefono2` varchar(20) NOT NULL COMMENT 'Teléfono 2',
  `Telefono3` int(15) NOT NULL,
  `TasaIVA` decimal(6,2) NOT NULL COMMENT 'Tasa IVA',
  `Autoriza` varchar(50) NOT NULL COMMENT 'Autoriza polizas',
  `IdPolizaActiva` int(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Id poliza activa',
  `Estatus` enum('Abierta','Cerrada','Suspendida','Coorporativo') NOT NULL DEFAULT 'Cerrada',
  `Fecha` date NOT NULL,
  `FolioSolicitudPrestamo` int(10) NOT NULL COMMENT 'Folio de solicitud de préstamo',
  `ContratoFonaes` varchar(30) NOT NULL COMMENT 'Contrato FONAES',
  `ClaveSucursal` varchar(8) NOT NULL,
  `SerieFE` varchar(1) NOT NULL COMMENT 'Serie facturación electronica',
  `EncargadoPrivacidadDatos` varchar(70) NOT NULL COMMENT 'Encarado de privacidad de datos',
  `Ponderacion5C` decimal(6,2) NOT NULL COMMENT 'Ponderación 5C',
  `PorcentajeparaGastos` decimal(10,4) NOT NULL COMMENT 'Porcentaje para gastos',
  `MaximoEfectivoEnCajas` decimal(12,2) NOT NULL COMMENT 'Máximo de efectivo en cajas',
  `PorcentajeProrrateo` decimal(18,2) NOT NULL,
  `Calle` varchar(30) NOT NULL,
  `Municipio` varchar(50) NOT NULL,
  `Latitud` varchar(40) NOT NULL,
  `Longitud` varchar(40) NOT NULL,
  `ClavePuntoTransaccionRegulatorio` varchar(10) NOT NULL,
  `DenominacionPuntoTransaccionRegulatorio` varchar(60) NOT NULL,
  `ColoniaCNBV` varchar(15) NOT NULL,
  `LocalidadCNBV` varchar(15) NOT NULL,
  `MunicipioCNBV` varchar(10) NOT NULL,
  `EstadoCNBV` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sucursal_usuario` (`IdAutoriza`),
  KEY `sucursal_catalogo` (`IdCatalogo`),
  KEY `IdPlaza` (`IdPlaza`),
  KEY `Estado` (`Estado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1000 ;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `Tipo`, `IdCatalogo`, `IdAutoriza`, `IdPlaza`, `idReportar`, `Nombre`, `Encargado`, `Direccion`, `Domicilio`, `Numero`, `Interior`, `Barrio`, `Ciudad`, `Estado`, `CP`, `IdCiudad`, `NumeroCajerosautomaticos`, `ClaveLocalidad`, `Telefono`, `Telefono2`, `Telefono3`, `TasaIVA`, `Autoriza`, `IdPolizaActiva`, `Estatus`, `Fecha`, `FolioSolicitudPrestamo`, `ContratoFonaes`, `ClaveSucursal`, `SerieFE`, `EncargadoPrivacidadDatos`, `Ponderacion5C`, `PorcentajeparaGastos`, `MaximoEfectivoEnCajas`, `PorcentajeProrrateo`, `Calle`, `Municipio`, `Latitud`, `Longitud`, `ClavePuntoTransaccionRegulatorio`, `DenominacionPuntoTransaccionRegulatorio`, `ColoniaCNBV`, `LocalidadCNBV`, `MunicipioCNBV`, `EstadoCNBV`) VALUES
(1, 'Sucursal', 5, 1, 2, 1, 'TANHUATO', 'JUAN CARLOS ZARATE CORTES', 'Ignacio Lozada, No.146', 'LEONA VIACARIO', '1', '0', 'CENTRO', 'TANHUATO', 'MICHOACAN', '59230', 1608686, 1, '', '', '', 0, 16.00, '', 0, 'Abierta', '0000-00-00', 4995, 'FONAES/ECA/2008/015', '01', 'B', '', 100.00, 0.0000, 50000.00, 40.09, 'IGNACIO LOZADA', 'GUADALAJARA', '20.199102', '-100.367011', '1', 'SUCURSAL MATRIZ TANHUATO', '38590011', '484110100001', '10', '11'),
(2, 'Sucursal', 6, 1, 2, 2, 'VISTA HERMOSA', 'CONSUELO ORTIZ ROJO', 'Ignacio López Rayon No.10 ', 'GALEANA', '38', 'B', 'CENTRO', 'VISTA HERMOSA', 'MICHOACÁN', '59200', 16105105, 0, '', '3285243107', '', 0, 16.00, '', 0, 'Abierta', '0000-00-00', 4168, 'FONAES/ECA/2008/015', '02', 'C', '', 100.00, 0.0000, 50000.00, 11.16, 'IGNACIO LOPEZ RAYON', 'EPITACIO HUERTA', '20.134782', '-100.293625', '2', 'SUCURSAL EPITACIO HUERTA', '61000009', '484160310001', '31', '16'),
(3, 'Sucursal', 7, 1, 2, 3, 'YURECUARO', 'MARIA GUADALUPE CURIEL RUIZ', '16 de Septiembre S/N ', 'AUSTACIO ZEPEDA', '45', '3 Y 4', 'CENTRO', 'YURECUARO', 'MICHOACAN', '59250', 16106106, 0, '', '3565686361', '', 0, 16.00, '', 0, 'Abierta', '2014-01-01', 2380, '', '03', 'D', '', 100.00, 0.0000, 50000.00, 4.24, '16 DE SEPTIEMBRE', 'HUIMILPAN', '20.373711', '-100.274312', '3', 'SUCURSAL HUIMILPAN', '76950007', '484220080001', '8', '22'),
(4, 'Sucursal', 8, 1, 1, 4, 'AYOTLAN', 'FLOR CANDELARIA ALATORRE CARDENAS', 'Fray Angel Juárez No.77', 'JUAREZ', '10', '0', 'CENTRO', 'AYOTLAN', 'JALISCO', '47930', 1401616, 0, '', '3459182022', '', 0, 16.00, '', 0, 'Abierta', '2014-01-08', 2582, '', '04', 'E', '', 100.00, 0.0000, 50000.00, 4.99, 'FRAY ANGEL JUAREZ', 'JERECUARO', '20.1495', '-100.509827', '4', 'SUCURSAL JERECUARO', '38540661', '484110190001', '19', '11'),
(5, 'Sucursal', 2853, 5, 2, 6, 'BRISEÑAS', 'WUALDO RAMIRO GARCIA VAZQUEZ', 'Nicolas Bravo No. 3', 'JUAREZ', '115', '0', 'CENTRO', 'BRISEÑAS', 'MICHOACAN', '59120', 1601111, 0, '', '3931130202', '', 0, 16.00, '', 0, 'Abierta', '2014-04-25', 5359, '', '06', 'G', '', 100.00, 0.0000, 50000.00, 3.27, 'MARIANO ABASOLO', 'ACULCO', '20.098294', '-99.825634', '5', 'SUCURSAL ACULCO', '50360003', '484150030001', '3', '15'),
(6, 'Sucursal', 2974, 7, 4, 6, 'DEGOLLADO', 'JOSE ANTONIO ASCENCIO BAÑALES', 'Av. Independencia No. 24', 'FRANCISCO I. MADERO ', '13', '1', 'CENTRO', 'DEGOLLADO', 'JALISCO', '47980', 1403333, 0, '', '3459370590', '', 0, 16.00, '', 0, 'Abierta', '2014-04-25', 2506, '', '07', 'H', '', 100.00, 0.0000, 50000.00, 3.57, 'NICOLAS BRAVO', 'TEMASCALCINGO', '19.919182', '-100.005506', '6', 'SUCURSAL TEMASCALCINGO', '50400003', '484150850001', '85', '15'),
(7, 'Sucursal', 2975, 1, 4, 7, 'JESUS MARIA', 'ARMANDO HERNANDEZ HERNANDEZ', 'Plaza Constitución No. 52-A', '5 DE FEBRERO', '13', '2', 'CENTRO', 'JESUS MARIA', 'JALISCO', '47950', 1404848, 0, '', '3487040069', '', 0, 16.00, '', 0, 'Abierta', '2014-04-25', 2652, '', '08', 'I', '', 100.00, 0.0000, 50000.00, 2.36, 'AVENIDA INDEPENDENCIA', 'EL ORO', '19.801223', '-100.133883', '7', 'SUCURSAL EL ORO', '50600002', '484150640001', '64', '15'),
(8, 'Sucursal', 2976, 7, 3, 8, 'GUADALAJARA', 'PATRICIA ASCENCIO VAZQUEZ', 'Carretera Querétaro-Coroneo S/N.', 'AV I DE JULIO', '3268', '0', 'LOMAS DE POLANCO', 'GUADALAJARA', 'JALISCO', '44960', 140393, 0, '', '3331441395', '', 0, 16.00, '', 0, 'Abierta', '2014-04-25', 1406, '', '09', 'J', '', 100.00, 0.0000, 50000.00, 3.30, 'PLAZA CONSTITUCION', 'AMEALCO', '20.186529', '-100.146884', '8', 'SUCURSAL AMEALCO', '76850661', '484220010001', '1', '22'),
(999, 'Coorporativo', 5, 1, 1, 1, 'COORPORATIVO', 'NO CUENTA CON GERENTE', 'Ignacio Lozada, No.146', 'LEONA VICARIO', '1', '0', 'CENTRO', 'TANHUATO', 'MICHOACAN', '59230', 1608686, 0, '', '4214730359', '4214730259', 2147483647, 16.00, '', 0, 'Cerrada', '0000-00-00', 30, '', '', '', '', 100.00, 0.0000, 0.00, 0.00, '', '', '', '', '', '', '', '', '', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `sucursales`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
