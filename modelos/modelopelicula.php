<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
require_once '../config/config.php';
class Modelopeli{

	private $pdo;

	public function __CONSTRUCT() {
		try{
			$this->pdo=new PDO('mysql:host='.HOST.';dbname='.DB,USERDB,PASSDB);
			$this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
		}catch(Exception $e){
			die($e->getMessage());
		}
	}

	public function Listar3($id){
		$responsearray = array();
		try{
			$result = array();
			$stm=$this->pdo->prepare("SELECT * FROM  pelicula, categoria where pelicula_categoria_id = categoria_id and pelicula_id=?");

			$stm->execute(array($id));

			foreach($stm->fetchALL(PDO::FETCH_OBJ) as $r){
				$peli = new Modelolispelis();
					$peli->__SET('lispelis_id', $r->pelicula_id);
					$peli->__SET('lispelis_titulo', $r->pelicula_nombre);
					$peli->__SET('lispelis_descripcion', utf8_encode($r->pelicula_descripcion));
					$peli->__SET('lispelis_imagen', $r->pelicula_urLimagen_p);
					

				$result[] = $peli->returnArray();
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