class SpawnerMonedas{
  //La relación de asociación representa una referencia de un objeto sobre otro objeto. En este caso SpawnerMonedas posee una referencia, tiene o gestiona o conoce objetos Moneda, que quiere decir? Tiene un atributo
  //cuyo tipo de dato es de la clase moneda pero por la multiplicidad estamos viendo que tendrá varios elementos entonces vamos a necesitar que sea alguna estructura de datos, en este caso simple, como lo es un arreglo. 
  //Además tenemos información de que ese atributo se llama moneda y que es privado.
  
  private Moneda[] monedas;  //Creamos el atributo monedas que representa una relacion de asociacion con multiplicidad mayor a 1
  
  //Creo un constructor
  public SpawnerMonedas(){
    monedas= new Moneda[4];
    //Cuando un metodo u operacion requiere informacion o requiere que se envie como parametro otro objeto, es decir sin ese objeto no puede realizar su funcionalidad, estamos ante una relacion de dependencia
  } 
  public void generarMonedas(Habitacion habitacion){
    int anchoCeramico=habitacion.getAncho()/GestorConstantes.CANT_CERAMICOS_PISO;
    int diametroMoneda= (int)(anchoCeramico*0.8);
    monedas[0]= new Moneda(new PVector(habitacion.getPosicion().x+(anchoCeramico/2), habitacion.getPosicion().y+(anchoCeramico/2)), diametroMoneda);
    monedas[1]= new Moneda(new PVector(habitacion.getPosicion().x+habitacion.getAncho()-(anchoCeramico/2), habitacion.getPosicion().y+(anchoCeramico/2)), diametroMoneda);
    monedas[2]= new Moneda(new PVector(habitacion.getPosicion().x+(anchoCeramico/2), habitacion.getPosicion().y+habitacion.getAncho()-(anchoCeramico/2)), diametroMoneda);
    monedas[3]= new Moneda(new PVector(habitacion.getPosicion().x+habitacion.getAncho()-(anchoCeramico/2), habitacion.getPosicion().y+habitacion.getAncho()-(anchoCeramico/2)), diametroMoneda);
  }
  
  public void visualizarMonedas(){
    for(Moneda m: monedas ){
      if(m != null){
        m.display();
      }
    }
  }
}
