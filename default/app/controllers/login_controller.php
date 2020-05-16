<?php
    
    class LoginController extends AppController{	
    
        public $model = 'usuarios';

        public function index()
        {
            View::template('layouts/empty');

            if( Input::hasPost("user","pass") ){
                $user = Input::post("user");
                $pass = Input::post("pass");
                $auth = new Auth("model", "class: usuarios", "user: $user", "pass: $pass");

                if( $auth->authenticate() ){
                    Flash::valid('Correcto');
                    Redirect::to('/');
                }
                else{
                    Flash::error("Falló");
                    Redirect::to('/error');
                } 
            }
            else{
                Flash::error("No hay elementos");

            }


            

           
            
        }
    }