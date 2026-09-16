object derek {
    var aura = 0
    method farmearAura(unDesafio) {
        aura = (aura + 100).min(1000)
    }
    method aura() = aura
}

object matilda {
    var aura = 0
    method farmearAura(unDesafio) {
        if(unDesafio.esEpico(self)) {
            aura = (aura + 200).min(1000)
        } else if(unDesafio.espectadores() < 50) {
            aura = (aura - 50).max(0)
        }
    }
    method aura() = aura
}


object jacobim {
    var aura = 0
    method farmearAura(unDesafio) {
        aura = (aura + 3 * unDesafio.espectadores() + aura * 0.1).min(1000)
    }
    method aura() = aura
}