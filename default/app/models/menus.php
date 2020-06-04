
<?php
    
    class menus extends ActiveRecord{	
        public function initialize(){    
            if(isset($_SESSION["miBaseDatos"]))    
              $this->set_database($_SESSION["miBaseDatos"]);
        }    
    }