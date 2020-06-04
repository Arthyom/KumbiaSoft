-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-05-2020 a las 19:54:32
-- Versión del servidor: 5.5.59
-- Versión de PHP: 5.4.45-0+deb7u12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tanhuato`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polizas`
--

CREATE TABLE IF NOT EXISTS `polizas` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `Tipo` enum('Egreso','Ingreso','Diario') NOT NULL,
  `Numero` int(5) NOT NULL DEFAULT '0',
  `IdSucursal` int(5) unsigned NOT NULL DEFAULT '0',
  `IdUsuario` int(5) unsigned NOT NULL,
  `Cheque` varchar(15) NOT NULL DEFAULT '0',
  `Fecha` date NOT NULL,
  `Beneficiario` varchar(70) NOT NULL,
  `Concepto` varchar(200) NOT NULL,
  `Elaboro` varchar(40) NOT NULL COMMENT 'Elaboró ',
  `Autorizo` varchar(40) NOT NULL DEFAULT ' ' COMMENT 'Autorizó',
  `Automatica` enum('No','Si') NOT NULL DEFAULT 'No',
  `idPuente` int(5) NOT NULL,
  `Aplicacion` enum('Normal','Condonacion','ChequeOrden','CierreDiario','CierreMensual') NOT NULL DEFAULT 'Normal',
  `Fuente` enum('Operacion','Activos','Nominas','Gastos','Pasiva','Traslados') NOT NULL DEFAULT 'Operacion',
  `IdCuentaBanco` int(5) NOT NULL,
  `Monto` decimal(12,2) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `CuentaDestino` varchar(15) NOT NULL,
  `IdBancoDestino` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `poliza_sucursal` (`IdSucursal`),
  KEY `IdUsuario` (`IdUsuario`),
  KEY `polizanumero` (`Numero`),
  KEY `polizafecha` (`Fecha`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Volcado de datos para la tabla `polizas`
--

INSERT INTO `polizas` (`id`, `Tipo`, `Numero`, `IdSucursal`, `IdUsuario`, `Cheque`, `Fecha`, `Beneficiario`, `Concepto`, `Elaboro`, `Autorizo`, `Automatica`, `idPuente`, `Aplicacion`, `Fuente`, `IdCuentaBanco`, `Monto`, `RFC`, `CuentaDestino`, `IdBancoDestino`) VALUES
(1, 'Diario', 1, 1, 1, '', '2020-04-30', '', 'Poliza de migracion inicial automatica', '', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(2, 'Diario', 1, 1, 1, '', '2020-04-30', '', 'Poliza de migracion inicial manual 1', '', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(3, 'Diario', 1, 1, 1, '', '2020-04-30', '', 'Poliza de migracion inicial manual 2', '', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(4, 'Diario', 1, 1, 1, '', '2020-04-30', '', 'Poliza de migracion inicial manual 3', '', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(5, 'Diario', 1, 1, 1, '', '2020-04-30', '', 'Poliza de migracion inicial manual 4', '', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(6, 'Ingreso', 1, 3, 221, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 221 en la sucursal 3 en el dia 02052020', 'ARCELIA ZUNO TIRADO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(7, 'Ingreso', 1, 4, 210, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 210 en la sucursal 4 en el dia 02052020', 'JAQUELINE CERVANTES GARCIA', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(8, 'Ingreso', 1, 8, 231, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 231 en la sucursal 8 en el dia 02052020', 'JEANETTE LIZBETH LOPEZ CASILLAS', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(9, 'Ingreso', 1, 5, 204, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 204 en la sucursal 5 en el dia 02052020', 'BRENDA BERENICE SERRANO MIRAMONTES', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(10, 'Ingreso', 1, 7, 190, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 190 en la sucursal 7 en el dia 02052020', 'SANDRA GUADALUPE GARCIA RODRIGUEZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(11, 'Diario', 1, 5, 203, '0', '2020-05-02', '', 'Poliza para contabilizar la solicitud de efectivo para boveda 203 sucursal 5 en el dia 02/05/2020 Ref. 183', 'WUALDO RAMIRO GARCIA VAZQUEZ', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(12, 'Diario', 1, 2, 211, '0', '2020-05-02', '', 'Poliza para contabilizar la solicitud de efectivo para boveda 211 sucursal 2 en el dia 02/05/2020 Ref. 184', 'CONSUELO ORTIZ ROJO ', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(13, 'Ingreso', 1, 2, 213, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 213 en la sucursal 2 en el dia 02052020', 'MARIA MERCEDES TAFOLLA ARELLANO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(14, 'Ingreso', 1, 6, 193, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 193 en la sucursal 6 en el dia 02052020', 'MARIA DEL SOL AGUIRRE GARCIA', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(15, 'Egreso', 1, 2, 213, '23450', '2020-05-02', 'ADRIAN RODRIGUEZ SANCHEZ', 'Registro de operaciones realizadas por IdPersona 17797 ADRIAN RODRIGUEZ SANCHEZ', 'MARIA MERCEDES TAFOLLA ARELLANO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(16, 'Egreso', 2, 2, 213, '20316', '2020-05-02', 'CONSUELO GOMEZ ARELLANO', 'Registro de operaciones realizadas por IdPersona 8874 CONSUELO GOMEZ ARELLANO', 'MARIA MERCEDES TAFOLLA ARELLANO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(17, 'Egreso', 3, 2, 213, '20317', '2020-05-02', 'MARIA SANCHEZ ESTRADA', 'Registro de operaciones realizadas por IdPersona 17696 MARIA SANCHEZ ESTRADA', 'MARIA MERCEDES TAFOLLA ARELLANO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(18, 'Diario', 2, 1, 186, '', '2020-05-02', 'No aplica', 'Poliza de cierre diario correspondiente al dia 02/05/2020', 'SALVADOR MONTEJANO GUERRERO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(19, 'Diario', 2, 2, 211, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones de boveda 211 en la sucursal 2 en el dia 02052020 No. 185', 'CONSUELO ORTIZ ROJO ', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(20, 'Diario', 3, 2, 211, '0', '2020-05-02', '', 'Poliza para contabilizar las operaciones de boveda 211 en la sucursal 2 en el dia 02052020 No. 186', 'CONSUELO ORTIZ ROJO ', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(21, 'Ingreso', 2, 8, 231, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 231 en la sucursal 8 en el dia 04052020', 'JEANETTE LIZBETH LOPEZ CASILLAS', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(22, 'Diario', 1, 8, 198, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones de boveda 198 en la sucursal 8 en el dia 04052020', 'PATRICIA ASCENCIO VAZQUEZ', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(23, 'Diario', 2, 8, 198, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones de boveda 198 en la sucursal 8 en el dia 04052020 No. 187', 'PATRICIA ASCENCIO VAZQUEZ', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(24, 'Diario', 3, 8, 198, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones de boveda 198 en la sucursal 8 en el dia 04052020 No. 188', 'PATRICIA ASCENCIO VAZQUEZ', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(25, 'Ingreso', 1, 1, 188, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 188 en la sucursal 1 en el dia 04052020', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(26, 'Ingreso', 2, 4, 179, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 179 en la sucursal 4 en el dia 04052020', 'AYOTLAN', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(27, 'Ingreso', 2, 3, 221, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 221 en la sucursal 3 en el dia 04052020', 'ARCELIA ZUNO TIRADO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(28, 'Ingreso', 2, 1, 214, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 214 en la sucursal 1 en el dia 04052020', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(29, 'Ingreso', 2, 2, 181, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 181 en la sucursal 2 en el dia 04052020', 'VISTA HERMOSA', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(30, 'Ingreso', 2, 7, 190, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 190 en la sucursal 7 en el dia 04052020', 'SANDRA GUADALUPE GARCIA RODRIGUEZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(31, 'Ingreso', 2, 6, 193, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 193 en la sucursal 6 en el dia 04052020', 'MARIA DEL SOL AGUIRRE GARCIA', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(32, 'Egreso', 4, 2, 181, '20321', '2020-05-04', 'CONSUELO GOMEZ ARELLANO', 'Registro de operaciones realizadas por IdPersona 8874 CONSUELO GOMEZ ARELLANO', 'VISTA HERMOSA', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(33, 'Ingreso', 2, 5, 204, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones realizadas por el usuario 204 en la sucursal 5 en el dia 04052020', 'BRENDA BERENICE SERRANO MIRAMONTES', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(34, 'Egreso', 5, 2, 181, '20323', '2020-05-04', 'RUBEN QUINTERO RAMIREZ', 'Registro de operaciones realizadas por IdPersona 10295 RUBEN QUINTERO RAMIREZ', 'VISTA HERMOSA', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(35, 'Egreso', 1, 7, 190, '2423', '2020-05-04', 'MIGUEL CAMARENA CERRILLO', 'Registro de operaciones realizadas por IdPersona 22859 MIGUEL CAMARENA CERRILLO', 'SANDRA GUADALUPE GARCIA RODRIGUEZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(36, 'Egreso', 1, 1, 214, '73729', '2020-05-04', 'JUANA LORENA SANTOYO VEGA', 'Registro de operaciones realizadas por IdPersona 7551 JUANA LORENA SANTOYO VEGA', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(37, 'Egreso', 2, 1, 188, '73730', '2020-05-04', 'GABRIELA CASTILLO CASTILLO', 'Registro de operaciones realizadas por IdPersona 5912 GABRIELA CASTILLO CASTILLO', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(38, 'Egreso', 1, 3, 221, '21150', '2020-05-04', 'MARIA DEL SOCORRO DIAZ GUTIERREZ', 'Registro de operaciones realizadas por IdPersona 19543 MARIA DEL SOCORRO DIAZ GUTIERREZ', 'ARCELIA ZUNO TIRADO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(39, 'Egreso', 2, 3, 221, '21151', '2020-05-04', 'JUAN RAMON GONZALEZ LIMON', 'Registro de operaciones realizadas por IdPersona 19882 JUAN RAMON GONZALEZ LIMON', 'ARCELIA ZUNO TIRADO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(40, 'Egreso', 3, 1, 214, '73731', '2020-05-04', 'FABIOLA YUSEL MURILLO ORTIZ', 'Registro de operaciones realizadas por IdPersona 9181 FABIOLA YUSEL MURILLO ORTIZ', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(41, 'Egreso', 4, 1, 188, '73732', '2020-05-04', 'MILAGROS ELIZABETH RODRIGUEZ MARTINEZ', 'Registro de operaciones realizadas por IdPersona 8643 MILAGROS ELIZABETH RODRIGUEZ MARTINEZ', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(42, 'Egreso', 5, 1, 214, '73733', '2020-05-04', 'CELIA GOMEZ ARELLANO', 'Registro de operaciones realizadas por IdPersona 3627 CELIA GOMEZ ARELLANO', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(43, 'Egreso', 6, 1, 188, '34230', '2020-05-04', 'VIRGINIA AVALOS RODRIGUEZ', 'Registro de operaciones realizadas por IdPersona 8890 VIRGINIA AVALOS RODRIGUEZ', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(44, 'Egreso', 7, 1, 188, '73735', '2020-05-04', 'ROBERTO MACIAS AGUILERA', 'Registro de operaciones realizadas por IdPersona 8082 ROBERTO MACIAS AGUILERA', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(45, 'Egreso', 8, 1, 214, '73736', '2020-05-04', 'ERIKA CONCEPCION LOPEZ FLORES', 'Registro de operaciones realizadas por IdPersona 7769 ERIKA CONCEPCION LOPEZ FLORES', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(46, 'Egreso', 9, 1, 188, '73737', '2020-05-04', 'ELVIA BRENES LOPEZ', 'Registro de operaciones realizadas por IdPersona 9197 ELVIA BRENES LOPEZ', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(47, 'Egreso', 10, 1, 188, '73738', '2020-05-04', 'ERIKA AVALOS LOPEZ', 'Registro de operaciones realizadas por IdPersona 8153 ERIKA AVALOS LOPEZ', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(48, 'Egreso', 11, 1, 214, '73739', '2020-05-04', 'MARIA COVARRUBIAS VAZQUEZ', 'Registro de operaciones realizadas por IdPersona 1530 MARIA COVARRUBIAS VAZQUEZ', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(49, 'Egreso', 12, 1, 188, '73740', '2020-05-04', 'VIRGINIA BAEZA BARAJAS', 'Registro de operaciones realizadas por IdPersona 18818 VIRGINIA BAEZA BARAJAS', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(50, 'Egreso', 13, 1, 188, '73741', '2020-05-04', 'ELIA RAMIREZ GONZALEZ', 'Registro de operaciones realizadas por IdPersona 8902 ELIA RAMIREZ GONZALEZ', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(51, 'Egreso', 14, 1, 188, '73743', '2020-05-04', 'ROSELIA CERVANTES REYES', 'Registro de operaciones realizadas por IdPersona 3065 ROSELIA CERVANTES REYES', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(52, 'Egreso', 15, 1, 214, '73742', '2020-05-04', 'MARIA VANESSA MONTEJANO LOPEZ', 'Registro de operaciones realizadas por IdPersona 8856 MARIA VANESSA MONTEJANO LOPEZ', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(53, 'Egreso', 16, 1, 188, '73744', '2020-05-04', 'RAMON VEGA AVALOS', 'Registro de operaciones realizadas por IdPersona 19218 RAMON VEGA AVALOS', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(54, 'Egreso', 17, 1, 188, '73747', '2020-05-04', 'LAURA LETICIA CHAVEZ BAEZA', 'Registro de operaciones realizadas por IdPersona 1132 LAURA LETICIA CHAVEZ BAEZA', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(55, 'Egreso', 18, 1, 188, '73748', '2020-05-04', 'LAURA LETICIA CHAVEZ BAEZA', 'Registro de operaciones realizadas por IdPersona 1132 LAURA LETICIA CHAVEZ BAEZA', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(56, 'Diario', 3, 1, 196, '0', '2020-05-04', '', 'Poliza para contabilizar la solicitud de efectivo para boveda 196 sucursal 1 en el dia 04/05/2020 Ref. 189', 'JUAN CARLOS ZARATE CORTES', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(57, 'Diario', 4, 1, 196, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones de cheques recibidos en el dia', '', '', 'Si', 0, 'ChequeOrden', 'Operacion', 0, 0.00, '', '', 0),
(58, 'Egreso', 19, 1, 214, '73749', '2020-05-04', 'ALICIA CASTILLO COVARRUBIAS', 'Registro de operaciones realizadas por IdPersona 3775 ALICIA CASTILLO COVARRUBIAS', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(59, 'Egreso', 20, 1, 214, '73750', '2020-05-04', 'J. JESUS MONTEJANO VEGA', 'Registro de operaciones realizadas por IdPersona 1841 J. JESUS MONTEJANO VEGA', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(60, 'Egreso', 2, 7, 190, '2424', '2020-05-04', 'ARMANDO HERNANDEZ HERNANDEZ', 'Registro de operaciones realizadas por IdPersona 16590 ARMANDO HERNANDEZ HERNANDEZ', 'SANDRA GUADALUPE GARCIA RODRIGUEZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(61, 'Diario', 5, 1, 202, '', '2020-05-04', 'VALENZUELA FLORES MA DEL ROSARIO', 'Póliza de entrega del préstamo 58540 por $50,000.00 al socio 6790 Numero Anterior 0000005812', 'ARACELI PADILLA RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(62, 'Egreso', 21, 1, 188, '2222', '2020-05-04', 'MA DEL ROSARIO VALENZUELA FLORES', 'Registro de operaciones realizadas por IdPersona 6790 MA DEL ROSARIO VALENZUELA FLORES', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(63, 'Egreso', 22, 1, 214, '73752', '2020-05-04', 'MIRIAM MONTEJANO ARREGUIN', 'Registro de operaciones realizadas por IdPersona 8845 MIRIAM MONTEJANO ARREGUIN', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(64, 'Egreso', 23, 1, 188, '73753', '2020-05-04', 'LORENA BERENICE ROSALES JANDETE', 'Registro de operaciones realizadas por IdPersona 8451 LORENA BERENICE ROSALES JANDETE', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(65, 'Diario', 1, 3, 212, '', '2020-05-04', 'HERNANDEZ MIRANDA AIDA', 'Póliza de entrega del préstamo 58531 por $30,000.00 al socio 14028 Numero Anterior 0000021831', 'MARIA GUADALUPE CURIEL RUIZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(66, 'Diario', 6, 1, 200, '', '2020-05-04', 'MONTEJANO MARTINEZ ROSA ANGELA', 'Póliza de entrega del préstamo 58538 por $80,000.00 al socio 1511 Numero Anterior 0000000524', 'JESUS MORENO RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(67, 'Diario', 7, 1, 202, '', '2020-05-04', 'PEREZ HERNANDEZ IGNACIO', 'Póliza de entrega del préstamo 58533 por $1,500.00 al socio 7317 Numero Anterior 0000006341', 'ARACELI PADILLA RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(68, 'Egreso', 24, 1, 188, '73754', '2020-05-04', 'MARIA VICTORIA MAGDALENO DUEÑAS', 'Registro de operaciones realizadas por IdPersona 4634 MARIA VICTORIA MAGDALENO DUEÑAS', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(69, 'Egreso', 25, 1, 188, '73755', '2020-05-04', 'MARIA VICTORIA MAGDALENO DUEÑAS', 'Registro de operaciones realizadas por IdPersona 4634 MARIA VICTORIA MAGDALENO DUEÑAS', 'MARIA ELENA FLORES TELLO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(70, 'Diario', 2, 3, 212, '', '2020-05-04', 'CASTILLO LOPEZ MA DEL REFUGIO', 'Póliza de entrega del préstamo 58544 por $50,000.00 al socio 14055 Numero Anterior 0000021858', 'MARIA GUADALUPE CURIEL RUIZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(71, 'Egreso', 3, 3, 221, '21152', '2020-05-04', 'MA DEL REFUGIO CASTILLO LOPEZ', 'Registro de operaciones realizadas por IdPersona 14055 MA DEL REFUGIO CASTILLO LOPEZ', 'ARCELIA ZUNO TIRADO', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(72, 'Diario', 8, 1, 196, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones de boveda 196 en la sucursal 1 en el dia 04/05/2020 Folio 189', 'JUAN CARLOS ZARATE CORTES', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(73, 'Diario', 9, 1, 196, '0', '2020-05-04', '', 'Poliza para contabilizar las operaciones de boveda 196 en la sucursal 1 en el dia 04/05/2020 Folio 61', 'JUAN CARLOS ZARATE CORTES', '', 'Si', 0, 'Normal', 'Traslados', 0, 0.00, '', '', 0),
(74, 'Egreso', 26, 1, 214, '73756', '2020-05-04', 'MARGARITA HERNANDEZ ARIAS', 'Registro de operaciones realizadas por IdPersona 4133 MARGARITA HERNANDEZ ARIAS', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0),
(75, 'Egreso', 27, 1, 214, '74465', '2020-05-04', 'ROSA ANGELA MONTEJANO MARTINEZ', 'Registro de operaciones realizadas por IdPersona 1511 ROSA ANGELA MONTEJANO MARTINEZ', 'GABRIELA GARIBAY RAMIREZ', '', 'Si', 0, 'Normal', 'Operacion', 0, 0.00, '', '', 0);

--
-- Disparadores `polizas`
--
DROP TRIGGER IF EXISTS `nuevapoliza`;
DELIMITER //
CREATE TRIGGER `nuevapoliza` BEFORE INSERT ON `polizas`
 FOR EACH ROW BEGIN
  
   DECLARE vFechaCerrada date;

   SELECT FechaContableCerrada INTO vFechaCerrada FROM configuracion;

   IF (vFechaCerrada>=new.Fecha) THEN
    SET new.Fecha=null;
  END IF;

 END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modificapoliza`;
DELIMITER //
CREATE TRIGGER `modificapoliza` BEFORE UPDATE ON `polizas`
 FOR EACH ROW BEGIN
  
   DECLARE vFechaCerrada date;

   SELECT FechaContableCerrada INTO vFechaCerrada FROM configuracion;

   IF (vFechaCerrada>=new.Fecha) THEN
    SET new.Fecha=null;
  END IF;

 END
//
DELIMITER ;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `polizas`
--
ALTER TABLE `polizas`
  ADD CONSTRAINT `polizas_ibfk_1` FOREIGN KEY (`IdSucursal`) REFERENCES `sucursales` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
