<?php //namespace App\Http\Controllers;
namespace App\Http\Controllers\Documento;

use App\User;
use Storage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Excel;
use App\Pais;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Database\Query\Builder;
use App\Categoria;
use App\Subcategoria;
use App\Itemsubcategoria;
use App\Dependencia;
use App\Circular;
use App\Documento;

class DocumentoController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Home Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders your application's "dashboard" for users that
	| are authenticated. Of course, you are free to change or remove the
	| controller as you wish. It is just here to get your app started!
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('auth');
	}

	 public function cargar_plantilla()
	{
	/*$sql="select * from users";
		$result=DB::select($sql);
		;*/
		//echo '<pre>';print_r($result); die();
		//$usuarios= User::paginate(1);  
        //$paises=Pais::all();
		$result=Categoria::all();
		  $usuarioactual=\Auth::user();
      // return view('home')->with("usuario",  $usuarioactual);
		return view('documentos.crear')->with("categoria", $result )->with("usuario",  $usuarioactual);

	}

	 public function cargar_formulario_circular()
	{
		return view('documentos.formularios.circular.form_circular');
	}

	public function generar_plantillapdf(Request $request){
		//datos delformulario para nuevo usuario
		$data=$request->all();
		 $usuarioactual=\Auth::user();
		 $id_dependencia=$usuarioactual->id_dependencia;
		 $sql="SELECT upper( dep.nombre_dependencia) dependencia, upper( dep1.nombre_dependencia)Escuela, upper( inst.nombre_institucion) universidad ,prof.nombres_profesor, prof.apellidos_profesor, 'Jefe de' cargo FROM dependencia dep LEFT JOIN dependencia dep1 ON dep.relacion_dependencia = dep1.id_dependencia LEFT JOIN institucion inst ON inst.id_institucion = dep.id_institucion LEFT JOIN profesor prof on prof.cedula_profesor=dep.cedula_jefe WHERE dep.id_dependencia = $id_dependencia";

$datos_fijos=DB::select($sql);

		//->with("msj","Usuario Registrado Correctamente")
		return view('documentos.formularios.circular.circular_pdf')->with("data",$data)->with("datos_fijos",$datos_fijos);
	}

	public function guardardocumento(Request $request){
		//datos delformulario para nuevo usuario
//		$data=$request->all();

		//
		//->with("msj","Usuario Registrado Correctamente");
		 // echo $view;die();
	/*	Array
(
    [_token] => jBRPb0MhQn9Wia2IW4yVI5nfrorCwIJnjq0E8SLS
    [id_html_documento] => 
    [id_dependencia] =>  2
    [cedula_usuario] =>  18211942
    [categoria_documento] => 1
    [id_documento] => 1
    [id_plantilla] => 1
    [descricion_documeto] => docuemento para trabajar en el pueblo
    [para] => licenciado claudio
    [de] => juan guerra
    [editor_html] => 

Circular

    [editor] => 

Circular


    [id_departamento_destino] => 3
)*/

$data=$request->all();
      	$codigo=$data['id_documento'];
    switch ($codigo) {
    	case '1': //circular

    	/*
    	Para convocatorias
    	1 Por firmar
    	2 Por Modificar
    	3 listado_documentos_enviados
    	5 Leido
    	*/

    	$usuarioactual=\Auth::user();
		$id_dependencia=$usuarioactual->id_dependencia;
    	$usuarioactual=\Auth::user();

if($usuarioactual->id_perfil==3){//secretaria
	$codigo_documento_generado=time();
    $cuerpo_documento_html=$data['id_html_documento_pdf'];
    $cedula_usuario= $data['cedula_usuario'];
    $descripcion_documento= $data['descricion_documeto'];
    $estatus=1;//por firmar
    $categoria_documento=$data['categoria_documento'];
    $id_documento=$data['id_documento'];//subcategoria
    $editor_html=$data['editor_html'];

   $para=$data['para'];
    $de=$data['de'];
    $documento= new Documento;
    $documento->codigo_plantilla=$codigo_documento_generado;
    $documento->descripcion_documento=$descripcion_documento;
    $documento->id_usuario=$usuarioactual->cedula;
    $documento->id_subcategoria= $id_documento;
    $documento->html_documento=$cuerpo_documento_html;
    $documento->id_dependencia_c=$id_dependencia;

    //guardar tabla Circular


    //GUadar envio a los deparatmento
   /* $circular=new Circular;
    $circular->codigo_circular=$codigo_documento_generado;
    $circular->cedula_jefe='';
    $circular->nota_circular='';
    $circular->para_circular=$para;
    $circular->de_circular=$de;
    $circular->id_subcategoria=$id_documento;
    $id_itemsubcategria='';
    $cicular->cuerpo_circular =$editor_html;
    $circular->html_circular=$cuerpo_documento_html;*/


    //$resul= $documento->save();
    $resul= $documento->save();

}
    	





    	//Codigo documento generado
   
    	//codigo id_documento
    	//[categoria_documento] => 1
   // [id_documento] => 1
   // [id_plantilla] => 1
    		# code...
    	/*$usuario= new Circular;
		$usuario->codigo_circular  = "100";
		$usuario->cedula_jefe=17217387;//$cedula_jefe="18211942";
		$usuario->nota_circular='prueba';
		$usuario->para_circular=$data["para"];
		$usuario->de_circular=$data["De"];
*/
	/*	 [id_html_documento]
    [id_dependencia]
    [cedula_usuario]
    [categoria_documento] => 1
    [id_documento] => 1
    [id_plantilla] => 1
    [descricion_documeto] => docuemento para trabajar en el pueblo
    [para] => licenciado claudio
    [de] => juan guerra
    [editor_html] => 

Circular

    [editor] => 

Circular


    [id_departamento_destino] => */


						
	/*	$usuario->pais=$data["pais"];
		$usuario->ciudad=$data["ciudad"];
		$usuario->email=$data["email"];
		$usuario->institucion=$data["institucion"];
		$usuario->ocupacion=$data["ocupacion"];
		$usuario->password=bcrypt($data["password"]);*/

		//

    		break;
    	
    	default:
    		# code...
    		break;
    }
		$view=$codigo_documento_generado;
		return $view; //view('documentos.formularios.circular.circular_pdf')->with("data",$data);

}

	public function generarpdf($codigo){
		//$view=$data['id_html_documento'];
		//echo $view;die();
		//
		$sql="select * from documento where codigo_plantilla=$codigo;";
		$result=DB::select($sql);


       $pdf = \App::make('dompdf.wrapper');
//cargarplantillapdf
		$view=$result[0]->html_documento;
		//$data=0;
		//$date=0;


 //$view =  \View::make('documentos.formularios.circular.circular_pdf', compact('data', 'date'))->render();
        $pdf->loadHTML($view);
        $tipo=1;
        if($tipo==1){return $pdf->stream('reporte');}
        if($tipo==2){return $pdf->download('reporte.pdf'); }	
	
	}

	public function datos_subcatgoria($codigo){
		//$view=$data['id_html_documento'];
		//echo $view;die();
		$codigo=($codigo!='' && $codigo!=null )?$codigo:0;
		$sql="select * from subcategoria_documento where id_categoria=$codigo order by id_subcategoria;";
		$result=DB::select($sql);
		//$result=Subcategoria::Busqueda($codigo);
		//print_r($result);
		//$sql="select * from subc"

     	return Response::json($result);
	
	}



	public function datos_itemsubcatgoria($codigo){
		//$view=$data['id_html_documento'];
		//echo $view;die();
		$codigo=($codigo!='' && $codigo!=null )?$codigo:0;
		$sql="select * from itemsubcategoria where id_subcategoria=$codigo order by id_itemsubcategoria;";
		$result=DB::select($sql);
		//$result=Subcategoria::Busqueda($codigo);
		//print_r($result);
		//$sql="select * from subc"

     	return Response::json($result);
	
	}
	public function dependencias(){
		//$codigo=($codigo!='' && $codigo!=null )?$codigo:0;
		//$sql="select * from itemsubcategoria where id_subcategoria=$codigo order by id_itemsubcategoria;";
		$result=Dependencia::all();
     	return Response::json($result);
	}



	/*  public function crearPDF($datos,$vistaurl,$tipo)
    {

        $data = $datos;
        $date = date('Y-m-d');
        $view =  \View::make($vistaurl, compact('data', 'date'))->render();

       // echo $view;die();
        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadHTML($view);
        
        if($tipo==1){return $pdf->stream('reporte');}
        if($tipo==2){return $pdf->download('reporte.pdf'); }
    }*/


