class SpawnerEnemigos{
  private Enemigo[] enemigos;
  public SpawnerEnemigos(int cantEnemigos){
    enemigos= new Enemigo[cantEnemigos];
    
  }
  
  public void generarEnemigos(Habitacion habitacion){
    int diametroEnemigo= habitacion.getAncho()/GestorConstantes.CANT_CERAMICOS_PISO;
    enemigos[0] = new Enemigo(new PVector(habitacion.getPosicion().x+diametroEnemigo/2, habitacion.getPosicion().y+diametroEnemigo/2), new PVector(5,5), diametroEnemigo);
    enemigos[enemigos.length-1] = new Enemigo(new PVector(habitacion.getPosicion().x+habitacion.getAncho()-diametroEnemigo/2, habitacion.getPosicion().y+diametroEnemigo/2), new PVector(5,5), diametroEnemigo);
    
    float distanciaEntreEnmigosExtremos= enemigos[enemigos.length-1].getPosicion().x-enemigos[0].getPosicion().x;
    float distanciaEntreEnemigosConsecutivos= distanciaEntreEnmigosExtremos/(enemigos.length-1);
    
    for (int i=1;i<enemigos.length-1;i++){
    enemigos[i] = new Enemigo(new PVector(enemigos[i-1].getPosicion().x+distanciaEntreEnemigosConsecutivos, habitacion.getPosicion().y+diametroEnemigo/2), new PVector(5,5), diametroEnemigo);
  }}
  
  public void visualizarEnemigos(){
    for (Enemigo e:enemigos){
      if (e!= null){
        e.display();
      }
    }
  }
  
  public void moverEnemigos (int direccion,Habitacion habitacion){
    for (Enemigo e: enemigos){
      if (e!=null){
        e.mover(direccion, habitacion);
      }
    }
  }
}
