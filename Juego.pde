class Juego {
  int pantalla, contador;
  int cantBasura = 50;
  int cantMonedas = 15;
  int cantFalsas = 10;
  PImage inicio, ganar;
  PImage moneda, monedaFalsa, clip, papel;

  Elemento [] basura = new Elemento [cantBasura];
  Elemento [] monedas = new Elemento [cantMonedas];
  Falsas [] falsas = new Falsas [cantFalsas];

  Juego () {
    textAlign(CENTER);
    for (int i=0; i < basura.length; i++) {
      for (int j=0; j < monedas.length; j++) {
        basura[i] = new Elemento();
        monedas[j]=new Elemento();
      }
    }
    for (int i=0; i < falsas.length; i++) {
      falsas[i] = new Falsas();
    }
    inicio=loadImage("img0.jpg");
    ganar=loadImage("img2.jpg");
    moneda=loadImage("moneda.png");
    monedaFalsa=loadImage("monedasFalsas.png");
    clip=loadImage("Basura1.png");
    papel=loadImage("Basura2.png");
  }

  void dibujarJuego() {
    for (int i=0; i<basura.length; i++) {
      for (int j=0; j<monedas.length; j++) {
        basura[i].dibujarBasura();
        monedas[j].dibujarMonedas();
      }
    }
    for (int i=0; i<falsas.length; i++) {
      falsas[i].dibujarFalsas();
    }
    println(pantalla);
    textSize(15);
    fill(0);
    text("Monedas  " + contador + "  /50", 330, 20);
    dibujarPantalla();
    tiempo.start();
  }

  void recolectarMonedas() {
    for (int j=0; j<monedas.length; j++) {
      float d = dist (mouseX, mouseY, monedas[j].posXM, monedas[j].posYM);
      if (d<=monedas[j].tamMonedas) {
        monedas[j].recolectar();
        contador+=10;
      }
    }
  }
  void recolectarMonedasFalsas() {
    for (int i=0; i<falsas.length; i++) {
      float d = dist (mouseX, mouseY, falsas[i].posXFalsas, falsas[i].posYFalsas);
      if (d<=falsas[i].tamFalsas && pantalla == 1) {
        fill(255);
        textSize(15);
        text("para qué guardo estas monedas!?", mouseX, mouseY);
        if (mousePressed) {
          contador--;
        }
      }
    }
  }
  void dibujarPantalla() {
    if (pantalla == 0) {
      image(inicio, 0, 0, width, height);
    }
    if (contador >= 50) {
      pantalla = 2;
      image(ganar, -50, 0, 600, height);
      fill(0);
      text("Lo lograste, Bob y Patricio llegan a casa", 200, 30);
    }
    if (pantalla==0) {
      botones( 140, 350, 130, 50);
      fill(225);
      text("iniciar", 200, 380);
    }
    if (tiempo.time<0) {
      pantalla=3;
      image(tiempo.perder, 0, 0, width, height);
      fill(255);     
      text("No recolectaste las monedas a tiempo", 200, 30);
    }
    if (pantalla == 3 || pantalla == 2) {
      dibujarBotones();
      if (mouseX > 50 && mouseX < 50+130 && mouseY > 350 && mouseY < 350+50 ) {
        if (mousePressed);
        tiempo.reinicio();
      }
    }
  }

  int getPantalla () {
    return pantalla;
  }
  void dibujarBotones() {
    fill(0);
    rect(50, 350, 130, 50);
    rect(240, 350, 130, 50);
    fill(255);
    textAlign(CENTER);
    text("Seguir", 300, 380);
    text("Intentarlo\n de nuevo", 110, 370);
  }
  void botones( int x, int y, int tamX, int tamY) {
    if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY) {
      if (mousePressed) {
        tiempo.reinicio();
      }
    } 
    noStroke();
    fill(0);
    rect(x, y, tamX, tamY);
  }
}
