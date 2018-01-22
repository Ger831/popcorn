<?php
header('Access-Control-Allow-Origin: *');
	require_once '../modelos/entidadcategoria.php';
	require_once '../modelos/modelocategoria.php';

	$modcat= new Modelocategoria();

	if(isset($_REQUEST['Accion'])){
		switch($_REQUEST['Accion']){

		case 'listar':
				$jsondata=$modcat->listar();
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;
  	}
}

?>