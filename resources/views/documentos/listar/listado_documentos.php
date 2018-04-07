<?php //print_r($documento); die(); ?>

<div class="box box-primary">

<div class="box-header">
 <h4 class="box-title">Documentos Enviados</h4>
        <div class="input-group input-group-sm">
                            <input type="text" class="form-control" id="dato_buscado">
                            <span class="input-group-btn">
                              <button class="btn btn-info btn-flat" type="button" onclick="buscarusuario();" >Buscar!</button>
                            </span>
        </div>
        <div  >
        <select  id="select_filtro_pais"  onchange="buscarusuario();" >
         <?php  if(isset($paissel)){ 
             $listadopais=$paissel->nombre; 
             $optsel= '<option value="'.$paissel->id.'">'.$paissel->nombre.' </option>';
        }else{  
            $listadopais="General";
            $optsel="";
         } ?>

         <?=  $optsel;  ?>
        <option value="0">General </option>
        <?php foreach($paises as $pais){   ?>
        <option value="<?= $pais->id; ?>" > <?= $pais->nombre; ?></option>
        <?php }  ?>
        </select>
       
        <span >  Resultados en  listado <b><?= $listadopais; ?></b></span>
   
        
        </div>

        

                 
</div>

<div class="box-body">              
<?php 

if( count($documento) >0)
{
?>

<table id="tabla_pacientes" class="display table table-hover" cellspacing="0" width="100%">
       
        <thead>
            <tr>
             <th style="width:10px">Id</th>
                <th>Codigo</th>
                <th>Descripción</th>
                <th>Estatus</th>
                <th>Fecha Creado</th>
              <th>Acción</th>
            </tr>
        </thead>
 
        
       
<tbody>


<?php 

   foreach($documento as $documento){  
?>

 <tr role="row" class="odd">
    <td class="sorting_1"><?= $documento->id_documento; ?></td>
    <td class="mailbox-messages mailbox-" ><a href="javascript:void(0);" onclick="mostrarficha1(<?= $documento->id; ?>);"  style="display:block"><i class="fa fa-email"></i>&nbsp;&nbsp;<?= $documento->codigo_plantilla;  ?></a></td>
    <td><?= $documento->descripcion_documento;  ?></td>
   
    <td><?='Por firmar'; //$documento->id_dependencia;  ?></td>
   
    <td><?= $documento->created_at;  ?></td>
    <td><button class="btn  btn-success btn-xs" onclick="mostrarficha_pdf(<?= $documento->codigo_plantilla; ?>);" ><i class="fa fa-fw fa-eye"></i>Ver</button></td>
</tr>
 
<?php    
/*    $documento->codigo_plantilla=$codigo_documento_generado;
    $documento->descripcion_documento=$descripcion_documento;
    $documento->id_usuario=$usuarioactual->cedula;
    $documento->id_subcategoria= $id_documento;
    $documento->html_documento=$cuerpo_documento_html;    
*/
}
?>


  

    </table>



    <?php


//echo str_replace('/?', '?', $documento->render() )  ;

}
else
{

?>


<br/><div class='rechazado'><label style='color:#FA206A'>...No se ha encontrado ningun usuario...</label>  </div> 

<?php
}

?>
</div>



