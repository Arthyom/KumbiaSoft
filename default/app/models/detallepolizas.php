<?php
    
    class detallepolizas extends ActiveRecord{	
    
        public function detallesPorIdPoliza($id, $page = 1)
        {   
            $sql = "SELECT * FROM detallepolizas WHERE IdPoliza == $id";
            return $this->paginate_by_sql( 'detallepolizas', $sql, 'per_pages: 10', "page: $page"  );
            # code...
        }
    }