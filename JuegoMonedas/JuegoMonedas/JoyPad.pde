class JoyPad{
  //Esto hará que cuando presionemos dos teclas juntas, por ej arriba y a la derecha, se va a mover en diagonal a la derecha
  //Tenemos que lograr que en algún momento sea verdadero y en otro falso para detectar en que momento estamos presionandolas
  private boolean upPressed; 
  private boolean downPressed;
  private boolean rightPressed;
  private boolean leftPressed; 
  
  public boolean isUpPressed(){  //Cuando lo que se retorna es un atributo tipo booleano en lugar de poner get ponemos is.
    return this.upPressed;
  }
  public void setUpPressed(boolean upPressed){
    this.upPressed= upPressed; 
  }
    public boolean isDownPressed(){  //Cuando lo que se retorna es un atributo tipo booleano en lugar de poner get ponemos is.
    return this.downPressed;
  }
  public void setDownPressed(boolean downPressed){
    this.downPressed= downPressed; 
  }
  public boolean isRightPressed(){  //Cuando lo que se retorna es un atributo tipo booleano en lugar de poner get ponemos is.
    return this.rightPressed;
  }
  public void setRightPressed(boolean rightPressed){
    this.rightPressed= rightPressed; 
  }
  public boolean isLeftPressed(){  //Cuando lo que se retorna es un atributo tipo booleano en lugar de poner get ponemos is.
    return this.leftPressed;
  }
  public void setLeftPressed(boolean leftPressed){
    this.leftPressed= leftPressed; 
  }


}
