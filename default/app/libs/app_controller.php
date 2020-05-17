<?php
/**
 * @see Controller nuevo controller
 */
require_once CORE_PATH . 'kumbia/controller.php';

/**
 * Controlador principal que heredan los controladores
 *
 * Todos las controladores heredan de esta clase en un nivel superior
 * por lo tanto los métodos aquií definidos estan disponibles para
 * cualquier controlador.
 *
 * @category Kumbia
 * @package Controller
 */
abstract class AppController extends Controller
{

    final protected function initialize()
    {
        $controlador = $this->controller_name;
     
        if( $controlador != 'login'){
            if( Auth::is_valid() )
                return true;
        
            Redirect::to('login');
            return false;
        }

    }

    final protected function finalize()
    {
        
    }

}
