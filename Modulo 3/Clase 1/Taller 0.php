<?php

function crearFormulario($lista)
{
    $cadena = "";
    foreach ($lista as $llave => $valor) 
    {
        if ($valor == "button")
        {
            $cadena .= "<button type=$valor>$llave</button><br>";
        }
        else
        {
            $cadena .="<label>$llave</label><br>";
            $cadena .= "<input type=$valor><br>";
        }
    }
    echo $cadena;
}

//Caso 1
echo "Caso 1:<br><br>";
$myArray = array('nombre' => 'text', 'telefono' => 'numeric', 'email' => 'email', 'contrasena' => 'password', 'si' => 'radio',
             'no' => 'checkbox', 'enviar'=> 'button', 'salir' => 'button');

crearFormulario($myArray);

//Caso 2
echo "<br><br>Caso 2:<br><br>";

$myArray = array('nombre' => 'button', 'telefono' => 'button', 'email' => 'button', 'contrasena' => 'button', 'si' => 'button',
            'no' => 'button', 'enviar'=> 'button', 'salir' => 'button' );

crearFormulario($myArray);

?>