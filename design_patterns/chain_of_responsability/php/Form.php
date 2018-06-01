<?php

class Form {

    protected $validators = [
        'required' =>,
        'email'    =>
    ];

    protected $values = [];

    /**
     * addField
     *
     * @param string $name
     * @param array $validations
     * @return void
     */
    public function addField($name, $validations) {
        array_push([$name => $validations]);
    }

    public function displayForm()
    {
        # code...
    }

}
