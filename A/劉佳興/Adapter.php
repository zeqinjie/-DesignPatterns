<?php
/**
 * Created by PhpStorm.
 * User: 10584
 * Date: 2017/5/16
 * Time: 13:52
 * 适配器模式
 */
//目标角色
interface Target
{
    public function Method1();

    public function Method2();
}

//源角色
class Adaptee
{
    public function Method1()
    {
        echo "Method1";
    }
}

class Adapter implements Target
{
    private $adaptee;

    function __construct(Adaptee $adaptee)
    {
        $this->adaptee = $adaptee;
    }

    public function Method1()
    {
        // TODO: Implement Method1() method.
        $this->adaptee->Method1();
    }

    public function Method2()
    {
        // TODO: Implement Method2() method.
        echo "Method2";
    }
}

$adaptee = new Adaptee();
$adapter = new Adapter($adaptee);
$adapter->Method1();
$adapter->Method2();