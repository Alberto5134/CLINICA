<?php
//coneccion
$host="localhost";
$basededatos="clinica";
$calve="";
$usuariodb="root";
$conexion=new mysqli($host,$usuariodb,$calve,$basededatos);
if(!$conexion){
	echo "Error de Coneccion de Base de Datos";
}
else{
	echo "Base de Datos Conectada";
}
?>