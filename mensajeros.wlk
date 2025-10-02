object roberto{
    var pesoPropio = 90

    method cambiarPeso(pesoActual){pesoPropio = pesoActual}

    var vehiculo = bicicleta
    
    method pesoPropio() = pesoPropio

    method cambiarVehiculo(otroVehiculo){vehiculo = otroVehiculo}
    
    method peso() = pesoPropio + vehiculo.peso()
    
    method puedeLlamar(){return false}

}

object bicicleta{
    method peso() = 5
}

object camion {
    var cantidadAcoplados = 1
    
    method acoplados(acopladosActual){cantidadAcoplados = acopladosActual}
    
    method peso() = 500 * cantidadAcoplados
}

object chuck{
    method peso() = 80
    method puedeLlamar(){return true}
}

object neo{
    var tieneCredito = true

    method tieneCredito() = tieneCredito

    method sinCredito(){tieneCredito = false}
    
    method peso() = 0
    
}
object puenteDeBrooklyn{
    method puedePasar(mensajero){return mensajero.peso() <= 1000}
}

object matrix{
    method puedePasar(mensajero){return mensajero.tieneCredito()}
}

object paquete{
    var pago = false
    
    var destino = matrix

    method precio() = 50
    
    method pagar() { pago = true }
    
    method estaPagado() = pago
    
    method puedeSerEntregado(mensajero){return destino.puedePasar(mensajero) && self.estaPagado()}

    method asignarDestino(nuevoDestino){destino = nuevoDestino}
}

object paquetito {
    method precio() = 0
    method estaPagado() = true
    method puedeSerEntregado(mensajero) = true
}

object paquetonViajero {
    var destinos = []

    var pagos = 0
    
    method agregarDestino(unDestino) { destinos.add(unDestino) }
    
    method precio() = destinos.size() * 100
    
    method pagar(cant) {pagos += cant}
    
    method estaPagado() = pagos >= self.precio()
    
    method puedeSerEntregado(mensajero) =
        self.estaPagado() && destinos.all({d => d.puedePasar(mensajero)})

}

object empresa{
    
    var mensajeros = [roberto, chuck, neo]

    method mensajerosActual(){return mensajeros}

    method contratarMensajero(nuevoMensajero){
        mensajeros.add(nuevoMensajero)
    }
    method despedirMensajero(mensajeroDespedido) {
        mensajeros.remove(mensajeroDespedido)
    }
    method despedirATodos(){mensajeros.clear()}
    
    method esGrande() = mensajeros.size() > 2

    method puedeEntregarElPrimerEmpleadoPaquete(){
        mensajeros.first().puedeSerEntregado()
    }

    method pesoDelUltimoMensajero(){return
        mensajeros.last().peso()
    }

}