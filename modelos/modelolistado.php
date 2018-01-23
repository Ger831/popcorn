<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class Modelolistado{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	public function Listar2($id){
		$responsearray = array();
		try{
			$result = array();
			$stm=$this->pdo->prepare("SELECT * FROM pelicula, categoria where pelicula_categoria_id = categoria_id and categoria_id=?");

			$stm->execute(array($id));

			foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
				$pelis = new Modelolispelis();
					$pelis->__SET('lispelis_id', $r->pelicula_id);
					$pelis->__SET('lispelis_titulo', $r->pelicula_nombre);
					$pelis->__SET('lispelis_descripcion', utf8_encode($r->pelicula_descripcion));
					$pelis->__SET('lispelis_imagen', $r->pelicula_urLimagen_s);
					$pelis->__SET('lispelis_subtitulo', $r->categoria_nombre);
					$pelis->__SET('cat_id', $r->categoria_id);

				$result[] = $pelis->returnArray();
			}
			$responsearray['success']=true;
			$responsearray['message']='Listado correctamente';
			$responsearray['datos']=$result;

		}catch(Exception $e){
			echo $e;
			$responsearray['success']=false;
			$responsearray['message']='Error al listar';
		}
		return $responsearray;
	}

}
?>