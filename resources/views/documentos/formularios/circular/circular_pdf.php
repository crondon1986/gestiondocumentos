
<?php
/*echo '<pre>';//print_r($datos_fijos);
print_r($data); */

/* echo '<pre>';print_r($datos_fijos);
print_r($data); 
die();



 [0] => stdClass Object
        (
            [dependencia] => DEPARTAMENTO DE INFORMÁTICA
            [Escuela] => ESCUELA DE CIENCIAS
            [universidad] => UNIVERSIDAD DE ORIENTE
            [nombres_profesor] => JESUS PABLO
            [apellidos_profesor] => PEREZ DIAZ
            [cargo] => Jefe de
        )


*/


 ?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>
<body> 

<!--<htmlpageheader name="MyHeader1">
    
     <div class="report-heading">

                <div class="row" class="{HEADER_STYLE}">
                    <div class="panel-title col-xs-18">
                      {TITULOENCABEZADO} claudio rondon <br/>
                        <span class="small"> {FECHA}</span><br/> <br/>
                        <span class="small"></span>
                    </div>
                    <div class="col-xs-4 report-logo">
                        <img class="img-responsive" src="{HOME}/diseno/images/logo_empresa/{ID_EMPRESA}_logo_empresa_report.png">
                    </div>

                </div>
            </div>
    
                       
</htmlpageheader>
                    
    <htmlpagefooter name="MyFooter1">
                    <div class="report-footer">
                        <div class="row">
                            <div class=" col-xs-2 mosaikus-mini-logo">
                                <img class="img-responsive" src="">
                            </div>
                            <div class=" col-xs-5 mosaikus-mini-logo" style="color:#CCC;margin-top:15px;">
                                <small></small>
                            </div>
                            <div class=" col-xs-3">
                                &nbsp;
                            </div>
                            <div class=" col-xs-2">
                                
                            </div>
                            <div class=" col-xs-8"  style="color:#c6c6c5;text-align:right;">
                                <small>Fecha de Generación:{CREATED_AT}</small>
                            </div>  
                        </div>
                    </div>
                </htmlpagefooter>
 [dependencia] => DEPARTAMENTO DE INFORMÁTICA
            [Escuela] => ESCUELA DE CIENCIAS
            [universidad] => UNIVERSIDAD DE ORIENTE
            [nombres_profesor] => JESUS PABLO
            [apellidos_profesor] => PEREZ DIAZ
            [cargo] => Jefe de


                -->
           
            
<div id="main-content" class="main-content panel-container col-xs-12 ">
    <div class="content-panel panel">
        <div class="content">
            
            
            <div class="report-body">    
              <p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><img alt="" src="imagenes/avatar.jpg" style="height:23px; width:23px" title="smiley" /></strong></span></span></p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><?= $datos_fijos[0]->universidad; ?></strong></span></span></p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>NUCLEO DE SUCRE</strong></span></span></p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DECANATO / <?= $datos_fijos[0]->Escuela; ?> </strong></span></span></p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong><?= $datos_fijos[0]->dependencia; ?></strong></span></span></p>

<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cuman&aacute;</span></span></p>

<p style="text-align:right"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong></strong></span></span></p>

<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>PARA: &nbsp;<?= $data['para']; ?></strong></span></span></p>

<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>DE: &nbsp;<?= $data['de']; ?></strong></span></span></p>

<p style="text-align:center"><strong>Circular </strong></p>


<?= $data['editor_html']; ?>






<p style="text-align:justify"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">&nbsp; &nbsp; &nbsp; &nbsp;Sin otro particular, se despide de usted.</span></span></p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Atentamente,</span></span></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">__________________________</span></span></p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Profa. <?= $datos_fijos[0]->nombres_profesor.' '.$datos_fijos[0]->apellidos_profesor; ?></span></span></p>

<p style="text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Jefa del <?= $datos_fijos[0]->dependencia; ?></span></span></p>

<p style="text-align:center">&nbsp;</p>

<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">cc: Comisi&oacute;n de Trabajo de Grado de la Lic. de Informatica.</span></span></p>

<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Archivo</span></span></p>

<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">CR/Elizabet Perez</span></span></p>

<p>&nbsp;</p>

<p style="margin-left:0cm; margin-right:0cm; text-align:center"><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px">Apartado de Correo 245/t&eacute;lex 93134 &ndash;UDONS VE / Cable Univoriente / Cerro Colorado / Cuman&aacute; / Venezuela</span></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Arial,Helvetica,sans-serif"><span style="font-size:12px"><strong>&nbsp; &nbsp;&nbsp;</strong></span></span></p>

<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>


            </div>
                        
            
        </div>
    </div>

</div>
          
        
</body>
</html>