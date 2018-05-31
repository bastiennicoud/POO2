<?php

/**
 * Queue
 */
class Queue {

  public static function create ($type) {
    switch ($type) {
      case 'list':
        return new List();
      case 'array':
        return new Array();
      default:
        throw new Exception("Undefined Queue type", 1);
    }
  }

}