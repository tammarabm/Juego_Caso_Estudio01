class SpawnerEnemigosHorizontales extends SpawnerEnemigos{
  public SpawnerEnemigosHorizontales(){
  }
  public SpawnerEnemigosHorizontales(int cantEnemigos){ //le paso la cantidad de enemigos
    super(cantEnemigos); //la cantidad de enemigos se lo envio al constructor de la superclase
  }
  
  public void generarEnemigos(Habitacion habitacion){
    int diametroEnemigo= habitacion.getAncho()/GestorConstantes.CANT_CERAMICOS_PISO;
    enemigos[0] = new Enemigo(new PVector(habitacion.getPosicion().x+diametroEnemigo/2, habitacion.getPosicion().y+diametroEnemigo/2), new PVector(5,5), diametroEnemigo);
    enemigos[enemigos.length-1] = new Enemigo(new PVector(habitacion.getPosicion().x+diametroEnemigo/2, habitacion.getPosicion().y+habitacion.getAlto()-diametroEnemigo/2), new PVector(5,5), diametroEnemigo);
    
    float distanciaEntreEnemigosExtremos= enemigos[enemigos.length-1].getPosicion().y-enemigos[0].getPosicion().y;
    float distanciaEntreEnemigosConsecutivos= distanciaEntreEnemigosExtremos/(enemigos.length-1);
    
    for (int i=1;i<enemigos.length-1;i++){
    enemigos[i] = new Enemigo(new PVector(enemigos[i-1].getPosicion().x,enemigos[i-1].getPosicion().y +distanciaEntreEnemigosConsecutivos), new PVector(5,5), diametroEnemigo);
   }
  
  }
  
  public void moverEnemigos(Habitacion habitacion){
    for (Enemigo e: enemigos){
      if (e!=null){
        e.mover(1, habitacion);  //1 es direccion horizontal
      }
    }
  }
  
}
