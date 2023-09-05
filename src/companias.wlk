object movistar {
	method costoDeLlamada(unTiempo){
		return unTiempo * 60
	}
	method costoDeMensaje(){
		return 0.12
	}
}


object personal {
	method costoDeLlamada(unTiempo){
		const tiempoRestante = unTiempo - 10
		return 10.min(unTiempo) * 70 + 0.max(tiempoRestante) * 40
	}
	method costoDeMensaje(){
		return 0.15
	}
}

object claro{
	const impuestos = afip
	method costoDeLlamada(_unTiempo){
		return 0.50 + self.costoIva()*0.21
	}
	
	method costoIva(){
		return impuestos.costoIva()
	}
	
	method costoDeMensaje(){
		return 0.12
	}
}

object afip{
	method costoIva(){
		return 500
	}
}
