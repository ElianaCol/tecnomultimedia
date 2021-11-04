class Elemento {
  //CAMPOS
  float posXB, posYB;
  float posXM, posYM;
  float tamBasura, tamMonedas;
  color cB, cM;
  boolean recolectada;
  //CONSTRUCTOR
  Elemento () {
    ellipseMode(RADIUS);
    posXB=random(30, width-50);
    posYB=random(30, width-50);
    posXM=random(30, width-50);
    posYM=random(30, width-50);
    tamBasura = 40;
    tamMonedas = random(20,40);
    cB = color (255);
    cM = color (#D1B130);
    recolectada = false;
  }

  //METODOS
  void dibujarBasura() {
    image(juego.clip,posXB, posYB,tamBasura, tamBasura);
    image(juego.papel,posXB, posYB,tamBasura, tamBasura);
    //fill(255);
    //square(posXB, posYB, tamBasura);
  }
  void dibujarMonedas() {
    if (!recolectada) {
      fill(cM);
      image(juego.moneda,posXM, posYM,tamMonedas, tamMonedas);
     // circle(posXM, posYM, tamMonedas);
    } else {
      posXM = width+10;
      posYM = width+10;
    }
  }

  void recolectar() {
    recolectada = true;
  }
}
