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
        $sql = "SELECT * FROM Personas";
        $resultado = mysqli_query($con, $sql);
        while($fila = mysqli_fetch_array($resultado))
        {
            echo $fila['Nombre']. " " . $fila['Apellido'] . " " . $fila['Edad'];
            echo "<br>";
        }
    }
    mysqli_close($con);

?>