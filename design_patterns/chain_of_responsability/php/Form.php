<?php

require_once './rules/EmailRule.php';
require_once './rules/RequiredRule.php';

class Form {

    protected $validators = [
        'required' => EmailRule::class,
        'email'    => RequiredRule::class
    ];

    protected $values = [];

    protected $fields = [];

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
        foreach ($this->fields as $name => $validations) {
            $this->values[$name] = readline("Veuillez renseigner votre $name");
        }
    }

    public function isValid ()
    {
        $valid = false;
        foreach ($this->fields as $name => $validations) {
            $valid |= $this->validate($name, $validations);
        }
        return !$valid;
    }

    public function validate ($name, $validations)
    {
        $valid = false;
        foreach ($validations as $validation) {
            $valid |= $this->validators[$validation]->check($this->values[$name]);
        }
        return $valid;
    }

}