public function listado_documentos_enviados()
    {
        $documento= Documento::paginate(100); 
        $sql="select * from documento where id_dependencia_c"; 
        $paises=Pais::all();
        return view('documentos.listar.listado_documentos')
        ->with("paises", $paises )
        ->with("documento", $documento );    

        /* $usuarios= Documento::paginate(1);  
        $paises=Pais::all();
        return view('listados.listado_usuarios')
        ->with("paises", $paises )
        ->with("usuarios", $usuarios );*/   
}






   public function form_nuevo_usuario()
	{
		return view('formularios.form_nuevo_usuario');
	}

	public function listado_usuarios()
    {
        $usuarios= User::paginate(25);  
        $paises=Pais::all();
        return view('listados.listado_usuarios')
        ->with("paises", $paises )
        ->with("usuarios", $usuarios );       
	}
	//presenta el formulario para nuevo usuario
	public function agregar_nuevo_usuario(Request $request)
	{

		$data=$request->all();
      	$usuario= new User;
		$usuario->nombres  =  $data["nombres"];
		$usuario->apellidos=$data["apellidos"];
		$usuario->pais=$data["pais"];
		$usuario->ciudad=$data["ciudad"];
		$usuario->email=$data["email"];
		$usuario->institucion=$data["institucion"];
		$usuario->ocupacion=$data["ocupacion"];
		$usuario->password=bcrypt($data["password"]);

		$resul= $usuario->save();

		if($resul){
            
            return view("mensajes.msj_correcto")->with("msj","Usuario Registrado Correctamente");   
		}
		else
		{
             
            return view("mensajes.msj_rechazado")->with("msj","hubo un error vuelva a intentarlo");  

		}
	}

