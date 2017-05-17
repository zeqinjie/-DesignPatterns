<?php

/**
 * Created by PhpStorm.
 * User: 10584
 * Date: 2017/3/28
 * Time: 11:55
 */
class Observer1 implements SplObserver
{
    public function update(SplSubject $subject)
    {
        // TODO: Implement update() method.
        echo 1;
    }
}

class Observer2 implements SplObserver
{
    public function update(SplSubject $subject)
    {
        // TODO: Implement update() method.
        echo 2;
    }
}

class Subject implements SplSubject
{
    private $_observers;

    public function __construct()
    {
        $this->_observers = new SplObjectStorage();
    }

    public function attach(SplObserver $observer)
    {
        // TODO: Implement attach() method.
        $this->_observers->attach($observer);
    }

    public function detach(SplObserver $observer)
    {
        // TODO: Implement detach() method.
        $this->_observers->detach($observer);
    }

    public function notify()
    {
        // TODO: Implement notify() method.
        foreach ($this->_observers as $observer) {
            $observer->update($this);
        }
    }
}

$observer1 = new Observer1();
$observer2 = new Observer2();
$subject = new Subject();
$subject->attach($observer1);
$subject->attach($observer2);
$subject->notify();