import elementos.*

class Barrios {
  const property elementosDelBarrio = []

  method agregarElementoNuevo(nuevoElemento) = elementosDelBarrio.add(nuevoElemento)
  method elElementoEsBueno(unElemento){
    if (elementosDelBarrio.contains(unElemento)){unElemento.esBuenoParaHumanos()}
  }
  
}
