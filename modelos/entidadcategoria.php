<?php

class Modelocat{
	private $cat_id;
	private $cat_nombre;
	private $cat_imagen;
	private $cat_descripcion;
	
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