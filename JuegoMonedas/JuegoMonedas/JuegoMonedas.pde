private Personaje personaje;
private JoyPad joyPad;
//private Moneda moneda;
private Habitacion habitacion; 
private SpawnerMonedas spawnerMonedas;
//private Enemigo enemigo;
private SpawnerEnemigos spawnerEnemigos;
private SpawnerEnemigos spawnerEnemigos1;

public void setup(){
  size (600,600);
  habitacion=new Habitacion(400, 400, 0, new PVector(100,100));
  spawnerMonedas= new SpawnerMonedas();
  spawnerMonedas.generarMonedas(habitacion);
  personaje= new Personaje(); //Creo un objeto de este tipo
  personaje.setPosicion(new PVector(100,200));                  //Asigno la posicion
  personaje.setVelocidad(new PVector(5,5));
  joyPad = new JoyPad();
  //enemigo= new Enemigo (new PVector(width/2, height/2), new PVector(2,2));   //Asigno posición al enemigo y velocidad
  //Le mando 5 enemigos verticales//
  spawnerEnemigos= new SpawnerEnemigosVerticales(5);
  spawnerEnemigos.generarEnemigos(habitacion);
  
  //Le mando 3 enemigos horizontales//
  spawnerEnemigos1= new SpawnerEnemigosHorizontales(3);
  spawnerEnemigos1.generarEnemigos(habitacion);
  //GameObject go = new GameObject();   Sale error porque NO se puede instanciar una clase abstracta 
  //Clase abstracta(concepto dentro de la herencia): que no se puede instanciar
  
  //GameObject go= new GameObject();   da un error porque no se puede instanciar
  
  //moneda=new Moneda(new PVector(100,100));  //Posicion de la moneda
}

public void draw(){
  background(#5A5858);
  habitacion.dibujarPiso();
  spawnerMonedas.visualizarMonedas();
  spawnerEnemigos.visualizarEnemigos();
  spawnerEnemigos.moverEnemigos(habitacion);
  
  spawnerEnemigos1.visualizarEnemigos();
  spawnerEnemigos1.moverEnemigos(habitacion);
  personaje.display();
  //moneda.display();
  //¿Que sucede cuando tenemos un valor en el joypad?
  if(joyPad.isUpPressed()){
    personaje.mover(0);
  }
  
  if(joyPad.isRightPressed()){
    personaje.mover(1);
  }
  
  if(joyPad.isDownPressed()){
    personaje.mover(2);
  }
  
  if(joyPad.isLeftPressed()){
    personaje.mover(3);
  }
  
}

public void keyPressed(){
    if (key== 'w' || keyCode==UP){
      joyPad.setUpPressed(true);
  }
    if (key== 's' || keyCode==DOWN){
      joyPad.setDownPressed(true);
      
  }
    if (key== 'd' || keyCode==RIGHT){
      joyPad.setRightPressed(true);
  }
    if (key== 'a' || keyCode==LEFT){
      joyPad.setLeftPressed(true);
  }
}

public void keyReleased(){
    if (key== 'w' || keyCode==UP){
      joyPad.setUpPressed(false);
  }
    if (key== 's' || keyCode==DOWN){
      joyPad.setDownPressed(false);
      
  }
    if (key== 'd' || keyCode==RIGHT){
      joyPad.setRightPressed(false);
  }
    if (key== 'a' || keyCode==LEFT){
      joyPad.setLeftPressed(false);
  }
}
