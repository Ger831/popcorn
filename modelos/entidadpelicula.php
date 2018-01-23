<?php

class Modelopelicula{ 
	private $peli_id;
	private $peli_nombre;
	private $peli_imagen;
	private $peli_descripcion;
	
	public function __GET ($k){
		return $this->$k;
	}
	public function __SET($k,$v){
		$this->$k=$v;
	}
	public function returnArray(){
		return get_object_vars($this);
	}
}

?>