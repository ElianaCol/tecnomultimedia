class Juego {
  //CAMPOS
  float te;
  int pantalla;
  int contador;
  int cantBasura = 30;
  int cantMonedas = 15;
  int cantFalsas = 10;
  PImage inicio, ganar;
 // PImage [] moneda = new PImage [cantMonedas];
 PImage moneda, monedaFalsa, clip, papel;
  Elemento [] basura = new Elemento [cantBasura];
  Elemento [] monedas = new Elemento [cantMonedas];
  Falsas [] falsas = new Falsas [cantFalsas];
  //CONSTRUCTOR
  Juego () {
    pantalla = 0;
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
    //perder=loadImage("img1.jpg");
  }

  //METODOS
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
    fill(#02E0F2);
    text("Monedas  " + contador + "  /50", 270, 30);
    dibujarPantalla();

    //////////////////////// TIEMPO /////////////////////////////
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
        text("para qué guardo estas monedas!?", mouseX, mouseY);
        if(mousePressed){
        contador--;
        }
      }
    }
  }
  void dibujarPantalla() {
    if (pantalla == 0) {
      image(inicio, 0, 0, width, height);
      if (keyCode==ENTER) {
        pantalla=1; //pantalla juego
      }
    }
    if (contador >= 50) {
      pantalla = 2; //pantalla ganar
      image(ganar, -50, 0, 600, height);
    }
    if (pantalla==0) {
      botones( 140, 350, 130, 50);
      fill(225);
      text("iniciar", 180, 380);
    }
  }
  void botones( int x, int y, int tamX, int tamY) {
    if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY) {
      if (mousePressed) {
        //tiempo.iniciar();
        pantalla++;
      }
    } 
    noStroke();
    fill(0);
    rect(x, y, tamX, tamY);
  }
}
