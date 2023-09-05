/** First Wollok example */
import celulares.*
import companias.*

const juliana = new Persona(
	celular = samsung,
	companiaTelefonica = personal
)

const catalina = new Persona(
	celular = iphoneCat,
	companiaTelefonica = movistar
)

const juan = new Persona(
	celular = iphoneJuan,
	companiaTelefonica = personal
)

const hernesto = new Persona(
	celular = iphoneHernesto,
	companiaTelefonica = claro
)

class Persona{
	var property celular
	var property gastoMensual = 0
	var companiaTelefonica 
	
	method tieneCelularApagado(){
		return celular.estaApagado()
	}
	
	method llamar(tiempo){
		celular.restarBateriaPorLLamada(tiempo)
		const costoDeLlamada = self.costoDeLlamada(tiempo)
		self.aumentarGastoMensual(costoDeLlamada)
	}
	
	method costoDeLlamada(unTiempo){
		return companiaTelefonica.costoDeLlamada(unTiempo)
	}
	
	method enviarMensaje(unMensaje, unaPersona){
		const celularDeUnaPersona = unaPersona.celular()
		celular.enviarMensaje(unMensaje, celularDeUnaPersona)
		const costoDeMensaje = companiaTelefonica.costoDeMensaje()
		self.aumentarGastoMensual(costoDeMensaje)
	}
	
	method aumentarGastoMensual(unCosto){
		gastoMensual += unCosto
	}
	
	method recibioMensaje(unMensaje){
		return celular.recibioMensaje(unMensaje)
	}
	
	method cantidadDeMensajesRecibidos(){
		return celular.cantidadDeMensajesRecibidos()
	}
	
	method mensajes(){
		return celular.mensajes()
	}
	
	method recibioMensajeQueEmpiezaCon(posibleComienzo){
		return celular.recibioMensajeQueEmpiezaCon(posibleComienzo)
	}

}

/*object catalina {
	var property celular = iphone
	var property gastoMensual = 0
	var companiaTelefonica = movistar 
	
	method tieneCelularApagado(){
		return celular.estaApagado()
	}
	method llamar(tiempo){
		celular.restarBateriaPorLLamada(tiempo)
		const costoDeLlamada = self.costoDeLlamada(tiempo)
		gastoMensual += costoDeLlamada
	}
	method costoDeLlamada(unTiempo){
		return companiaTelefonica.costoDeLlamada(unTiempo)
	}
}*/

/*object juliana {
	var property celular = samsung
	var property gastoMensual = 0
	var companiaTelefonica = personal 
	
	method tieneCelularApagado(){
		return celular.estaApagado()
	}
	method llamar(tiempo){
		celular.restarBateriaPorLLamada(tiempo)
		const costoDeLlamada = self.costoDeLlamada(tiempo)
		gastoMensual += costoDeLlamada
	}
	method costoDeLlamada(unTiempo){
		return companiaTelefonica.costoDeLlamada(unTiempo)
	}
}*/