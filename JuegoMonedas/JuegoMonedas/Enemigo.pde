//Para indicar que una clase hereda de otra clase (clase enemigo hereda de gameobject)se utiliza la palabra "extends" y despues indicamos cual es la clase de la cual está heredado

class Enemigo extends GameObject{  //De esta manera ahora enemigo tiene un atributo que es la posicion
  private PVector velocidad;
  private int diametro;
  
  public Enemigo(){
  }
  public Enemigo(PVector posicion){
    super(posicion);   //Reuso del constructor de la superclase. Basicamente lo que estoy haciendo es cuando utilice este constructor del enemigo donde le paso su posicion para
    //establecer su valor inicial, esta palabra reservada "super" va a invocar el constructor de la superclase que recibe el parámetro y va a hacer que this.posicion=posicion.
    //Esto es para mostrar un ejemplo de reuso o invocación del constructor de una superclase
  }  
  public Enemigo(PVector posicion, PVector velocidad){
    super(posicion); 
    this.velocidad=velocidad;
  }
  public Enemigo(PVector posicion, PVector velocidad, int diametro){
    super(posicion); 
    this.velocidad=velocidad;
    this.diametro=diametro;
  }
  public void display(){
    fill(#2256ED);
    strokeWeight(5);
    circle(this.posicion.x, this.posicion.y, this.diametro);
  
  }
  
  /**
  Permite mover el enemigo de manera vertical u horizontal
  direccion=0 movimiento vertical, direccion=1 movimiento horizontal
  */
  
  public void mover(int direccion, Habitacion habitacion){
    switch(direccion){
      case 0: {
        cambiarSentidoVelocidad(direccion, habitacion);   //Veremos si necesitamos hacer el cambio de sentido antes
        this.posicion.y+=this.velocidad.y; //Verticalmente eje y
        break;
      }
      
      case 1:{
        this.posicion.x+= this.velocidad.x; //Horizontalmente eje x
        break;
      }
  
    }
  }
  
  private void cambiarSentidoVelocidad(int direccion, Habitacion habitacion){    //Esto es una dependencia. El enemigo está teniendo una relación de dependencia con la habitación
    switch(direccion){
      case 0:{
        if (this.posicion.y - this.diametro/2 < habitacion.getPosicion().y){  //Si la posicion de mi enemigo es menor que la posicion de la habitacion en y
          this.velocidad.y*=(-1);   //cambiamos el sentido en y de la velocidad
          break;
        }
        
        if (this.posicion.y+ this.diametro/2>habitacion.getPosicion().y+habitacion.getAlto()){
          this.velocidad.y*=(-1);   //cambiamos el sentido en y de la velocidad
          break;
                    
        }
      }
    }
  }
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  
  
  
  
  
}
