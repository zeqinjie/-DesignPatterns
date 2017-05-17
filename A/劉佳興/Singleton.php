<?php
/**
 * Created by PhpStorm.
 * User: 10584
 * Date: 2017/2/22
 * Time: 18:28
 */
class Test{

    private static $instance=null;

    private function __construct()
    {

    }

    private function __clone()
    {
        // TODO: Implement __clone() method.
    }

    public static function getInstance(){
        if(is_null(self::$instance)){
            echo 'new';
            self::$instance=new Test();
        }{
            echo 'old';
        }
        return self::$instance;
    }
}