<?php 
    $id=$_GET['id'];
    #conexion
    include '../config/conexion.php';
    $conexion=conexion();
    #eliminar
    $query=eliminarArchivo($conexion,$id);
    if($query){
        header('location:../index.php?eliminar=success');
    }else{
        header('location:../index.php?eliminar=error');
    }


?>