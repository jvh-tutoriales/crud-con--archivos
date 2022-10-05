<?php 
$id=$_GET['id'];
#conexion
include 'config/conexion.php';
$conexion=conexion();
$datos=seleccionarCampo($conexion,$id);
$tipo=$datos['tipo'];
$categoria=$datos['categoria'];
$nombre=$datos['nombre'];
$archivo=$datos['archivo'];
header("Content-type: $tipo");
if($categoria=='pdf'){
    header("Content-Disposition:inline;filename=$nombre.$categoria");
}else{
    header("Content-Disposition:attached;filename=$nombre.$categoria");
}

echo $archivo;

?>