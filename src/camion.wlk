import cosas.*

object camion {
	
	const cosas = []
	
	method cargar(cosa){
		cosas.add(cosa)
	}
	
	method descargar(cosa){
		cosas.remove(cosa)
	}
	
	method todoPesoPar(){
		return cosas.all({cosa => cosa.peso().even()})
	}
	
	method hayAlgunoQuePesa(peso){
		return cosas.any({cosa => cosa.peso() == peso})
	}
	
	method elDeNivel(nivel){
		return cosas.find({cosa => cosa.nivelPeligrosidad() == nivel})
	}
	
	method pesoTotal(){
		return cosas.sum({cosa => cosa.peso()}) + self.pesoCamionVacio()
	}
	
	method pesoCamionVacio(){
		return 1000
	}
	
	method excedidoDePeso(){
		return self.pesoTotal() > 2500
	}
	
	method objetosQueSuperanPeligrosidad(nivel){
		return cosas.filter({cosa => cosa.nivelPeligrosidad() >= nivel})
	}
	
	method objetosMasPeligrososQue(cosa){
		return self.objetosQueSuperanPeligrosidad(cosa.nivelPeligrosidad())
	}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return !self.excedidoDePeso() and self.objetosQueSuperanPeligrosidad(nivelMaximoPeligrosidad).isEmpty()
	}
	
	method tieneAlgoQuePesaEntre(min,max){
		return cosas.any({cosa => cosa.peso().between(min,max)})
	}
	
	method cosaMasPesada(){
		return cosas.max({cosa => cosa.peso()})
	}
	
	method pesos(){
		return cosas.map({cosa => cosa.peso()})
	}
}
