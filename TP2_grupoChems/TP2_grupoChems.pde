//TP2, tecnología multimedial 2 (2022) , Comisión Lisandro, grupo Cheems
//Eliana Iguain Iafrate ~ Guido Soule ~ Carla Abril Castellanos ~ Rocio Jauregui

import fisica.*;
FWorld mundo;

//SONIDO/////////////////////
import ddf.minim.*;

Minim minim;
AudioPlayer musicaPrevia, musicaJuego, musicaGanar, musicaPerder;
int tiempoParaLoop1, tiempoParaLoop2, tiempoParaLoopGanar, tiempoParaLoopPerder;
/////////////////////////////


Red r;

Personaje chem1, chem2, chem3;

ArrayList <Plataforma> plataformas;
FMouseJoint anclaje;

PImage Cheemsimg, red, fondo, nube, imagenPantalla1, imagenPantalla2, imagenPantalla3, imagenPantallaGanar, imagenPantallaPerder;

String pantalla;

int tiempoParaCaida;

//contador
//String cartel;
int contador;

void setup() {

  size(800, 650);
  pantalla = "pantalla1";

  imagenPantalla1 = loadImage("pantalla1.jpg");
  imagenPantalla2 = loadImage("pantalla2.jpg");
  imagenPantalla3 = loadImage("pantalla3.jpg");
  imagenPantallaGanar = loadImage("pantallaGanar.jpg");
  imagenPantallaPerder = loadImage("pantallaPerder.jpg");
  fondo = loadImage("fondo.jpg");

  Fisica.init(this);
  mundo= new FWorld();
  mundo.setEdges();
  ///////////////////////////////////////////////SONIDO
  minim = new Minim(this);
  musicaJuego = minim.loadFile("sonido juego.mp3");
  musicaPrevia = minim.loadFile("sonido intermedio.mp3");
  musicaGanar = minim.loadFile("sonido ganar.mp3");
  musicaPerder = minim.loadFile("sonido perder.mp3");
  tiempoParaLoop1=0;
  tiempoParaLoop2=0;
  tiempoParaLoopGanar=0;
  tiempoParaLoopPerder=0;
  contador=0;


  ////////////////////////////////////////////CHEEMSITOS QUE CAEN
  //________________________________
  chem1 = new Personaje (40, 80);
  chem1.inicializar(random(50, width-50), -30);
  chem1.setName("chem1");
  mundo.add(chem1);

  chem2 = new Personaje (40, 80);
  chem2.inicializar(random(50, width-50), -30);
  chem2.setName("chem2");
  mundo.add(chem2);

  chem3 = new Personaje (40, 80);
  chem3.inicializar(random(50, width-50), -30);
  chem3.setName("chem3");
  mundo.add(chem3);

  tiempoParaCaida = 0;

  ////////////////////////////////////////////BOMBERITOS CON SU RED
  red = loadImage("red.png");
  r = new Red (140, 70); //140/2 es 70 y yo hago que venga y vuelva con el valor 80
  r.attachImage(red);
  r.setRestitution(0.001);
  r.inicializar(100, 550);
  mundo.add(r);



  ////////////////////////////////////////////PLATAFORMAS
  plataformas = new ArrayList <Plataforma> ();

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 5; j++) {
      Plataforma p= new Plataforma(100, 16);
      p.inicializar(130 + (j * 135), height - 160 - (i * 96), false);
      anclaje = new FMouseJoint (p, 130 + (j * 135), height - 160 - (i * 96));
      mundo.add(p);
      plataformas.add(p);
      mundo.add(anclaje);
    }
  }
  Plataforma piso = new Plataforma(width, 10);
  piso.inicializar(width / 2, height - 1, true);
  piso.setStatic(true);
  piso.setName("piso");
  mundo.add(piso);
}



