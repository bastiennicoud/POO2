<?php

require_once './Rule.php';

class EmailRule implements Rule {

    public static function check($value)
    {
        return !filter_var($value, FILTER_VALIDATE_EMAIL);
    }

}
