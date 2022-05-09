object knightRider {
	method peso(){
		return 500
	}
	
	method nivelPeligrosidad(){
		return 10
	}
}

object bumblebee {
	var transformado = false
	
	method estaTransformado(){
		return transformado
	}
	
	method transformar(){
		transformado = true
	}
	
	method destransformar(){
		transformado = false
	}
	
	method peso(){
		return 800
	}
	
	method nivelPeligrosidad(){
		return if(transformado){30}else{15}
	}
}

object paqueteLadrillos{
	const unidad = 2
	var cantidad = 0
	
	method asignarCantidad(cantidadAsignada){
		cantidad = cantidadAsignada
	}
	
	method cantidadDeLadrillos(){
		return cantidad
	}
	
	method peso(){
		return cantidad * unidad
	}
	
	method nivelPeligrosidad(){
		return 2
	}
}


object arena {
	var peso = 0
	
	method asignarPeso(pesoAsignado){
		peso = pesoAsignado
	}
	
	method peso(){
		return peso
	}
	
	method nivelPeligrosidad(){
		return 1
	}
}

object bateriaAntiarea {
	var tieneMisiles = true
	
	method cambiarEstadoDeMisiles(){
		tieneMisiles = !tieneMisiles
	}
	
	method tieneMisiles(){
		return tieneMisiles
	}
	
	method peso(){
		return if(tieneMisiles){300}else{200}
	}
	method nivelPeligrosidad(){
		return if(tieneMisiles){100}else{0}
	}
}

object contenedor {
	const cosasDentro = []
	
	method agregarCosa(cosa){
		cosasDentro.add(cosa)
	}
	
	method sacarCosa(cosa){
		cosasDentro.remove(cosa)
	}
	
	method peso(){
		return cosasDentro.sum({cosa => cosa.peso()}) + 100 
	}
	
	method objetoDentroConMayorPeligrosidad(){
		return cosasDentro.max({cosa => cosa.nivelPeligrosidad()})
	}
	
	method nivelPeligrosidad(){
		return if(cosasDentro.isEmpty()){0}else{self.objetoDentroConMayorPeligrosidad()}
	}
}

object residuosRadioactivos {
	var peso
	
	method asignarPeso(pesoAsignado){
		peso = pesoAsignado
	}
	
	method peso(){
		return peso
	}
	
	method nivelPeligrosidad(){
		return 200
	}
}

object embalajeSeguridad {
	var cosaEnvolvida
	
	method envolverCosa(cosa){
		cosaEnvolvida = cosa
	}
	
	method cosaEnvolvida(){
		return cosaEnvolvida
	}
	
	method peso(){
		return cosaEnvolvida.peso()
	}
	
	method nivelPeligrosidad(){
		return cosaEnvolvida.nivelPeligrosidad() / 2
	}
}




