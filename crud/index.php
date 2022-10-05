<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ARCHIVOS CON PHP Y MYSQL</title>
    <!--esilos bootstrap -->
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <!-- nuestros estilos -->
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <div class="container">
    
        <div class="m-0 row justify-content-center mt-3" >
            <form action="acciones/insertar.php" method="post" enctype="multipart/form-data" class="col-auto w-50">
                <label for="Nombre">Nombre del Archivo</label>
                <input type="text" name="nombre" id="nombre" class="form-control">
                <label for="archivo">Sube un archivo</label>
                <input type="file" name="archivo" id="archivo" class="form-control">
                <button type="submit" class="btn btn-primary mt-2">Subir archivo</button>
            </form>
        </div>
        <div class="row m-0 justify-content-center mt-5">
            <table class="table col-auto w-100">
                <thead>
                    <tr>
                        <th colspan="6" class="text-center">LISTA DE ARCHIVO SUBIDOS</th>
                    </tr>
                    <tr>
                        <th>#</th>
                        <th>Nombre del archivo</th>
                        <th>Categoria</th>
                        <th>Archivo</th>
                        <th>Fecha ingresada</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        include "config/conexion.php";
                        $conexion=conexion();
                        $lista=listarArchivos($conexion);
                        $contador=0;
                        while($datos=mysqli_fetch_array($lista)){
                            $contador++;
                            $id=$datos['id'];
                            $nombre=$datos['nombre'];
                            $categoria=$datos['categoria'];
                            $tipo=$datos['tipo'];
                            $archivo=$datos['archivo'];
                            $fecha=$datos['fecha'];
                            $mensage='';
                            if($categoria=='png' || $categoria=='jpg'){
                                $mensage="<td><img class='icono' src='data:image/jpg;base64,".base64_encode($archivo)."' ></td>";
                            }
                            if($categoria=='pdf'){
                                $mensage="<td><a href='cargar.php?id=$id'><img class='icono' src='img/pdf.png'></br>Abrir</a></td>";
                            }
                            if($categoria=='rar' || $categoria=='zip'){
                                $mensage="<td><a class='text-center' href='cargar.php?id=$id'><img class='icono ' src='img/comprimido.jpg'><br>Descargar</a></td>";
                            }
                            if($categoria=='xls'){
                                $mensage="<td><a class='text-center'  href='cargar.php?id=$id'><img class='icono' src='img/exel.png'><br>descargar</a></td>";
                            }
                            if($categoria=='docx'){
                                $mensage="<td><a class='text-center' href='cargar.php?id=$id'><img class='icono' src='img/word.png'><br>descargar</a></td>";
                            }
                            if($mensage==''){
                                $mensage="<td><a class='text-aling-center' href='cargar.php?id=$id'><img class='icono' src='img/desconocido.png'><br>descargar</a></td>";
                            }
                    ?>
                    <tr>
                        <td><?=$contador; ?></td>
                        <td><?=$nombre; ?></td>
                        <td><?=$categoria; ?></td>
                        <?php 
                            echo $mensage;
                        ?>
                        <td><?=$fecha; ?></td>
                        <td><a class="btn btn-success" href="modificar.php?id=<?=$id?>">Editar</a> <a class="btn btn-danger" href="acciones/eliminar.php?id=<?=$id;?>">Eliminar</a></td>
                    </tr>
                    <?php 
                        }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
    <!--js bootstrap -->
    <script src="bootstrap/bootstrap.bundle.min.js"></script>
</body>
</html>