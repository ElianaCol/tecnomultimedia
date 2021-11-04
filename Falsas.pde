class Falsas {
  //CAMPOS
  float posXFalsas, posYFalsas;
  float tamFalsas;
  color cC;
  boolean pinchado;

  //CONSTRUCTOR
  Falsas() {
    posXFalsas=random(30, width-50);
    posYFalsas=random(30, width-50);
    tamFalsas = random(10,30);
    cC = color(#AAA7A7);
  }

  //METODOS
  void dibujarFalsas() {
    //fill(cC);
    image(juego.monedaFalsa,posXFalsas, posYFalsas,tamFalsas, tamFalsas);
    //circle(posXFalsas, posYFalsas, tamFalsas);
  }
  
}
