import elementos.*

class Barrio {
  const property elementosDelBarrio = [x,c,f]

  method agregarElementoNuevo(nuevoElemento) = elementosDelBarrio.add(nuevoElemento)
  method elElementoEsBueno(unElemento){
    if (elementosDelBarrio.contains(unElemento)){unElemento.esBuenoParaHumanos()}
  }
  method cantidadElementosBuenos() = elementosDelBarrio.count({e => e.esBuenoParaHumanos()})
  method cantidadElementos() = elementosDelBarrio.count() 
  method esCopado() = 
}
