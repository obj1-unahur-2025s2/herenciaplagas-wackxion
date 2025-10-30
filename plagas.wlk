class Plagas {
  var cantidadDeBIchos

  method plagaAtacaElemento(elemento) { 
    elemento.recibirAtaque(self)
    self.cambioPorAtaqueEfectuado() }
  method cantidadDeBIchos() = cantidadDeBIchos
  method nivelDeDaño()
  method transmiteEnfermedades() = cantidadDeBIchos > 10
  method cambioPorAtaqueEfectuado() {cantidadDeBIchos = cantidadDeBIchos * 01 }
}

class Cucarachas inherits Plagas {
  var pesoPromedio

  method pesoPromedio() = pesoPromedio
  override method nivelDeDaño() = self.cantidadDeBIchos() / 2 
  override method transmiteEnfermedades() = super() and (self.pesoPromedio() >= 10)
  override method cambioPorAtaqueEfectuado() {
    super() 
    pesoPromedio = pesoPromedio + 2}
} 

class Pulgas inherits Plagas {
  override method nivelDeDaño() = self.cantidadDeBIchos() * 2
}

class Garrapatas inherits Pulgas {
  override method cambioPorAtaqueEfectuado() { super() * 2 }
}

class Mosquitos inherits Plagas {
  override method nivelDeDaño() = self.cantidadDeBIchos()
  override method transmiteEnfermedades() = self.cantidadDeBIchos() % 3 == 0
}