<?php
    
    class PolizasController extends ScaffoldController{	
        public $model = 'polizas';
        public $scaffold = 'wfls';


        public function index($page = 1)
        {
            $this->data = (new $this->model)->paginate("page: $page", 'order: id desc');
        }

        public function poliza($id)
        {
            View::template('pdf');

            // encontrar la poliza y sus respectivas relaciones
            $this->polizaBuscada = (new polizas)->find($id);
            $poliza = $this->polizaBuscada;

            $this->detallePoliza = (new detallepolizas)->find("IdPoliza LIKE $id");
            
          
            
            $this->sucursalBuscada = ( new sucursales)->find_first( "id LIKE $poliza->IdSucursal");
        }
    
    
    }