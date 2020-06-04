<?php
    
    class DbrController extends AppController{	
        public function index( $nombre ='development', $tabla1 ='usuarios', $tabla2 ='usuarios')
        {
     
           
         View::template('layouts/superdefault');
          
          $db = Db::factory($nombre);
          $dbs = Db::factory('development');


          $this->es = $db->in_query('select * from '. $tabla1);

          $this->es2 = $dbs->in_query('select * from '. $tabla2);

        $this->es3=   $dbs->in_query('select * from menus');

    
        }

     
    }