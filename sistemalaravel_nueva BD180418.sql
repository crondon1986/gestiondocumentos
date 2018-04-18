-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 17-04-2018 a las 23:32:38
-- Versión del servidor: 5.6.30
-- Versión de PHP: 5.6.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemalaravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_documento`
--

CREATE TABLE `categoria_documento` (
  `nombre_categoria` varchar(100) NOT NULL,
  `descripcion_categoria` text NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_documento`
--

INSERT INTO `categoria_documento` (`nombre_categoria`, `descripcion_categoria`, `id_categoria`) VALUES
('Administrativos', '', 1),
('Acádemicos', '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `circular`
--

CREATE TABLE `circular` (
  `id_circular` int(11) NOT NULL,
  `codigo_circular` varchar(50) NOT NULL,
  `cedula_jefe` int(11) NOT NULL,
  `nota_circular` text NOT NULL,
  `para_circular` varchar(100) NOT NULL,
  `id_dependencia_c` int(11) NOT NULL,
  `de_circular` varchar(100) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `id_itemsubcategria` int(11) NOT NULL,
  `cuerpo_circular` text NOT NULL,
  `html_circular` text NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

CREATE TABLE `dependencia` (
  `id_dependencia` int(11) NOT NULL,
  `nombre_dependencia` varchar(200) NOT NULL,
  `descripcion_dependencia` text NOT NULL,
  `relacion_dependencia` int(11) NOT NULL,
  `id_institucion` int(11) NOT NULL,
  `cedula_jefe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dependencia`
--

INSERT INTO `dependencia` (`id_dependencia`, `nombre_dependencia`, `descripcion_dependencia`, `relacion_dependencia`, `id_institucion`, `cedula_jefe`) VALUES
(1, 'Escuela de Ciencias', '', 0, 1, 0),
(2, 'Departamento de Informática', '', 1, 1, 17217387),
(3, 'Departamento de Matemáticas', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(11) NOT NULL,
  `codigo_plantilla` int(11) NOT NULL COMMENT 'codigo de o id de circulares convocatorias',
  `descripcion_documento` text NOT NULL,
  `id_dependencia_c` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_estatus` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `html_documento` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `codigo_plantilla`, `descripcion_documento`, `id_dependencia_c`, `id_usuario`, `id_estatus`, `id_subcategoria`, `html_documento`, `created_at`, `updated_at`) VALUES
(13, 1523450668, 'pueba de circular', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;ESCULA DE CIENCIAS</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;PROFESOR PRUEBA</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>Invitaci&oacute;n para acto&nbsp; de <strong>Prueba</strong></p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n<!--<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>-->\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-11 17:14:28', '2018-04-11 17:14:28'),
(14, 1523459490, 'ookko', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;ESCULA DE CIENCIAS</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;profe</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>jkjfkdjkl&ntilde;&ntilde;al&ntilde;s&ntilde;l</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n<!--<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>-->\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-11 19:41:30', '2018-04-11 19:41:30'),
(15, 1523459972, 'prueba de circular claudio', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;ClaudIO RONDON</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;INFORMATICA</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>Prueba Cirular</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n<!--<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>-->\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-11 19:49:32', '2018-04-11 19:49:32'),
(16, 1523917235, 'ACTA DE JURADOS', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;ESCULA DE CIENCIAS</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;INFORMATICA</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>sdjksqhgsdaghdashghgsdahgdasdahg</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Prof. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n<!--<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>-->\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-17 02:50:35', '2018-04-17 02:50:35'),
(17, 1523925514, '', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;claudio</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>luis rendon</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Prof. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n<!--<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>-->\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-17 05:08:34', '2018-04-17 05:08:34'),
(18, 1524033046, 'circular pardfdsdfd', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;ClaudIO RONDON</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;jesus lista</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>fvdvdvdvvvv</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Prof. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n\r\n<!--<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>-->\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-18 11:00:46', '2018-04-18 11:00:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus_documento`
--

CREATE TABLE `estatus_documento` (
  `id` int(11) NOT NULL,
  `nombre_estatus` varchar(100) NOT NULL,
  `decripcion_estatus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estatus_documento`
--

INSERT INTO `estatus_documento` (`id`, `nombre_estatus`, `decripcion_estatus`) VALUES
(1, 'Por firmar', ''),
(2, 'Enviado', ''),
(3, 'Recibido', ''),
(4, 'Leido', ''),
(5, 'Aprobado', ''),
(6, 'Rechazado', ''),
(7, 'Por Corregir', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `cedula_estudiante` int(11) NOT NULL,
  `nombres_estudinte` varchar(100) DEFAULT NULL,
  `apellidos_estudiante` varchar(100) DEFAULT NULL,
  `telefono_estudiante` varchar(11) NOT NULL,
  `sexo_estudiante` int(11) NOT NULL,
  `id_dependencia` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `cedula_estudiante`, `nombres_estudinte`, `apellidos_estudiante`, `telefono_estudiante`, `sexo_estudiante`, `id_dependencia`, `id_tipo`) VALUES
(1, 18211942, 'CLAUDIO', 'RONDON', '04167936874', 2, 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id_institucion` int(11) NOT NULL,
  `nombre_institucion` varchar(100) NOT NULL,
  `siglas_institucion` varchar(50) DEFAULT NULL,
  `descripcion_institucion` text,
  `nucleo_institucion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_institucion`, `nombre_institucion`, `siglas_institucion`, `descripcion_institucion`, `nucleo_institucion`) VALUES
(1, 'Universidad de Oriente', 'UDO', 'Núcleo de Sucre', 'Núcleo de Sucre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemsubcategoria`
--

CREATE TABLE `itemsubcategoria` (
  `nombre_itemsubcategoria` varchar(100) NOT NULL,
  `descripcion_itemsubcategoria` text NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `id_itemsubcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `itemsubcategoria`
--

INSERT INTO `itemsubcategoria` (`nombre_itemsubcategoria`, `descripcion_itemsubcategoria`, `id_subcategoria`, `id_itemsubcategoria`) VALUES
('Evento', '', 1, 1),
('Charla', '', 1, 2),
('Reunón', '', 1, 3),
('Otro', '', 1, 4),
('Actas/Veredictos', 'Actas/Veredictos', 8, 5),
('Constancia de preparaduría', 'Constancia de preparaduría', 8, 6),
('Solicitud de menor y mayor carga academica', '', 8, 7),
('Solicitud de menor carga y mayor carga acádemica', '', 8, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_25_000000_update_users_table', 1),
('2016_03_13_151018_crear_tabla_educacion', 1),
('2016_03_13_153835_crear_tabla_tiposEducacion', 1),
('2016_03_20_224237_crear_tabla_tipos_publicaciones', 2),
('2016_03_20_230021_crear_tabla_publicaciones', 2),
('2016_03_25_161404_crear_tabla_proyectos', 3),
('2016_03_26_211538_crear_tabla_pais', 3),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_10_25_000000_update_users_table', 2),
('2016_03_13_151018_crear_tabla_educacion', 3),
('2016_03_13_153835_crear_tabla_tiposEducacion', 3),
('2016_03_20_224237_crear_tabla_tipos_publicaciones', 4),
('2016_03_20_230021_crear_tabla_publicaciones', 5),
('2016_03_26_211538_crear_tabla_pais', 6),
('2016_03_25_161404_crear_tabla_proyectos', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `nombre_perfil` varchar(50) DEFAULT NULL,
  `descripcion_perfil` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_perfil`, `descripcion_perfil`) VALUES
(1, 'ADMINISTRADOR', NULL),
(2, 'JEFE DE DEPARTAMENTO', NULL),
(3, 'SECRETARIA', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(11) NOT NULL,
  `cedula_profesor` int(11) NOT NULL,
  `nombres_profesor` varchar(100) NOT NULL,
  `apellidos_profesor` varchar(100) NOT NULL,
  `email_profesor` varchar(250) NOT NULL,
  `dedicacion_profesor` int(11) NOT NULL,
  `telefono_profesor` varchar(11) NOT NULL,
  `sexo_profesor` int(1) NOT NULL COMMENT '1 femenino 2 masculino',
  `cargo_profesor` varchar(100) NOT NULL,
  `id_dependencia` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL COMMENT '1DOC 2ADM 3EST'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `cedula_profesor`, `nombres_profesor`, `apellidos_profesor`, `email_profesor`, `dedicacion_profesor`, `telefono_profesor`, `sexo_profesor`, `cargo_profesor`, `id_dependencia`, `id_tipo`) VALUES
(1, 17217387, 'JESUS PABLO', 'PEREZ DIAZ', 'crondon1986@gmail.com', 0, '04167896543', 2, '', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria_documento`
--

CREATE TABLE `subcategoria_documento` (
  `id_subcategoria` int(11) NOT NULL,
  `nombre_subcategoria` varchar(100) NOT NULL,
  `descripcion_subcategoria` text NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subcategoria_documento`
--

INSERT INTO `subcategoria_documento` (`id_subcategoria`, `nombre_subcategoria`, `descripcion_subcategoria`, `id_categoria`) VALUES
(1, 'Circular', '', 1),
(2, 'Invitación', '', 1),
(3, 'Oficio', '', 1),
(4, 'solicitud', '', 1),
(5, 'Asignatura', '', 2),
(7, 'Concurso', '', 2),
(8, 'Estudiante', '', 2),
(9, 'Profesor', '', 2),
(10, 'Planificación Acádemica', '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(11) NOT NULL,
  `nombre_tipo` varchar(100) NOT NULL,
  `descripcion_tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `nombre_tipo`, `descripcion_tipo`) VALUES
(1, 'DOCENTE', ''),
(2, 'ADMINISTRATIVO', ''),
(3, 'ESTUDIANTE', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nombres` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `pais` int(11) NOT NULL,
  `ciudad` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `institucion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ocupacion` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` int(11) NOT NULL,
  `id_dependencia` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `nombres`, `apellidos`, `pais`, `ciudad`, `institucion`, `ocupacion`, `cedula`, `id_dependencia`, `id_perfil`) VALUES
(1, 'crondon1986', 'crondon1986@gmail.com', '$2y$10$VOBfqVLapJjpE/dqkzBaUuX5qkUxtavyaHvDxJkAOhFzR0.jAEOj6', 'hdQcE5j7WLdf82jw8h7CYoQVsAvEMMrTodfhDfhI8LNReE6Ct2uoUMJrRIc8', '0000-00-00 00:00:00', '2018-04-18 10:25:14', 'claudio', 'rondon', 10, 'cuamna', 'udo', 'docente', 18211942, 2, 3),
(2, 'Ysabel', 'ysabelmd@gmail.com', '$2y$10$SBScrTVzUnYfy9bisKKuF.Qq8cuMKCscPDDBxB0fpCWmo.98OyJwK', NULL, '2018-03-31 20:20:22', '2018-03-31 20:20:22', 'ysabel md', 'sofia rondon', 1, 'cumana', 'udo', 'profesora', 1721787, 2, 2),
(7, '', 'tauros23callo@gmail.com', '$2y$10$adLrj7WiXw/zItl2pKF.H.9KLAI6gmUCSiEL641.CPlHGCsLhYliy', NULL, '2018-04-18 10:09:47', '2018-04-18 10:09:47', 'dsdf', 'cfsfsd', 1, 'csc', 'dsd', 'dsd', 0, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria_documento`
--
ALTER TABLE `categoria_documento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`id_circular`);

--
-- Indices de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  ADD PRIMARY KEY (`id_dependencia`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `estatus_documento`
--
ALTER TABLE `estatus_documento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD UNIQUE KEY `cedula_persona` (`cedula_estudiante`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id_institucion`);

--
-- Indices de la tabla `itemsubcategoria`
--
ALTER TABLE `itemsubcategoria`
  ADD PRIMARY KEY (`id_itemsubcategoria`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`),
  ADD UNIQUE KEY `cedula_profesor` (`cedula_profesor`);

--
-- Indices de la tabla `subcategoria_documento`
--
ALTER TABLE `subcategoria_documento`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria_documento`
--
ALTER TABLE `categoria_documento`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `circular`
--
ALTER TABLE `circular`
  MODIFY `id_circular` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  MODIFY `id_dependencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `estatus_documento`
--
ALTER TABLE `estatus_documento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_institucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `itemsubcategoria`
--
ALTER TABLE `itemsubcategoria`
  MODIFY `id_itemsubcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `subcategoria_documento`
--
ALTER TABLE `subcategoria_documento`
  MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
