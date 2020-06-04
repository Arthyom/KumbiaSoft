<?php
    
    class SucursalesController extends ScaffoldController{	
        public $model = 'sucursales';

        public $scaffold = 'wfls';


        public function index($page = 1)
        {
            $this->data = (new $this->model)->paginate("page: $page", 'order: id desc');
        }
    
    }