<?php 
    #capturar los datos
    $id=$_POST['id'];
    $Nnombre=$_POST['nombre'];
    $archivo=$_FILES['archivo'];

    #si solo modifica el nombre el archivo estará vacio
    if($archivo['size']==0){
        #verificar si el nombre lo a cambiado
        include '../config/conexion.php';
        $conexion=conexion();
        $datos=seleccionarCampo($conexion,$id);
        $Anombre=$datos['nombre'];
        if($Nnombre==$Anombre || $Nnombre==''){
            #no paso nada
            header('location:../');
        }else{
            $query=modificarNombre($conexion,$id,$Nnombre);
            if($query){
                header('location:../index.php?modificar=success');
            }else{
                header('location:../index.php?modificar=error');
            }
        }
    }else{
        #verificar si cambio el nombre

        include '../config/conexion.php';
        $conexion=conexion();
        $datos=seleccionarCampo($conexion,$id);
        $Anombre=$datos['nombre'];
        #capturamos categoria,tipo,nueva fecha,archivo blob
        $categoria=explode('.',$archivo['name'])[1];
        $tipo=$archivo['type'];
        $fecha=date('Y-m-d G:i:s');
        $archivoBlob=addslashes(file_get_contents($archivo['tmp_name']));
        if($Nnombre==$Anombre || $Nnombre==''){
            #tenemos que modificar todo menos el nombre todo lo relacionado al archivo
            $query=modificarArchivo($conexion,$id,$categoria,$tipo,$fecha,$archivoBlob);
            if($query){
                header('location:../index.php?modificar=success');
            }else{
                header('location:../index.php?modificar=error');
            }

        }else{
            #modificar todo
            $query=modificarTodo($conexion,$id,$Nnombre,$categoria,$tipo,$fecha,$archivoBlob);
            if($query){
                header('location:../index.php?modificar=success');
            }else{
                header('location:../index.php?modificar=error');
            }

        }

    }


?>