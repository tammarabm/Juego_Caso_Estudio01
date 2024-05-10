class Moneda{
  private PVector posicion;
  private int diametro;
  public Moneda(){
  }
  
  public Moneda(PVector posicion){  //Constructor parametrizado porque quiero establecer al momento de crear una moneda quiero establecer su posicion
    this.posicion=posicion;
  }
  //Creo otro constructor en el cual le vamos a pasar ambos datos: posicion y diametro
  
  public Moneda (PVector posicion, int diametro){
    this.posicion=posicion;
    this.diametro=diametro;
  }
  
  public void display(){
    fill(#F7F707);
    circle(this.posicion.x, this.posicion.y, this.diametro);
  }
}
