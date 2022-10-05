<?php 
#optener el id
$id=$_GET['id'];
#sacar el nombre del archivo y la extensión
include 'config/conexion.php';
$conexion=conexion();
$datos=seleccionarCampo($conexion,$id);
$nombre=$datos['nombre'];
$categoria=$datos['categoria'];
$titulo=strtoupper($nombre.'.'.$categoria);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--esilos bootstrap -->
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <!-- nuestros estilos -->
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
            <div class="m-0 row justify-content-center mt-3" >
                <form action="acciones/modificar.php" method="post" enctype="multipart/form-data" class="col-auto w-50">
                    <div class="alert alert-warning text-center">
                        <?php echo $titulo;?>
                    </div>
                    <input type="hidden" name="id" value="<?=$id?>">
                    <label for="Nombre">Nombre del Archivo</label>
                    <input type="text" name="nombre" id="nombre" class="form-control" value="<?php echo $nombre;?>">
                    <label for="archivo">Actualizar Archivo</label>
                    <input type="file" name="archivo" id="archivo" class="form-control">
                    <button type="submit" class="btn btn-primary mt-2">Actualizar</button> <a href="index.php"><button type="button" class="btn btn-secondary mt-2">Retornar</button></a>
                </form>
            </div>
    </div>
    <!--js bootstrap -->
    <script src="bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>