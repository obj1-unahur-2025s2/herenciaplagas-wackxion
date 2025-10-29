class Elementos{
  method esBuenoParaHumanos()
}

class Hogar inherits Elementos {
  const nivelDeMugre
  const nivelDeConfort

  method nivelDeConfort() = nivelDeConfort
  method nivelDeMugre() = nivelDeMugre
  override method esBuenoParaHumanos() = self.nivelDeMugre() <= (self.nivelDeConfort() / 2)
}

class Huerta inherits Elementos {
  
  const capacidadProduccion
  var unNivel = 0 

  method unNivel() = unNivel
  method cambiarNivel(otroNivel){unNivel = otroNivel} 
  method capacidadProduccion() = capacidadProduccion
  override method esBuenoParaHumanos() = capacidadProduccion > unNivel
}

class Mascota inherits Elementos {
  const nivelDeSalud 
  method nivelDeSalud() = nivelDeSalud
  override method esBuenoParaHumanos() = nivelDeSalud > 250
}
