class Falsas {
  float posXFalsas, posYFalsas;
  float tamFalsas;

  Falsas() {
    posXFalsas=random(30, width-50);
    posYFalsas=random(30, width-50);
    tamFalsas = random(10,30);
  }

  void dibujarFalsas() {
    image(juego.monedaFalsa,posXFalsas, posYFalsas,tamFalsas, tamFalsas);
  }  
}
