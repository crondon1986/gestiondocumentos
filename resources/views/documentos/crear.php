<div class="box box-primary col-xs-12">
                
                 <div class="box-header">
                  <h3 class="box-title">Crear Documento</h3>
                </div><!-- /.box-header -->

<div id="notificacion_resul_fanu"></div>
<form  id="id_form_documentos"  method="post"  action="agregar_nuevo_usuario" class="form-horizontal form_entrada" >                
  
  <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">  

    <input id='id_html_documento' type="hidden" name="id_html_documento" value="">              


<div class="box-body col-xs-12">
  <div  class="form-group col-xs-12">
          <label for="nombre">Categoría*</label>
            <select id="categoria_documento" name="categoria_documento" class="form-control">

                        <option  value="1 ">Administrativo</option>
                        <option value="2 ">Acádemico</option>
            </select>
  </div>
  <div  class="form-group col-xs-12">
            <label for="nombre">Tipo de Documento</label>
            <select  value="" id="id_documento" name="id_documento" class="form-control">
                  <option   value="">Seleccione</option>
                  <option  value="1">Convocatoria</option>
                  <option value="3 ">Oficios</option>
            </select>
  </div>



<div class="form-group col-xs-12">
                      <label for="nombre">Destinos*</label>
                       <select id="departamento" name="departamento" class="form-control">

<option  value="1 ">Departamento de Ciencias</option>
<option value="2 ">Departamento de Matematicas</option>
<option value="3 ">departamento de Biologia</option>
</select>
</div>



</div>

<div class="" id="formulario_documento">
    <p><h2>  cargar formulario de acuerdo a la plantilla del tipo de documento
      seleccionado</h2>
    </p>
</div>




<div class="box-footer col-xs-12 ">
                    <button  id="generar_documento" type="button" class="btn btn-primary" >Generar</button>
                     <!--<button  id="generar_documento" type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Generar</button>-->
                    <button  type="button" class="btn btn-primary">Cancelar1</button>
</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p><h3>Visualizacion de Documeto</h3></p>

<div class="form-group col-xs-12" id="bloque_mostrar_documento_generado">
</div>

      </div>
      <div class="modal-footer">
      <div class="box-footer col-xs-12 ">
          <button id="Guardar_documento"  class="btn btn-primary" >Guardar</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    
      </div>
       
      </div>
    </div>

  </div>
</div>


</form>

</div>
