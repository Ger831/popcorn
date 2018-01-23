<?php
header('Access-Control-Allow-Origin: *');
	require_once '../modelos/entidadcategoria.php';
	require_once '../modelos/entidadlistado.php';
	require_once '../modelos/modelocategoria.php';
	require_once '../modelos/modelolistado.php';
	require_once '../modelos/modelopelicula.php';

	$modcat= new Modelocategoria();
	$modlis= new Modelolistado();
	$modpelis= new Modelopelicula();

	if(isset($_REQUEST['Accion'])){
		switch($_REQUEST['Accion']){

		case 'listar3':
				$jsondata=$modpelis->Listar3($_REQUEST['catId']);
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;
		
		
		case 'listar2':
				$jsondata=$modlis->Listar2($_REQUEST['catId']);
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;

		case 'listar':
				$jsondata=$modcat->listar();
				//var_dump($jsondata);
				header('Content-type: application/json; charset=utf-8');
				echo json_encode($jsondata);
				break;
  	}
}

?>