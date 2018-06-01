<?php

require_once './UserForm.php';

$myForm = new UserForm();

$myForm.displayForm();

if ($myForm.isValid()) {
    echo 'Le formulaire est validé';
} else {
    echo 'Les données ne sont pas valides';
}