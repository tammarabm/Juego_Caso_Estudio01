abstract class GameObject{
  protected PVector posicion;

  /**
  Clase abstracta(concepto dentro de la herencia): es una clase que no se puede instanciar
  Una clase es abstracta cuadno indica que no vamos a generar objetos de esa clase porque nuestro desarrollo se va a centrar en la instaciacion o creacion de sus subclases.
  Es decir el nivel de abstracción es muy alto, por lo tanto yo no voy a crear objetos de la clase GameObject sino que en realidad voy a crear
  subclases de GameObject, por ej: Enemigo, Personaje y Moneda.
  Cuando se da esta situación, que una clase es muy abstracta, como consecuencia natural nosotros no vamos a crear objetos de esa clase, simplemente la vamos a utilizar para
  definir los atributos y metodos que queremos que hereden las subclases.
  Además lo podemos utilizar para definir metodos abtractos pero es un concepto qe vamos a ver más adelante.
  
  GameObject es la superclase importante de todos los objetos que tienen una posicion dentro de un videojuego pero no voy a crear instancias de gameobject sino que voy a crear 
  instancias de las subclases de GameObject, entonces por ese motivo nosotros la definimos como abstracta.
  
  */
  public GameObject (){
  }
  public GameObject (PVector posicion){
    this.posicion=posicion;
  }
  //Clase abstracta(concepto dentro de la herencia): que no se puede instanciar.
  //Una clase es abstracta cuando indica que no vamos a generar objetos de esa clase porque nuestro desarrollo se va a centrar
  //en la instanciacion o creación de sus subclases. Es decir, el nivel de abstraccion es muy alto, por lo tanto yo no voy a crear objetos de la clase 
  //GameObject sino que en realidad voy a crear subclases de GameObject, por ej:enemigo,Personaje y Moneda.
  //Cuando se da esta situación de que una clase es muy abstracta como consecuencia natural no vamos a crear objetos de esa clase, simplemente lo
  //vamos a utilizar para definir los atributos y metodos que queremos que hereden las subclases y ademas los podemos utilizar
  //para definir lo que se llaman metodos abstractos pero que es un concepto que veremos más adelante.
  //No voy a crear instancias de gameobject sino que voy a crear instancias de kas subclases de gameobject, entonces por ese motivo lo definimos como abstracta
}
