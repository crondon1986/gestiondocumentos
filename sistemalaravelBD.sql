-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-04-2018 a las 08:01:47
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
(1, 1523026041, 'circular par revidonfvf', 2, 18211942, 0, 1, '<p>pera&nbsp; edgar luis</p>', '2018-04-06 19:17:21', '2018-04-06 19:17:21'),
(2, 1523027374, 'para pee fcdfdf', 2, 18211942, 0, 0, '<p>documnto prioritario p<strong>ara surgi </strong></p>', '2018-04-06 19:39:34', '2018-04-06 19:39:34'),
(3, 1523027885, 'para pee fcdfdf', 0, 18211942, 0, 1, '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">\n<HTML>\n<HEAD>\n	<META HTTP-EQUIV="CONTENT-TYPE" CONTENT="text/html; charset=utf-8">\n	<TITLE></TITLE>\n	<META NAME="GENERATOR" CONTENT="LibreOffice 4.1.6.2 (Linux)">\n	<META NAME="AUTHOR" CONTENT="Elizabeth">\n	<META NAME="CREATED" CONTENT="20180309;163500000000000">\n	<META NAME="CHANGEDBY" CONTENT="Elizabeth">\n	<META NAME="CHANGED" CONTENT="20180309;165000000000000">\n	<META NAME="AppVersion" CONTENT="14.0000">\n	<META NAME="Company" CONTENT="Jefatura Informatica">\n	<META NAME="DocSecurity" CONTENT="0">\n	<META NAME="HyperlinksChanged" CONTENT="false">\n	<META NAME="LinksUpToDate" CONTENT="false">\n	<META NAME="ScaleCrop" CONTENT="false">\n	<META NAME="ShareDoc" CONTENT="false">\n	<STYLE TYPE="text/css">\n	<!--\n		@page { margin-left: 1.18in; margin-right: 1.18in; margin-top: 0.98in; margin-bottom: 0.98in }\n		P { margin-bottom: 0in; direction: ltr; line-height: 100%; text-align: center; widows: 2; orphans: 2 }\n		P.western { font-family: "Bookman Old Style", serif; font-size: 20pt; so-language: en-US }\n		P.cjk { font-family: "Times New Roman"; font-size: 20pt; so-language: es-ES }\n		P.ctl { font-family: "Times New Roman"; font-size: 10pt }\n		H2 { margin-bottom: 0.04in; direction: ltr; line-height: 100%; widows: 2; orphans: 2 }\n		H2.western { font-family: "Arial", serif; font-size: 14pt; so-language: en-US; font-style: italic }\n		H2.cjk { font-family: "Times New Roman"; font-size: 14pt; so-language: es-ES; font-style: italic }\n		H2.ctl { font-size: 14pt; font-style: italic }\n		H4 { margin-bottom: 0.04in; direction: ltr; line-height: 100%; widows: 2; orphans: 2 }\n		H4.western { font-size: 14pt; so-language: en-US }\n		H4.cjk { font-family: "Times New Roman"; font-size: 14pt; so-language: es-ES }\n		H4.ctl { font-family: "Times New Roman"; font-size: 14pt }\n		H5 { margin-top: 0in; margin-bottom: 0in; direction: ltr; line-height: 100%; text-align: center; widows: 2; orphans: 2 }\n		H5.western { font-size: 12pt; so-language: en-US; font-weight: normal }\n		H5.cjk { font-family: "Times New Roman"; font-size: 12pt; so-language: es-ES; font-weight: normal }\n		H5.ctl { font-family: "Times New Roman"; font-weight: normal }\n		H6 { margin-top: 0.14in; margin-bottom: 0in; direction: ltr; color: #243f60; line-height: 100%; page-break-inside: avoid; widows: 2; orphans: 2 }\n		H6.western { font-family: "Cambria", serif; font-size: 10pt; so-language: en-US; font-style: italic; font-weight: normal }\n		H6.cjk { font-family: "Times New Roman"; font-size: 10pt; so-language: es-ES; font-style: italic; font-weight: normal }\n		H6.ctl { font-family: ; font-size: 10pt; font-style: italic; font-weight: normal }\n	-->\n	</STYLE>\n</HEAD>\n<BODY LANG="es-ES" DIR="LTR">\n<H2 LANG="en-US" CLASS="western" ALIGN=CENTER><FONT SIZE=6><SPAN STYLE="font-style: normal">Solicitud\nde Servicio</SPAN></FONT></H2>\n<P LANG="en-US" CLASS="western" ALIGN=CENTER><IMG SRC="Solicitudes_html_3261c6ac.gif" ALIGN=BOTTOM>\n                                                                     \n                                            <FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Nº\n </FONT><FONT SIZE=3><U>001/2017</U></FONT></FONT></FONT></P>\n<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n</P>\n<H4 LANG="en-US" CLASS="western" ALIGN=JUSTIFY><FONT SIZE=3><SPAN STYLE="font-weight: normal">UNIVERSIDAD\nDE ORIENTE       NÚCLEO DE SUCRE           FECHA:   </SPAN></FONT><FONT SIZE=3><U><SPAN STYLE="font-weight: normal">15/02/2017</SPAN></U></FONT></H4>\n<P LANG="en-US" CLASS="western" ALIGN=LEFT>  <FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Sección\nCompras</FONT></FONT></FONT></P>\n<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n</P>\n<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Dependencia\nSolicitante: </FONT><FONT SIZE=3><U>Departamento de  Informática.</U></FONT></FONT></FONT></P>\n<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n</P>\n<TABLE WIDTH=704 CELLPADDING=5 CELLSPACING=0>\n	<COL WIDTH=258>\n	<COL WIDTH=236>\n	<COL WIDTH=37>\n	<COL WIDTH=131>\n	<TR VALIGN=TOP>\n		<TD COLSPAN=3 WIDTH=551 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Descripción\n			del Servicio</FONT></FONT></FONT></P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n		</TD>\n		<TD WIDTH=131 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Cantidad</FONT></FONT></FONT></P>\n		</TD>\n	</TR>\n	<TR VALIGN=TOP>\n		<TD COLSPAN=3 WIDTH=551 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>-REVISIÓN\n			DE IMPRESORA HP LASERJET 5200TN</FONT></FONT></FONT></P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Código\n			Dependencia Solicitante</FONT></FONT></FONT></P>\n		</TD>\n		<TD WIDTH=131 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>01</FONT></FONT></FONT></P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><BR>\n			</P>\n		</TD>\n	</TR>\n	<TR>\n		<TD COLSPAN=4 WIDTH=692 VALIGN=TOP STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Monto\n			de la Solicitud:                                                  \n			                                                   </FONT></FONT></FONT>\n			</P>\n		</TD>\n	</TR>\n	<TR VALIGN=TOP>\n		<TD WIDTH=258 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Solicitado\n			por:</FONT></FONT></FONT></P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Prof.\n			Carmelys Rodríguez </FONT></FONT></FONT>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Jefe\n			del Departamento</FONT></FONT></FONT></P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n		</TD>\n		<TD WIDTH=236 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Conformado\n			por:</FONT></FONT></FONT></P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Director</FONT></FONT></FONT></P>\n			<H5 LANG="en-US" CLASS="western"><BR>\n			</H5>\n		</TD>\n		<TD COLSPAN=2 WIDTH=178 STYLE="border: 1px solid #00000a; padding-top: 0in; padding-bottom: 0in; padding-left: 0.05in; padding-right: 0.05in">\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3>Autorizado\n			por:</FONT></FONT></FONT></P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n			</P>\n			<P LANG="en-US" CLASS="western" ALIGN=CENTER><FONT FACE="Times New Roman, serif"><FONT SIZE=2><FONT SIZE=3><SPAN LANG="es-ES">R-VRA-VRAD-S-D</SPAN></FONT></FONT></FONT></P>\n		</TD>\n	</TR>\n</TABLE>\n<P LANG="en-US" CLASS="western" ALIGN=LEFT><BR>\n</P>\n\n</Body>\n\n</html>', '2018-04-06 19:48:05', '2018-04-06 19:48:05'),
(4, 1523046158, '', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="font-size:14.0pt">SOLICITUD DE COMPRA</span><span style="font-size:12.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CLI.- No.001/17</span></span></span></p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N&Uacute;CLEO DE&nbsp; SUCRE&nbsp;&nbsp; </span></span></p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">UNIVERSIDAD DE ORIENTE</span></span></p><p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Dependencia: Departamento de Inform&aacute;tica.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fecha: 30/10/17</span></span></p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><table cellspacing="0" class="Table" style="border-collapse:collapse; border:none; margin-left:-36.0pt; width:689px">	<tbody>		<tr>			<td style="height:33.4pt; vertical-align:top; width:42.6pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">RENG</span></span></p>			</td>			<td style="height:33.4pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">CODIGO</span></span></p>			</td>			<td colspan="3" style="height:33.4pt; vertical-align:top; width:301.85pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">DESCRIPCI&Oacute;N DETALLADA DEL MATERIAL</span></span></p>			</td>			<td style="height:33.4pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">UNIDAD DE MEDIDA</span></span></p>			</td>			<td style="height:33.4pt; vertical-align:top; width:67.05pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">CANTIDAD</span></span></p>			</td>		</tr>		<tr>			<td style="height:308.2pt; vertical-align:top; width:42.6pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">01</span></span></p>			</td>			<td style="height:308.2pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			</td>			<td colspan="3" style="height:308.2pt; vertical-align:top; width:301.85pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">REGULADORES DE VOLTAJE</span></span></p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="font-size:12.0pt">Para ser cargado a la partida 21-PRO5030202 asignada a los Laboratorios de Inform&aacute;tica del Departamento de Inform&aacute;tica.</span></span></span></p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			</td>			<td style="height:308.2pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			</td>			<td style="height:308.2pt; vertical-align:top; width:67.05pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">02</span></span></p>			</td>		</tr>		<tr>			<td colspan="7" style="height:10.9pt; vertical-align:top; width:516.5pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Monto de la solicitud: </span></span></p>			</td>		</tr>		<tr>			<td colspan="3" style="height:66.7pt; vertical-align:top; width:169.45pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Solicitado por:</span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Profa. Carmelys Rodr&iacute;guez&nbsp; </span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Jefe de Departamento</span></span></p>			<p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>			</td>			<td style="height:66.7pt; vertical-align:top; width:181.6pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Conformado por:</span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Director</span></span></p>			</td>			<td colspan="3" style="height:66.7pt; vertical-align:top; width:165.45pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Autorizado por:</span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">R-VRA-VRAD-S-D</span></span></p>			</td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>	</tbody></table><p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-07 00:52:38', '2018-04-07 00:52:38'),
(5, 1523046366, '', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="font-size:14.0pt">SOLICITUD DE COMPRA</span><span style="font-size:12.0pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CLI.- No.001/17</span></span></span></p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N&Uacute;CLEO DE&nbsp; SUCRE&nbsp;&nbsp; </span></span></p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">UNIVERSIDAD DE ORIENTE</span></span></p><p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Dependencia: Departamento de Inform&aacute;tica.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fecha: 30/10/17</span></span></p><p style="margin-left:0cm; margin-right:0cm">&nbsp;</p><table cellspacing="1" class="Table" style="border:1; margin-left:-36.0pt; width:500px">	<tbody>		<tr>			<td style="height:33.4pt; vertical-align:top; width:42.6pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">RENG</span></span></p>			</td>			<td style="height:33.4pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">CODIGO</span></span></p>			</td>			<td colspan="3" style="height:33.4pt; vertical-align:top; width:301.85pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">DESCRIPCI&Oacute;N DETALLADA DEL MATERIAL</span></span></p>			</td>			<td style="height:33.4pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">UNIDAD DE MEDIDA</span></span></p>			</td>			<td style="height:33.4pt; vertical-align:top; width:67.05pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">CANTIDAD</span></span></p>			</td>		</tr>		<tr>			<td style="height:308.2pt; vertical-align:top; width:42.6pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">01</span></span></p>			</td>			<td style="height:308.2pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			</td>			<td colspan="3" style="height:308.2pt; vertical-align:top; width:301.85pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">REGULADORES DE VOLTAJE</span></span></p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><span style="font-size:12.0pt">Para ser cargado a la partida 21-PRO5030202 asignada a los Laboratorios de Inform&aacute;tica del Departamento de Inform&aacute;tica.</span></span></span></p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			</td>			<td style="height:308.2pt; vertical-align:top; width:52.5pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify">&nbsp;</p>			</td>			<td style="height:308.2pt; vertical-align:top; width:67.05pt">			<p style="margin-left:0cm; margin-right:0cm; text-align:justify"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">02</span></span></p>			</td>		</tr>		<tr>			<td colspan="7" style="height:10.9pt; vertical-align:top; width:516.5pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Monto de la solicitud: </span></span></p>			</td>		</tr>		<tr>			<td colspan="3" style="height:66.7pt; vertical-align:top; width:169.45pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Solicitado por:</span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Profa. Carmelys Rodr&iacute;guez&nbsp; </span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Jefe de Departamento</span></span></p>			<p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>			</td>			<td style="height:66.7pt; vertical-align:top; width:181.6pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Conformado por:</span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Director</span></span></p>			</td>			<td colspan="3" style="height:66.7pt; vertical-align:top; width:165.45pt">			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Autorizado por:</span></span></p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm">&nbsp;</p>			<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:10pt"><span style="font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">R-VRA-VRAD-S-D</span></span></p>			</td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>	</tbody></table><p style="margin-left:0cm; margin-right:0cm; text-align:center">&nbsp;</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-07 00:56:06', '2018-04-07 00:56:06'),
(6, 1523061045, 'prueba de circular', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;claudio rondon</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;jeus lista</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>prueba de circular 1234</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-07 05:00:45', '2018-04-07 05:00:45');
INSERT INTO `documento` (`id_documento`, `codigo_plantilla`, `descripcion_documento`, `id_dependencia_c`, `id_usuario`, `id_estatus`, `id_subcategoria`, `html_documento`, `created_at`, `updated_at`) VALUES
(7, 1523115093, 'circular de pruebq', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;Tony</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;claudio</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>jghjjjmg<strong>h prueba&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; claudio gjgjgjgjgjgjgj</strong></p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-07 20:01:33', '2018-04-07 20:01:33'),
(8, 1523117933, '', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">	<tbody>		<tr>			<td>trt</td>			<td>grgrt</td>		</tr>		<tr>			<td style="text-align:center">fvgrg</td>			<td>&nbsp;</td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>	</tbody></table><p>&nbsp;</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-07 20:48:53', '2018-04-07 20:48:53'),
(9, 1523117967, '', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<table border="1" cellpadding="1" cellspacing="1" style="width:500px">	<tbody>		<tr>			<td>trt</td>			<td>grgrt</td>		</tr>		<tr>			<td style="text-align:center">fvgrg</td>			<td>&nbsp;</td>		</tr>		<tr>			<td>&nbsp;</td>			<td>&nbsp;</td>		</tr>	</tbody></table><p>&nbsp;</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-07 20:49:27', '2018-04-07 20:49:27'),
(10, 1523191803, 'Circular para la comndad en general', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;ClaudIO RONDON</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;JEFE DE DEPARTAMENTO</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>Yo profesor del Jurado <strong>JESUS RAMOS AGUILAR de nacionalidad venezolano cumplo con informarles que voy a firmar que no puedo ser jurado de xxxxx&nbsp; ahora </strong></p><p><strong>me disculpo con ustedes para darle mi sentido de resposabilidad</strong></p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-08 17:20:03', '2018-04-08 17:20:03'),
(11, 1523192041, 'ccx', 2, 18211942, 0, 1, '<html>\r\n    <head>\r\n        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n    </head>\r\n<body> \r\n\r\n<!--<htmlpageheader name="MyHeader1">\r\n    \r\n     <div class="report-heading">\r\n\r\n                <div class="row" class="{HEADER_STYLE}">\r\n                    <div class="panel-title col-xs-18">\r\n                      {TITULOENCABEZADO} claudio rondon <br/>\r\n                        <span class="small"> {FECHA}</span><br/> <br/>\r\n                        <span class="small"></span>\r\n                    </div>\r\n                    <div class="col-xs-4 report-logo">\r\n                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">\r\n                    </div>\r\n\r\n                </div>\r\n            </div>\r\n    \r\n                       \r\n</htmlpageheader>\r\n                    \r\n    <htmlpagefooter name="MyFooter1">\r\n                    <div class="report-footer">\r\n                        <div class="row">\r\n                            <div class=" col-xs-2 mosaikus-mini-logo">\r\n                                <img class="img-responsive" src="">\r\n                            </div>\r\n                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">\r\n                                <small></small>\r\n                            </div>\r\n                            <div class=" col-xs-3">\r\n                                &nbsp;\r\n                            </div>\r\n                            <div class=" col-xs-2">\r\n                                \r\n                            </div>\r\n                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">\r\n                                <small>Fecha de Generación:{CREATED_AT}</small>\r\n                            </div>  \r\n                        </div>\r\n                    </div>\r\n                </htmlpagefooter>\r\n [dependencia] => DEPARTAMENTO DE INFORMÁTICA\r\n            [Escuela] => ESCUELA DE CIENCIAS\r\n            [universidad] => UNIVERSIDAD DE ORIENTE\r\n            [nombres_profesor] => JESUS PABLO\r\n            [apellidos_profesor] => PEREZ DIAZ\r\n            [cargo] => Jefe de\r\n\r\n\r\n                -->\r\n           \r\n            \r\n<div id="main-content" class="main-content panel-container col-xs-12 ">\r\n    <div class="content-panel panel">\r\n        <div class="content">\r\n            \r\n            \r\n            <div class="report-body">    \r\n              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>UNIVERSIDAD DE ORIENTE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / ESCUELA DE CIENCIAS </strong></span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DEPARTAMENTO DE INFORMÁTICA</strong></span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>\r\n\r\n<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;csxc</strong></span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp; c</strong></span></span></p>\r\n\r\n<p style="text-align:center"><strong>Circular </strong></p>\r\n\r\n\r\n<p>xscxzcxcx</p>\r\n\r\n\r\n\r\n\r\n\r\n<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. JESUS PABLO PEREZ DIAZ</span></span></p>\r\n\r\n<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del DEPARTAMENTO DE INFORMÁTICA</span></span></p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center">&nbsp;</p>\r\n\r\n\r\n            </div>\r\n                        \r\n            \r\n        </div>\r\n    </div>\r\n\r\n</div>\r\n          \r\n        \r\n</body>\r\n</html>', '2018-04-08 17:24:01', '2018-04-08 17:24:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idTipoeducacion` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `institucion` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `anio` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id`, `idUsuario`, `idTipoeducacion`, `titulo`, `institucion`, `anio`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Licenciado e educacion', 'UDO', '2018', '2018-03-25 04:13:45', '2018-03-25 04:13:45');

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

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Colombia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Albania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Alemania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Andorra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Angola', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Antigua y Barbuda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Arabia Saudita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Argelia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Argentina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Armenia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Australia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Austria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Azerbaiyán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bahamas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bahrein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bangladesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Barbados', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bélgica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bélice', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Benin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Bielorrusia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Bolivia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Bosnia y Herzegovina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Botsuana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Brasil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Brunei', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bulgaria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Burkina Faso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Burundi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Bután', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Cabo Verde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Camboya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Camerún', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Canadá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Chad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Chile', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'China', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Chipre', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Colombia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Comoras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Corea del Norte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Corea del Sur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Costa de Marfil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Costa Rica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Croacia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Cuba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Dinamarca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Dominica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Ecuador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Egipto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'El Salvador', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Emiratos Arabes Unid', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Eritrea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Eslovaquia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Eslovenia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'España', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Estados Unidos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Estonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Etiopía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Filipinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Finlandia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Fiyi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Francia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Gab�n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Gambia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Georgia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Ghana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Granada', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Grecia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Guatemala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Guinea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Guinea Ecuatorial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Guinea Francesa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Guinea-Bissau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Guyana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Haití', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Honduras', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Hungría', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'India', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Indonesia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Irán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Iraq', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Irlanda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Islandia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Islas Georgias del S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Islas Malvinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Islas Marshall', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Islas Salom�n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Israel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Italia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Jamaica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Jap�n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Jordania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Kazajistán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Kenia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Kirguistán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Kiribati', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Kuwait', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Laos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Leshoto', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Letonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Líbano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Libia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Liechtenstein', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Lituania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Luxemburgo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Madagascar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Malasia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Malaui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Maldivas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Mali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Malta', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Marruecos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Mauricio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Mauritania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'México', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Micronesia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Moldavia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'M�naco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Mongolia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Montenegro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Mozambique', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Myanmar (birmania)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Namibia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Nauru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Nepal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Nicaragua', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Níger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Nigeria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Noruega', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Nueva Zelanda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Omán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Países Bajos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Pakistán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Palaos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Panamá', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Papúa Nueva Guinea', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Paraguay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Perú', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Polonia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Portugal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Puerto Rico', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Qatar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Reino Unido', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'República Centroafri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'República Checa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'República de Macedon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'República del Congo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'República DemocrAtic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'República Dominicana', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'república saharaui', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Ruanda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Rumania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Rusia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Samoa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'San Crist�bal y Nevi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'San Marino', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'San Vicente y las Gr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Santa Lucía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Santo Tomé y Príncip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Senegal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Serbia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Seychelles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Sierra Leona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Singapur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Siria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Somalia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Sri Lanka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Suazilandia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'SudAfrica', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'SudAn del norte', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Sudan del sur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Suecia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Suiza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Surinam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Tailandia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Tanzania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Tayikistán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Timor Oriental', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Togo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Tonga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Trinidad y Tobago', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Túnez', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Turkmenistán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Turquía', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Tuvalu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Ucrania', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'uganda', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Uruguay', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Uzbekistán', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Vanuatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Vaticano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Venezuela', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Vietnam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Yemen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Yibuti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Zambia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Zimbabue', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Antiguo', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `integrantes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `objetivo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `pais` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `financiamiento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pclave` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ruta` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `idUsuario`, `titulo`, `integrantes`, `descripcion`, `objetivo`, `estado`, `fecha`, `pais`, `financiamiento`, `pclave`, `ruta`, `created_at`, `updated_at`) VALUES
(1, 1, 'nuevo proyecto de prueba', 'NILTON HOYOS, JOEGE CALIXTO', 'trabajo de prueba descripcion,trabajo de prueba descripcion,trabajo de prueba descripcion,trabajo de prueba descripcion,trabajo de prueba descripcion,', 'objetivo de prueba,,,objetivo de pruebaobjetivo de pruebaobjetivo de pruebaobjetivo de prueba', '2', '2016-03-15', 'colombia', 'recursos propios', 'trabajo, grado , proyecto', 'proyectos/1_pdf_plusis.pdf', '2016-03-28 07:08:07', '2016-03-28 07:08:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUsuario` int(10) UNSIGNED NOT NULL,
  `idTipopublicacion` int(11) NOT NULL,
  `titulo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `autores` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `universidad` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `anio` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pais` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `revista` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `volumen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pageI` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pageF` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `volumenL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `numeroL` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `edicion` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `editorial` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ruta` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `idUsuario`, `idTipopublicacion`, `titulo`, `autores`, `universidad`, `anio`, `pais`, `revista`, `volumen`, `numero`, `pageI`, `pageF`, `volumenL`, `numeroL`, `ciudad`, `edicion`, `editorial`, `ruta`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'prueba', 'claudio', 'udo', '1980', '1', '', '', '', '', '', '', '', '', '', '', '1/1_texto-teatral-romeo-y-julieta.pdf', '2018-03-28 10:07:42', '2018-03-28 10:07:42');

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
-- Estructura de tabla para la tabla `tiposeducacion`
--

CREATE TABLE `tiposeducacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tiposeducacion`
--

INSERT INTO `tiposeducacion` (`id`, `titulo`, `created_at`, `updated_at`) VALUES
(1, 'Licenciado', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Estudiante', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Docente', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_publicaciones`
--

CREATE TABLE `tipos_publicaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos_publicaciones`
--

INSERT INTO `tipos_publicaciones` (`id`, `titulo`, `created_at`, `updated_at`) VALUES
(1, 'TRABAJOS DE GRADO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'TRABAJOS DE DOCTORADOS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'ARCHIVOS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ARTICULOS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'LIBROS', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'crondon1986', 'crondon1986@gmail.com', '$2y$10$bbToUrhtX7lKBD97IyPPauWnm7u14u7orORqymyt6XEYlYUo7nRAW', '6jMmG3pvcsdPudwXiy1rKsD8MMavVcsennqZv2qtq3qWX00GjdI4G10WELvI', '0000-00-00 00:00:00', '2018-04-07 19:37:21', 'claudio', 'rondon', 10, 'cuamna', 'udo', 'docente', 18211942, 2, 3),
(2, 'Ysabel', 'ysabelmd@gmail.com', '$2y$10$SBScrTVzUnYfy9bisKKuF.Qq8cuMKCscPDDBxB0fpCWmo.98OyJwK', NULL, '2018-03-31 20:20:22', '2018-03-31 20:20:22', 'ysabel md', 'sofia rondon', 1, 'cumana', 'udo', 'profesora', 1721787, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `cedula_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_usuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `cedula_usuario`, `nombre_usuario`, `email_usuario`, `id_perfil`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 18211942, 'claudio', 'crondon1986@gmail.com', 1, '$2y$10$bbToUrhtX7lKBD97IyPPauWnm7u14u7orORqymyt6XEYlYUo7nRAW', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `educacion_idusuario_index` (`idUsuario`);

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
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proyectos_idusuario_index` (`idUsuario`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publicaciones_idusuario_index` (`idUsuario`);

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
-- Indices de la tabla `tiposeducacion`
--
ALTER TABLE `tiposeducacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_publicaciones`
--
ALTER TABLE `tipos_publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `users_email_unique` (`email_usuario`);

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
  MODIFY `id_documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `educacion`
--
ALTER TABLE `educacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;
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
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT de la tabla `tiposeducacion`
--
ALTER TABLE `tiposeducacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipos_publicaciones`
--
ALTER TABLE `tipos_publicaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `educacion_idusuario_foreign` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `proyectos_idusuario_foreign` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD CONSTRAINT `publicaciones_idusuario_foreign` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
