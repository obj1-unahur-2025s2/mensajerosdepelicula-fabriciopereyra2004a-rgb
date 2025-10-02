import mensajeros.*

object empresa{
    var mensajeros = [roberto, chuck, neo]
    
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

    method pesoDelUltimoMensajero(){
        mensajeros.last().peso()
    }

}

/*

Ahora aparece una empresa de mensajería. Esta tiene un conjunto de mensajeros, los cuales podrían ser Roberto, Chuck y Neo. 

Se necesita poder:

1. Contratar a un mensajero
2. Despedir a un mensajero
3. Despedir a todos los mensajeros
4. Analizar si la mensajeria es grande (si tiene mas de dos mensajeros)
5. Consultar si el paquete puede ser entregado por el primer empleado de la la empresa de mensajería. 
6. Saber el peso del último mensajero de la empresa. 
7. Hacer al menos un test por cada punto de los anteriores que demuestren su correcto funcionamiento.


*/