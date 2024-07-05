class HabitacionContigua extends Habitacion{
  
  public HabitacionContigua(int ancho, int alto, PVector posicion){
    super(ancho,alto,posicion);
  }
  public void dibujarPiso(){
    noStroke();
    fill(#E0FF98);
    rect(this.posicion.x, this.posicion.y, this.ancho, this.alto);
  }

}
