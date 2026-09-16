import participantes.*

object miradaAlInfinito {
    method espectadores() = 20
    method esEpico(unParticipante) = false
}

object caminarBajoLaLluvia {
    method espectadores() = 100
    method esEpico(unParticipante) = true
}

object entradaTriunfal {
    var espectadores = 50
    method cambiarEspectadores(nuevoValor) {
        espectadores = nuevoValor
    }
    method espectadores() = espectadores
    method esEpico(unParticipante) = swag.esEpico(unParticipante)
}


object swag {
    var minimoDeAura = 200
    method esEpico(unParticipante) {
        return minimoDeAura < unParticipante.aura()
    }
    method cambiarMinimoDeAura(nuevoValor) {
        minimoDeAura = nuevoValor
    }
}