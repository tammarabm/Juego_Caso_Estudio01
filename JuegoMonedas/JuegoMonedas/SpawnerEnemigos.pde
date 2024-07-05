abstract class SpawnerEnemigos{
  //No puedo instanciar una clase abstracta pero si puedo crear el objeto a partir de la subclase, es decir, estoy usando el constructor de la subclase. Este cambio es consecuencia de la herencia
  protected Enemigo[] enemigos;
  
  public SpawnerEnemigos(){
  }
  public SpawnerEnemigos(int cantEnemigos){
    enemigos= new Enemigo[cantEnemigos];
  }
  
  public abstract void generarEnemigos(Habitacion habitacion);
  
  public void visualizarEnemigos(){  //lo heredan el spawnerhorizontal y vertical
    for (Enemigo e:enemigos){
      if (e!= null){
        e.display();
      }
    }
  }
  
  public abstract void moverEnemigos (Habitacion habitacion);
}
