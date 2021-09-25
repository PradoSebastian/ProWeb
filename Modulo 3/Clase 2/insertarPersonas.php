<?php

    //incluir archivo de configuración con usuario y contraseña
    //dirname: misma carpeta donde estoy
    include_once dirname(__FILE__) . '/config.php';

    //crear Conexión
    //Variables en archivo config
    $con = mysqli_connect(HOST_DB,USUARIO_DB,USUARIO_PASS,NOMBRE_DB);

    if(mysqli_connect_errno())
    {
        echo "Error en la conexión: ". mysqli_connect_error();
    }
    else
    {
        $sql = "INSERT INTO Personas (Nombre,Apellido,Edad) VALUES('Pepito', 'Perez', 20)";
        if(mysqli_query($con, $sql))
        {
            echo "Pepito Perez insertado correctamente";
        }
        else
        {
            echo "Error en la inserción " . mysqli_error($con);
        }

        echo "<br>";

        $sql = "INSERT INTO Personas (Nombre,Apellido,Edad) VALUES('Suzana', 'Horia', 27)";
        if(mysqli_query($con, $sql))
        {
            echo "Suzana Horia insertado correctamente";
        }
        else
        {
            echo "Error en la inserción " . mysqli_error($con);
        }
        
        echo "<br>";
    }
    mysqli_close($con);

?>