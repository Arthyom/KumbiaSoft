<?php
    
    class ControllerController extends AppController{	

        public function index()
        {
            View::select(NULL);
            echo 'hola';
        }
    
    }