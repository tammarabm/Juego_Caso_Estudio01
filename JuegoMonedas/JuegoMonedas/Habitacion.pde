class Habitacion{
  private int ancho;
  private int alto;
  private int tipoHab;
  private PVector posicion; 
  
  public Habitacion(int ancho, int alto, int tipoHab, PVector posicion){
    this.ancho=ancho;
    this.alto=alto;
    this.tipoHab=tipoHab;
    this.posicion= posicion;
  }
  
  public void dibujarPiso(){
    
    switch(tipoHab){
 
      case GestorConstantes.HABITACION_PRINCIPAL:{
      noStroke();
      fill(255);
      square(this.posicion.x, this.posicion.y, ancho); //piso blanco
      int anchoCeramico= this.ancho/GestorConstantes.CANT_CERAMICOS_PISO;
      PVector posCeramico= new PVector(this.posicion.x, this.posicion.y);
      fill(#0CEADA);
      for(int f=1; f<=GestorConstantes.CANT_CERAMICOS_PISO; f++){
        if(f%2!=0){
          posCeramico.x=this.posicion.x;       
        }else{
          posCeramico.x=this.posicion.x+anchoCeramico;
        }
        
        for (int c=1; c<=4;c++){
          square(posCeramico.x, posCeramico.y, anchoCeramico);
          posCeramico.x += (2*anchoCeramico);
          
        }
        posCeramico.y+=anchoCeramico;
      }
      break;
  }
    case GestorConstantes.HABITACION_CONTIGUA:{
      noStroke();
    fill(#E0FF98);
    rect(this.posicion.x, this.posicion.y, this.ancho, this.alto);
    break;
  }
}
}
  
  public PVector getPosicion(){
    return this.posicion;
  }
  
  public int getAncho(){
    return this.ancho;
  }
  
  public int getAlto(){
    return this.alto;
  }
}
