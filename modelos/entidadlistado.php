<?php

class Modelolispelis{
	private $lispelis_id;
	private $lispelis_titulo;
	private $lispelis_subtitulo;
	private $lispelis_descripcion;
	private $lispelis_imagen;
	
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