void draw() {

  ///////////////////////////////////////SONIDO
  if (pantalla == "pantalla1" ||pantalla == "pantalla2"||pantalla == "pantalla3") {
    musicaPrevia.play();
    if (tiempoParaLoop2 >= 1720) {
      musicaPrevia.loop();
      tiempoParaLoop2=0;
    }
    tiempoParaLoop2= tiempoParaLoop2 +1;
    println(tiempoParaLoop2);
  } else if (pantalla == "juego") {
    musicaPrevia.pause();
    musicaJuego.play();

    if (tiempoParaLoop1>=3240) {
      musicaJuego.loop();
      tiempoParaLoop1=0;
    }
    tiempoParaLoop1= tiempoParaLoop1 +1;
    println(tiempoParaLoop1);
  } else if (pantalla == "pantallaGanar") {
    musicaJuego.pause();
    musicaGanar.play();
    if (tiempoParaLoopGanar >=2210) {
      musicaGanar.loop();
      tiempoParaLoopGanar=0;
    }
    tiempoParaLoopGanar= tiempoParaLoopGanar+1;
    
  } else if (pantalla == "pantallaPerder") {
    musicaJuego.pause();
    musicaPerder.play();
    if (tiempoParaLoopPerder >=1412) {
      musicaPerder.loop();
      tiempoParaLoopPerder=0;
    }
    tiempoParaLoopPerder= tiempoParaLoopPerder+1;
    
  }
    tiempoParaLoop1= tiempoParaLoop1 +1;
    println(tiempoParaLoop1);
    //////////////////////////////////////////////


    if (pantalla == "pantalla1") {
      pushStyle();
      image(imagenPantalla1, 0, 0, width, height);
      popStyle();
    } else  if (pantalla == "pantalla2") {
      pushStyle();
      image(imagenPantalla2, 0, 0, width, height);
      popStyle();
    } else  if (pantalla == "pantalla3") {
      pushStyle();
      image(imagenPantalla3, 0, 0, width, height);
      popStyle();
    } else if (pantalla == "juego") {
      image(fondo, 0, 0, width, height);

      mundo.step();
      mundo.draw();

      for (int i = 0; i < width; i+=100)
      {
        image(loadImage("plataforma.png"), i, height - 5);
      }

      r.actualizar();

      //if ( tiempoParaCaida >=200) {
      //  cheemsitos[0].actualizar();
      //}
      //if (tiempoParaCaida>=400) {
      //  cheemsitos[1].actualizar();
      //}
      //if (tiempoParaCaida>=600) {
      //  cheemsitos[2].actualizar();
      //}

      //if (tiempoParaCaida>=800) {
      //  cheemsitos[3].actualizar();
      //}

      //for (int i =0; i < cheemsitos.length; i++) {
      //  cheemsitos[i].eliminar();
      //}
      tiempoParaCaida= tiempoParaCaida +1;
      println(tiempoParaCaida);

      //________________________puntaje
      pushStyle();
      textAlign(RIGHT);
      textSize(30);
      fill(0);
      text("" +contador, 735, 50);
      text("/3", 770, 50);
      popStyle();

      if (contador==3) {
        pushStyle();
        textAlign(CENTER);
        textSize(30);
        text ("GANASTE, presioná la tecla 'G' ", width/2, 100);
        popStyle();
      }  
      if (tiempoParaLoop1>=1000) {
        pushStyle();
        textAlign(CENTER);
        textSize(30);
        text ("PERDISTE, presioná la tecla 'P' ", width/2, 100);
        popStyle();
      }
    } else  if (pantalla == "pantallaGanar") {
      pushStyle();
      image(imagenPantallaGanar, 0, 0, width, height);
      popStyle();
    } else  if (pantalla == "pantallaPerder") {
      pushStyle();
      image(imagenPantallaPerder, 0, 0, width, height);
      popStyle();
    }
  }


  void contactStarted(FContact contacto) {


    FBody _body1 = contacto.getBody1();
    FBody _body2 = contacto.getBody2();

    //-----contacto de los chems con la RED

    if ((_body1.getName() == "chem1" && _body2.getName() == "red")
      || (_body2.getName() == "chem1" && _body1.getName() == "red"))
    {
      if (chem1.visible)
      {
        chem1.atrapa();
        mundo.remove(chem1);
      }
    }

    if ((_body1.getName() == "chem2" && _body2.getName() == "red")
      || (_body2.getName() == "chem2" && _body1.getName() == "red"))
    {
      if (chem2.visible)
      {
        chem2.atrapa();
        mundo.remove(chem2);
      }
    }

    if ((_body1.getName() == "chem3" && _body2.getName() == "red")
      || (_body2.getName() == "chem3" && _body1.getName() == "red"))
    {
      if (chem3.visible)
      {
        chem3.atrapa();
        mundo.remove(chem3);
      }
    }


    //contacto de los cheems con el PISO


    if ((_body1.getName() == "chem1" && _body2.getName() == "piso")
      || (_body2.getName() == "chem1" && _body1.getName() == "piso"))
    {
      if (chem1.visible)
      {
        chem1.explota();
        mundo.remove(chem1);
      }
    }

    if ((_body1.getName() == "chem2" && _body2.getName() == "piso")
      || (_body2.getName() == "chem2" && _body1.getName() == "piso"))
    {
      if (chem2.visible)
      {
        chem2.explota();
        mundo.remove(chem2);
      }
    }

    if ((_body1.getName() == "chem3" && _body2.getName() == "piso")
      || (_body2.getName() == "chem3" && _body1.getName() == "piso"))
    {
      if (chem3.visible)
      {
        chem3.explota();
        mundo.remove(chem3);
      }
    }
  }

  void keyPressed() {
    if (pantalla == "pantalla1") {
      if (key == ENTER) {
        pantalla = "pantalla2";
      }
    } else if (pantalla == "pantalla2") {
      if (key == ENTER) {
        pantalla = "pantalla3";
      }
    } else if (pantalla == "pantalla3") {
      if (key == ENTER) {
        pantalla = "juego";
      }
    } else if (pantalla == "juego") {
      if (key == 'G' || key == 'g') {
        pantalla = "pantallaGanar";
      }
      if (key == 'P' || key == 'p') {
        pantalla = "pantallaPerder";
      }
    }
  }
