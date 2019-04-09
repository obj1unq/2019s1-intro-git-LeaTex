import objetos.*
import personas.*
import masObjetos.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		return objetoEnMostrador.material().brilla() and objetoEnVidriera.material().brilla()
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	
	method puedeMejorar() {
		return self.esMonocromatico() or self.estaDesequilibrado()
	}
	
	method tieneAlgoDeColor(color) {
		return (objetoEnMostrador.color() == color) or (objetoEnVidriera.color() == color) 
	}

	method puedeOfrecerleAlgoA(persona) {
		return persona.leGusta(objetoEnMostrador) or persona.leGusta(objetoEnVidriera)
	}
}