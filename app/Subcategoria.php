<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subcategoria extends Model
{
    //
 protected $table = 'subcategoria_documento';

  /*public function user()
    {
        return $this->belongsTo('App\User', 'idUsuario', 'id');
    }*/

     public function scopeBusqueda($query,$codigo)
     {

           /* if($pais==0){ 
            $resultado= $query->where('nombres','like','%'.$dato.'%')
                              ->orWhere('apellidos','like', '%'.$dato.'%')
                               ->orWhere('email','like', '%'.$dato.'%');
            }
            else{
               
               //select * from users where pais = $pais  and (nombres like %$dato% or apellidos like %$dato%  or email like  %$dato% )
              $resultado= $query->where("pais","=",$pais)
                                  ->Where(function($q) use ($pais,$dato)  {
                                    $q->where('nombres','like','%'.$dato.'%')
                                      ->orWhere('apellidos','like', '%'.$dato.'%')
                                      ->orWhere('email','like', '%'.$dato.'%');       
                                   });

             }  */  
              $resultado= $query->where("id_categoria","=",$codigo);
echo '<pre>';print_r($resultado);
        
        return  $resultado;
     }

}