//leccion 7
		public function form_editar_usuario($id)
	{
		//funcion para cargar los datos de cada usuario en la ficha
		$usuario=User::find($id);
		$contador=count($usuario);
		if($contador>0){          
            return view("formularios.form_editar_usuario")->with("usuario",$usuario);   
		}
		else
		{            
            return view("mensajes.msj_rechazado")->with("msj","el usuario con ese id no existe o fue borrado");  
		}
	}

		public function editar_usuario(Request $request)
	{

		$data=$request->all();
		$idUsuario=$data["id_usuario"];
		$usuario=User::find($idUsuario);
        $usuario->nombres  =  $data["nombres"];
		$usuario->apellidos=$data["apellidos"];
		$usuario->pais=$data["pais"];
		$usuario->ciudad=$data["ciudad"];
		$usuario->email=$data["email"];
		$usuario->institucion=$data["institucion"];
		$usuario->ocupacion=$data["ocupacion"];
		
		$resul= $usuario->save();

		if($resul){            
            return view("mensajes.msj_correcto")->with("msj","Datos actualizados Correctamente");   
		}
		else
		{            
            return view("mensajes.msj_rechazado")->with("msj","hubo un error vuelva a intentarlo");  
		}
	}

//leccion 8
		public function subir_imagen_usuario(Request $request)
	{

	    $id=$request->input('id_usuario_foto');
		$archivo = $request->file('archivo');
        $input  = array('image' => $archivo) ;
        $reglas = array('image' => 'required|image|mimes:jpeg,jpg,bmp,png,gif|max:900');
        $validacion = Validator::make($input,  $reglas);
        if ($validacion->fails())
        {
          return view("mensajes.msj_rechazado")->with("msj","El archivo no es una imagen valida");
        }
        else
        {

	        $nombre_original=$archivo->getClientOriginalName();
			$extension=$archivo->getClientOriginalExtension();
			$nuevo_nombre="userimagen-".$id.".".$extension;
		    $r1=Storage::disk('fotografias')->put($nuevo_nombre,  \File::get($archivo) );
		    $rutadelaimagen="../storage/fotografias/".$nuevo_nombre;
	    
		    if ($r1){

			    $usuario=User::find($id);
			    $usuario->imagenurl=$rutadelaimagen;
			    $r2=$usuario->save();
		        return view("mensajes.msj_correcto")->with("msj","Imagen agregada correctamente");
		    }
		    else
		    {
		    	return view("mensajes.msj_rechazado")->with("msj","no se cargo la imagen");
		    }

        }	

	}


	public function cambiar_password(Request $request){

		$id=$request->input("id_usuario_password");
		$email=$request->input("email_usuario");
		$password=$request->input("password_usuario");
		$usuario=User::find($id);
	    $usuario->email=$email;
	    $usuario->password=bcrypt($password);
	    $r=$usuario->save();

	    if($r){
           return view("mensajes.msj_correcto")->with("msj","password actualizado");
	    }
	    else
	    {
	    	return view("mensajes.msj_rechazado")->with("msj","Error al actualizar el password");
	    }
	}

	//leccion 09

	public function form_cargar_datos_usuarios(){
       return view("formularios.form_cargar_datos_usuarios");
	}


    public function cargar_datos_usuarios(Request $request)
	{
       $archivo = $request->file('archivo');
       $nombre_original=$archivo->getClientOriginalName();
	   $extension=$archivo->getClientOriginalExtension();
       $r1=Storage::disk('archivos')->put($nombre_original,  \File::get($archivo) );
       $ruta  =  storage_path('archivos') ."/". $nombre_original;
       
       if($r1){
       	    $ct=0;
            Excel::selectSheetsByIndex(0)->load($ruta, function($hoja) {
		        
		        $hoja->each(function($fila) {
			        $usersemails=User::where("email","=",$fila->email)->first();
			        if(count( $usersemails)==0){
				      	$usuario=new User;
				        $usuario->nombres= $fila->nombres;
				        $usuario->apellidos= $fila->apellidos;
				        $usuario->email= $fila->email;
				        $usuario->telefono= $fila->telefono; //este campo llamado telefono se debe agregar en la base de datos c
				        $usuario->pais= $fila->pais;
				        $usuario->ciudad= $fila->ciudad;
				        $usuario->institucion= $fila->institucion;
		                $usuario->ocupacion= $fila->ocupacion;
		                $usuario->password= bcrypt($fila->password);
		                $usuario->save();
	                }
		     
		        });

            });

            return view("mensajes.msj_correcto")->with("msj"," Usuarios Cargados Correctamente");
    	
       }
       else
       {
       	    return view("mensajes.msj_rechazado")->with("msj","Error al subir el archivo");
       }

	}


		//leccion 10

	public function form_educacion_usuario(){
       return view("formularios.form_educacion_usuario");
	}


        //leccion 10
		public function buscar_usuarios($pais,$dato="")
    {

        $usuarios= User::Busqueda($pais,$dato)->paginate(25);  
        $paises=Pais::all();
        $paissel=$paises->find($pais);
        return view('listados.listado_usuarios')
        ->with("paises", $paises )
        ->with("paissel", $paissel )
        ->with("usuarios", $usuarios );       
	}










}