<?php

/**
 * Created by PhpStorm.
 * User: 10584
 * Date: 2017/4/17
 * Time: 18:03
 */
interface CompareInterface
{
    public function compare($a, $b);
}

class DateCompare implements CompareInterface
{
    public function compare($a, $b)
    {
        // TODO: Implement compare() method.
        $a = new DateTime($a);
        $b = new DateTime($b);
        if ($a == $b) {
            return 0;
        } elseif ($a > $b) {
            return 1;
        } else {
            return -1;
        }
    }
}

class NumberCompare implements CompareInterface
{
    public function compare($a, $b)
    {
        // TODO: Implement compare() method.
        if ($a == $b) {
            return 0;
        } elseif ($a > $b) {
            return 1;
        } else {
            return -1;
        }
    }
}

class StringCompare implements CompareInterface
{
    public function compare($a, $b)
    {
        // TODO: Implement compare() method.
        $a = strlen($a);
        $b = strlen($b);
        if ($a == $b) {
            return 0;
        } elseif ($a > $b) {
            return 1;
        } else {
            return -1;
        }
    }
}

class Compare
{
    private $a;
    private $b;

    public function set($a, $b)
    {
        $this->a = $a;
        $this->b = $b;
    }

    public function compare($strategy)
    {
        return $strategy->compare($this->a, $this->b);
    }
}

$stringCompare = new StringCompare();
$compare = new Compare();
$compare->set('aaa', 'bb');
$compare->compare($stringCompare);