<?php
require_once './Form.php';

class UserForm extends Form {

    private $fields = [
        'name' =>  ['required'],
        'email' => ['required', 'email']
    ];

}
