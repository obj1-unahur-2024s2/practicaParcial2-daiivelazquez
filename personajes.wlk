

class Personaje {
    const property fuerza
    const property inteligencia
    var rol

    method cambiarRol(unRol){
        rol = unRol
    }
    method rol() = rol
    method fuerza() = fuerza
    method inteligencia() = inteligencia

    method poderOfensivo() = fuerza * 10 + rol.extra()
    method esGroso() = self.esInteligente() or self.esGrosoEnSuRol()

    method esInteligente()
    method esGrosoEnSuRol() = rol.esGroso(self)
}

class Orco inherits Personaje{
    override method poderOfensivo()= super() * 1.1
    override method esInteligente() = false
}

class Humano inherits Personaje{
    override method esInteligente() = inteligencia > 50
}

object guerrero{
    method extra() = 100
    method esGroso(unPersonaje) = unPersonaje.fuerza() > 50 
}

class Cazador{
    const property mascota
    method extra() = mascota.extra()
    method esGroso(unPersonaje) = mascota.esLongeba()
}

object brujo {
    method extra() = 0
    method esGroso(unPersonaje) = true
}

class Mascota {
    const property fuerza
    var edad
    const property tieneGarras


    method edad() = edad
    method aumentarEdad(){edad += 1}
    method extra() = if (tieneGarras) {fuerza * 2} else { fuerza }
    method esLongeba() = edad > 10
}