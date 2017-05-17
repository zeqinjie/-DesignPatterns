<?php
/**
 * Created by PhpStorm.
 * User: 10584
 * Date: 2017/3/14
 * Time: 9:26
 */

interface Database{
    public function connection();
}

class Mysql implements Database{
    public function connection()
    {
        // TODO: Implement connection() method.

    }
}

class SqlServer implements Database{
    public function connection()
    {
        // TODO: Implement connection() method.
    }
}

class DBFactory{
    static function connection($db){
        switch($db){
            case 'mysql':
                return new Mysql();
            case 'sql_server':
                return new SqlServer();
        }
    }
}
