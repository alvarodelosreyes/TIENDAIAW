<html>
  <head>
    <title>Proceso de inserci&oacute;n de nuevo cliente</title>
  </head>
  <body>
    <h1>Guardando el nuevo cliente...</h1>
  
<?php 

//incluimos la clase con la que trabajamos
require("./cliente.php");


//recoger valores del form
$nombre = $_POST["nombre"];
$pApellido = $_POST["pApellido"];
$sApellido = $_POST["sApellido"];
$DNI = $_POST["DNI"];


//hemos recogido datos del formulario... creamos objeto
$clienteNuevo = new Cliente($nombre,$pApellido,$sApellido,$DNI);
echo $clienteNuevo->imprimeCliente()."<br>";


//Vamos a por la
$SQLInsert = $clienteNuevo->getInsertSQL();

echo "La sentencia SQL a ejecutar es: ".$SQLInsert."<br>";

$servername = "bbdd";
$username = "root";
$password = "secret";

try {
  $conn = new PDO("mysql:host=$servername;dbname=iaw_db", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
  die();
}

try {
    //la function exec está programada en la clase PDO,
    // y he leido que lo que hace es ejecutar el SQL que tenga
    //el parámetro dentro de la mysql a la que estemos conectados
   $conn->exec($SQLInsert);
   echo "Inserci&oacute;n correcta";
} catch (PDOException $e) {
    echo "Insert failed: " . $e->getMessage();
    die();
}

//cerramos la conexión
$conn = null;


?>
</br><a href="./index.html">Volver a inicio</a>
</body>
</html>