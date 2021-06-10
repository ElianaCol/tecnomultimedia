/* Tecnología Multimedial I
 Nombre: Eliana Iguain Iafrate
 Legajo: 85011/7
 TP Nº2: Animación de créditos
 Créditos de la película: "El Expreso Polar" */

PImage dobly, dts, sdds, IATSE, motion, MJ, bell;
PFont fuente;
float opacidad, coposX, coposY;
int posY0, posX0, posX1, py, espacio;
int pantalla = 0; 
String txt_left, txt_right = "";

void setup() {
  size(1200, 500);
  fuente = loadFont("Batang-48.vlw");
  dts = loadImage("dts1.png");
  dobly=loadImage("dobly1.png");
  sdds=loadImage("sdds.png");
  IATSE=loadImage("IATSE.png");
  motion=loadImage("motion.png");
  MJ=loadImage("michael-jeter.png");
  bell=loadImage("bell.jpg");

  posY0 = height/2;
  posX0 = width/2 + 5; 
  posX1 = posX0 + 10;
  py = height;

  textAlign (CENTER);
}

void draw() {
  background(#0E1427);

  if (frameCount >= 0) {
    pantalla = frameCount/160;
  }

  if (pantalla == 0) {
    opacidad = map(frameCount, 30, 100, 255, 30);
    tint(opacidad);
    image(bell, 0, 0, width, height);
    if ( frameCount > 120) {
      opacidad = map(frameCount, 100, 150, 0, 255);    
      fill(14, 20, 39, opacidad);
      rect(0, 0, width, height);
      pantalla = 1;
    }
  }

  textFont(fuente);
  textSize(30);

  if (pantalla == 1 && frameCount >= 150) { //160 a 320
    opacidad = map(frameCount, 170, 300, 0, 255);
    text("Directed by\n ROBERT ZEMECKIS", posX0, posY0-20);
  } else if (pantalla == 2) { //320 a 480
    opacidad = map(frameCount, 330, 460, 255, 0);
    text("Based on the Book by\n CHRIS VAN ALLSBURG", posX0, posY0-20);
  } else if (pantalla == 3) { //480 a 640
    opacidad = map(frameCount, 490, 620, 255, 0);
    text("Produced by\n STEVE STARKEY\n GARY GOETZMAN\n WILLIAM TEITLER", posX0, posY0-20);
  } else if (pantalla == 4) { //640 a 800
    opacidad = map(frameCount, 650, 780, 255, 0);
    text("Executive Producers\n TOM HANKS\n JACK RAPKE\n CHRIS VAN ALLSBURG ", posX0, posY0-20);
  } else if (pantalla == 5) { //800 a 960
    opacidad = map(frameCount, 810, 940, 255, 0);
    text("Directors of Photography\n DON BURGESS, A.S.C.\n and\n ROBERT PRESLEY", posX0, posY0-20);
  } else if (pantalla == 6) { //960 a 1120
    opacidad = map(frameCount, 970, 1100, 255, 0);
    text("Original songs by\n GLEN BALLARD\n and\n ALAN SILVESTRI", posX0, posY0-20);
  } else if (pantalla == 7) { //1120 a 1280
    opacidad = map(frameCount, 1130, 1220, 255, 0);
    text("A\n ROBERT ZEMECKIS\n Film", posX0, posY0-20);
  }

  fill(237, 221, 93, opacidad);
  textSize(20);

  if (pantalla >= 8) {
    fill(237, 221, 93);
    textSize(20);
    textAlign(CENTER);

    text("Cast", posX0, py);

    espacio = 35; 

    /////// Cast

    txt_right = "Hero Boy\nFather\nSister Sarah\nMother\nConductor\nKnow-it-all\nHero Girl\nLonely Boy\nPastry Chefs";
    txt_left = "TOM HANKS\nTOM HANKS\nLESLIE ZEMECKIS\nLESLIE ZEMECKIS\nTOM HANKS\nEDDIE DEEZEN\nNONA GAYE\nPETER SCOLARI\nBRENDAN KING\nANDY PELLICK";

    textAlign(LEFT);
    text(txt_left, posX1, py+espacio);

    textAlign(RIGHT);
    text(txt_right, posX0, py+espacio);

    espacio += 250;

    /////// Waiters

    txt_right = "JOSH ELI\nROLANDAS HENDRICKS\nJOHN SCOTT\nSEAN SCOTT\nHobo\nSmokey\nSteamer\nToothless Boy\nRead Head Girl\nScrooge\nElf General\nElf Lieutenant";
    txt_left = "MARK MENDOCA\nMARK GOODMAN\nGREGORY GAST\nGORDON HART\nTOM HANKS\nMICHAEL JETER\nMICHAEL JETER\nCHRIS COPPOLA\nJULENE RENEE\nTOM HANKS\nCHARLES FLEICHER\nSTEVEN TYLER";

    textAlign(CENTER);
    text("Waiters", posX0, py+espacio);

    espacio +=35;

    textAlign(LEFT);
    text(txt_left, posX1, py+espacio);

    textAlign(RIGHT);
    text(txt_right, posX0, py+espacio);

    ////// Elves

    txt_right = "PHIL FONCARDO\nMARK POVINELLI\nCHRIS COPPOLA\nLittle Boy\nSanta Claus\nElf Singer";
    txt_left = "DEBBIE LEE CARRINGTON\nED GALE\nJULENE RENEE\nDANTE PASTULA\nTOM HANKS\nSTEVEN TYLER";

    espacio += 300;

    textAlign(CENTER);
    text("Elves", posX0, py+espacio);

    espacio += 35;

    textAlign(LEFT);
    text(txt_left, posX1, py+espacio);

    textAlign(RIGHT);
    text(txt_right, posX0, py+espacio);

    /////// Voice performers

    txt_right = "Hero Boy\nSmokey & Steamer\nLonely Boy\nSister Sarah";
    txt_left = "DARYL SABARA\nANDRE SOGLIUZZO\nJIMMY BENNET\nISABELLA PEREGRINA";

    espacio += 170;//350

    textAlign(CENTER);
    text("Voice performers", posX0, py+espacio);

    espacio += 35;

    textAlign(LEFT);
    text(txt_left, posX1, py+espacio);

    textAlign(RIGHT);
    text(txt_right, posX0, py+espacio);

    /////// Illustrators

    txt_right = "STEFAN DECHANT\nJAMES CLYNE";
    txt_left = "PHILLIP KELLER\nOLIVER SCHOLL";

    espacio += 120;

    textAlign(CENTER);
    text("Illustrators", posX0, py+espacio);

    espacio += 35;

    textAlign(LEFT);
    text(txt_left, posX1, py+espacio);

    textAlign(RIGHT);
    text(txt_right, posX0, py+espacio);

    /////// CG Designers

    txt_right = "PETE BILLINGTON\nMATTHEW A. WARD";
    txt_left = "YOUNG DUK CHO\nZAC WOLLONS";

    espacio += 70;

    textAlign(CENTER);
    text("CG Designers", posX0, py+espacio);

    espacio += 35;

    textAlign(LEFT);
    text(txt_left, posX1, py+espacio);

    textAlign(RIGHT);
    text(txt_right, posX0, py+espacio);

    /////// Extra 

    textAlign(CENTER);

    espacio += 150;
    text("Microphone Booms provided by J.L. FISHER, INC.", posX0, py+espacio);
    espacio += 50;
    text("THE WORLD BOOK ENCYCLOPEDIA", posX0, py+espacio);
    espacio += 50;
    text("The Major League Baseball trademarks depicted in this motion picture were licensed by", posX0, py+espacio);
    espacio += 50;
    text("MAJOR LEAGUE BASEBALL PROPERTIES, INC.", posX0, py+espacio);
    espacio += 50;
    text("Color by TECHNICOLOR", posX0, py+espacio);
    espacio += 50;
    text("KODAK Motion Pictures Products", posX0, py+espacio);
    espacio += 50;
    text("FUJIFILM Motion Pictures Products", posX0, py+espacio);

    /////// Imágenes 

    espacio += 150;

    tint(237, 221, 93);
    image(dobly, 70, py+espacio, 200, 90);
    image(sdds, 780, py+espacio, 240, 70);
    image(dts, 450, py+espacio+10, 100, 50);
    espacio += 150;
    image(motion, 200, py+espacio, 250, 130);
    image(IATSE, 800, py+espacio-25, 200, 190);

    py--;
  } 

  ///////// Dedicated to

  if (pantalla >= 24) {
    opacidad = map(frameCount, 3841, 4100, 0, 255); 
    textAlign(LEFT);
    textSize(30);
    fill(237, 221, 93, opacidad);
    text("Dedicated to\nthe memory of\nMichael Jeter", 300, 150);
    opacidad = map(frameCount, 3851, 4200, 10, 255);
    noTint();
    fill(#0E1427, opacidad);
    rect(0, 0, width, height);
    tint(opacidad);
    image(MJ, 600, height/6, 250, 360);
  } 
  if (pantalla >= 26 && frameCount >= 4200) {
    opacidad = map(frameCount, 4500, 3500, 255, 0);
    fill(0, 0, 0, opacidad);
    rect(0, 0, width, height);
  }

  ///////// Nieve

  if (pantalla >= 1 && pantalla < 8) { 
    strokeWeight(random(8));
    stroke(215, 218, 227);
    //frameRate(300);
    coposX = random(width);
    coposY = random(height);
    point(coposX, coposY);
    point(coposX, coposY);
    point(coposX, coposY);
    point(coposX, coposY);
    point(coposX, coposY);
    point(coposX, coposY);
    point(coposX, coposY);
  }

  if (pantalla >= 1 && pantalla < 26) { 
    strokeWeight(random(8));
    stroke(215, 218, 227);
    point(random(pmouseX-30, mouseX+30), random(pmouseY-30, mouseY+30));
    point(random(pmouseX-35, mouseX+35), random(pmouseY-35, mouseY+35)); 
    point(random(pmouseX-40, mouseX+40), random(pmouseY-40, mouseY+40));   
    point(random(pmouseX-45, mouseX+45), random(pmouseY-45, mouseY+45));
    point(random(pmouseX-50, mouseX+50), random(pmouseY-50, mouseY+50));    
    point(random(pmouseX-55, mouseY+55), random(pmouseY-55, mouseY+55));
  }

  println(frameCount);
  println("pantalla" + pantalla);
}
