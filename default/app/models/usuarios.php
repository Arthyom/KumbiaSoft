<?php
    
    class usuarios extends ActiveRecord{	
        public function initialize()
        {
            if( isset($_SESSION['baseDin']) )
                $this->set_database( $_SESSION['baseDin'] );
        }
    }