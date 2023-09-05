object samsung inherits Celular{
	method restarBateriaPorLLamada(_tiempo){/** Para que no tenga bateria negativa  */
		const cantidadARestar = (0.25).min(bateria)
		self.restarBateria(cantidadARestar)
	}
}


const iphoneCat = new Iphone()
const iphoneJuan = new Iphone()
const iphoneHernesto = new Iphone()

class Iphone inherits Celular{
	method restarBateriaPorLLamada(unTiempo){/** Para que no tenga bateria negativa  */
		const cantidadARestar = (unTiempo * 0.1).min(bateria)
		self.restarBateria(cantidadARestar)
	}
}

class Celular{
	var bateria  = 5
	var mensajes = []
	
	method estaApagado(){
		return bateria == 0
	}
	method bateria(){
		return bateria
	}
	method recargar(){
		bateria = 5
	}
	
	method enviarMensaje(unMensaje, unCelular){
		const mensaje = self.crearMensaje(unMensaje)
		unCelular.guardarMensaje(mensaje)
	}
	
	method guardarMensaje(unMensaje){
		mensajes.add(unMensaje)
	}
	
	method recibioMensaje(unMensaje){
		return mensajes.any{mensaje => mensaje.mensaje() == unMensaje}
	}
	
	method cantidadDeMensajesRecibidos(){
		return mensajes.size()
	}
	
	method mensajes(){
		return mensajes.map{unMensaje=> unMensaje.mensaje()} /** En realidad no hace falta mapearlo acá */
	}
	
	method restarBateria(unaCantidad){
		bateria -= unaCantidad
	}
	
	method crearMensaje(texto){
		return object{
			const mensaje = texto
			
			method empiezaCon(posibleComienzo){
				const cantidadDeLetrasDelPosibleComienzo = posibleComienzo.size()
				const comienzoDelMensaje = mensaje.take(cantidadDeLetrasDelPosibleComienzo)
				return comienzoDelMensaje == posibleComienzo
			}
			method mensaje(){
				return mensaje
			}
		}
	}
	
	method recibioMensajeQueEmpiezaCon(posibleComienzo){
		return mensajes.any{unMensaje=> unMensaje.empiezaCon(posibleComienzo)}
	}
	
}