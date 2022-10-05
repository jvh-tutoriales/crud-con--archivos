<?php 
    function conexion(){
        $conexion=mysqli_connect('localhost','root','','archivo');
        return $conexion;
    }
    function listarArchivos($conexion){
        $sql="SELECT * FROM archivo";
        $query=mysqli_query($conexion,$sql);
        return $query;
    }
    function eliminarArchivo($conexion,$id){
        $sql="DELETE FROM archivo where id=$id";
        $query=mysqli_query($conexion,$sql);
        return $query;
    }
    function insertarArchivo($conexion,$nombre,$categoria,$tipo,$fecha,$archivoBlob){
        $sql="INSERT INTO archivo(nombre,categoria,tipo,fecha,archivo) VALUES('$nombre','$categoria','$tipo','$fecha','$archivoBlob') ";
        $query=mysqli_query($conexion,$sql);
        return $query;
    }
    function seleccionarCampo($conexion,$id){
        $sql="SELECT * FROM archivo WHERE id=$id";
        $query=mysqli_query($conexion,$sql);
        $datos=mysqli_fetch_assoc($query);
        return $datos;
    }
    function modificarNombre($conexion,$id,$nombre){
        $sql="UPDATE archivo SET nombre='$nombre' WHERE id=$id";
        $query=mysqli_query($conexion,$sql);
        return $query;
    }
    function modificarTodo($conexion,$id,$nombre,$categoria,$tipo,$fecha,$archivoBlob){
        $sql="UPDATE archivo SET nombre='$nombre',categoria='$categoria',tipo='$tipo',fecha='$fecha',archivo='$archivoBlob' WHERE id=$id ";
        $query=mysqli_query($conexion,$sql);
        return $query;
    }
    function modificarArchivo($conexion,$id,$categoria,$tipo,$fecha,$archivoBlob){
        $sql="UPDATE archivo SET categoria='$categoria',tipo='$tipo',fecha='$fecha',archivo='$archivoBlob' WHERE id=$id ";
        $query=mysqli_query($conexion,$sql);
        return $query;
    }
?>