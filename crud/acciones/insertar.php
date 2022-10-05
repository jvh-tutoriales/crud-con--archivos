<?php 
    #capturamos los datos del formulario
    $nombre=$_POST['nombre'];
    $archivo=$_FILES['archivo'];
    $nombreArchivo=$archivo['name'];
    $categoria=explode('.',$nombreArchivo)[1];
    $tipo=$archivo['type'];
    $fecha=date('Y-m-d G:i:s');
    
    #archivo
    $tmp=$archivo['tmp_name'];
    $contenido=file_get_contents($tmp);
    $archivoBLOB=addslashes($contenido);

    #conexion y función insertar
    include "../config/conexion.php";
    $conexion=conexion();
    $query=insertarArchivo($conexion,$nombre,$categoria,$tipo,$fecha,$archivoBLOB);
    if($query){
        header('location:../index.php?insertar=success');
    }else{
        header('location:../index.php?insertar=error');
    }
    
?>