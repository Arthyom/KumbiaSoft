<?php

class DbselController extends AppController
{
    public function index($dbName = 'development')
    {
      
            $_SESSION['baseDin'] = $dbName;

            $usr = new usuarios();


            $this->data = $usr->paginate("page: 1", 'order: id desc');
       
    }
}
