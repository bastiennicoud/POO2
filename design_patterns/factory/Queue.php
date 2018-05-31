<?php

class ListQueue {
    //
}

class ArrayQueue {
    //
}

/**
 * Queue
 */
class Queue {

    public static function create ($type) {
        switch ($type) {
            case 'list':
                return new ListQueue();
            case 'array':
                return new ArrayQueue();
            default:
                throw new Exception("Undefined Queue type", 1);
        }
    }

}