private Personaje personaje;
private JoyPad joyPad;
private Moneda moneda;

public void setup(){
  size (600,600);
  personaje= new Personaje(); //Creo un objeto de este tipo
  personaje.setPosicion(new PVector(100,200));                  //Asigno la posicion
  personaje.setVelocidad(new PVector(5,5));
  joyPad = new JoyPad();
  moneda=new Moneda(new PVector(100,100));  //Posicion de la moneda
}

public void draw(){
  background(#5A5858);
  personaje.display();
  moneda.display();
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
