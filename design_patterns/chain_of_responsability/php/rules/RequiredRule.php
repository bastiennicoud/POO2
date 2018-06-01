<?php

require_once './Rule.php';

class RequiredRule implements Rule {

    public static function check($value)
    {
        return empty($value) ? true : false;
    }

}
