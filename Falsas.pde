class Falsas {
  float posXFalsas, posYFalsas;
  float tamFalsas;
  color cC;
  boolean pinchado;

  Falsas() {
    posXFalsas=random(30, width-50);
    posYFalsas=random(30, width-50);
    tamFalsas = random(10,30);
    cC = color(#AAA7A7);
  }

  void dibujarFalsas() {
    image(juego.monedaFalsa,posXFalsas, posYFalsas,tamFalsas, tamFalsas);
  }
  
}
