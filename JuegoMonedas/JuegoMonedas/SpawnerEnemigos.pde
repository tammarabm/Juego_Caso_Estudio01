class SpawnerEnemigos{
  private Enemigo[] enemigos;
  public SpawnerEnemigos(int cantEnemigos){
    enemigos= new Enemigo[cantEnemigos];
    
  }
  
  public void generarEnemigos(Habitacion habitacion){
    int diametroEnemigo= habitacion.getAncho()/GestorConstantes.CANT_CERAMICOS_PISO;
    enemigos[0] = new Enemigo(new PVector(habitacion.getPosicion().x+diametroEnemigo/2, habitacion.getPosicion().y+diametroEnemigo/2), new PVector(5,5), diametroEnemigo);
  
  }
  
  public void visualizarEnemigos(){
    for (Enemigo e:enemigos){
      if (e!= null){
        e.display();
      }
    }
  }
}
