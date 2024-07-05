class SpawnerEnemigosHorizontales extends SpawnerEnemigos{
  public SpawnerEnemigosHorizontales(){
  }
  public SpawnerEnemigosHorizontales(int cantEnemigos){ //le paso la cantidad de enemigos
    super(cantEnemigos); //la cantidad de enemigos se lo envio al constructor de la superclase
  }
  
  public void generarEnemigos(Habitacion habitacion){
  
  }
  
  public void moverEnemigos(Habitacion habitacion){
    for (Enemigo e: enemigos){
      if (e!=null){
        e.mover(1, habitacion);  //0 es direccion horizontal
      }
    }
  }
  
}
