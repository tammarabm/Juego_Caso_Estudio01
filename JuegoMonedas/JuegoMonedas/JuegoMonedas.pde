private Personaje personaje;
private JoyPad joyPad;
//private Moneda moneda;
private Habitacion[]habitaciones;
private SpawnerMonedas spawnerMonedas;
//private Enemigo enemigo;

//polimorfismo mover()
private SpawnerEnemigos[] spawnerEnemigos;

public void setup(){
  size (740 ,500);
  habitaciones= new Habitacion[3];
  habitaciones[0]=new HabitacionPrincipal(400, 400, new PVector(134,50));
  habitaciones[1]=new HabitacionContigua(134,250, new PVector(0,125));
  habitaciones[2]=new HabitacionContigua(200,200, new PVector(534,150));
  spawnerMonedas= new SpawnerMonedas();
  spawnerMonedas.generarMonedas(habitaciones[0]);
  personaje= new Personaje(); //Creo un objeto de este tipo
  personaje.setPosicion(new PVector(100,200));                  //Asigno la posicion
  personaje.setVelocidad(new PVector(5,5));
  joyPad = new JoyPad();
  generarEnemigos();
  //enemigo= new Enemigo (new PVector(width/2, height/2), new PVector(2,2));   //Asigno posición al enemigo y velocidad
  //GameObject go = new GameObject();   Sale error porque NO se puede instanciar una clase abstracta 
  //Clase abstracta(concepto dentro de la herencia): que no se puede instanciar
  
  //GameObject go= new GameObject();   da un error porque no se puede instanciar
  
  //moneda=new Moneda(new PVector(100,100));  //Posicion de la moneda
}

public void draw(){
  background(#5A5858);
  dibujarHabitaciones();
  spawnerMonedas.visualizarMonedas();
  visualizarEnemigos();
  moverEnemigos();//p
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

public void dibujarHabitaciones(){
  for (Habitacion h: habitaciones){
    h.dibujarPiso(); //polimorfismo
  }
}
public void visualizarEnemigos(){
  for (SpawnerEnemigos spe: spawnerEnemigos){
    spe.visualizarEnemigos();
  }
}
public void moverEnemigos(){
  for (SpawnerEnemigos spe: spawnerEnemigos){
    spe.moverEnemigos(habitaciones[0]);
  }
}

public void generarEnemigos(){
  spawnerEnemigos= new SpawnerEnemigos[2];

  //Le mando 5 enemigos verticales//
  spawnerEnemigos[0]= new SpawnerEnemigosVerticales(4);
  
  //Le mando 3 enemigos horizontales//
  spawnerEnemigos[1]= new SpawnerEnemigosHorizontales(4);

  for (SpawnerEnemigos spe: spawnerEnemigos){
    spe.generarEnemigos(habitaciones[0]);//p
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
