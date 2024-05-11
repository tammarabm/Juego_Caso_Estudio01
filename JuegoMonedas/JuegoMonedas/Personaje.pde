class Personaje extends GameObject{

  private PVector velocidad; //razon de cambio y posicion
  
  //Operaciones
  
  public void display(){
    fill(255,0,0);
    strokeWeight(5);
    circle(this.posicion.x, this.posicion.y, 40);
  
  }
  /**
  *Mueve el atributo posicion una cantidad indicada por la velocidad
  *direccion Indica la direccion del movimiento(0:arriba, 1:derecha, 2:abajo, 3:izquierda
  */
  public void mover(int direccion){// vamos a moverlo segun la direccion y una cierta cantidad indicada en las componente de velocidad
    switch(direccion){
      case 0: {
        this.posicion.y-=this.velocidad.y;
        break;
      }
      
      case 1:{
        this.posicion.x+=this.velocidad.x;
        break;
      }
      
      case 2: {
        this.posicion.y+=this.velocidad.y; 
        break;
      }
      
      case 3: {
        this.posicion.x-=this.velocidad.x;
        break;
      }
      
    
    }    
    
  
  }
  public void setPosicion (PVector posicion){ 
    this.posicion= posicion;   //this.posicion es igual a la posicion que viene por parametro
    //Estamos aplicando al ocultamiento del atributo la encapsulacion.
  }
  
  public void setVelocidad(PVector velocidad){
    this.velocidad=velocidad;
  }
}
