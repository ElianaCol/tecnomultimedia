/*
Tecnología Multimedial I
Nombre: Eliana Iguain Iafrate
Legajo: 85011/7
TP Nº2: Animación de créditos
Créditos de la película: "El Expreso Polar"
*/

PImage dobly, dts, sdds, IATSE, motion, MJ, bell;
PFont fuente;
float opacidad, opacidadinv;
int posY0, posX0, posX1, corto, corto1, largo, py, py1, py2, py3, py4, py5, py6, py7, py8, py9, py10, py11, py12, py13, py14, py15, py16, py17, py18, py19, py20, py21, py22, py23, py24;
int py25, py26, py27, py28, py29, py30, py31, py32, py33, py34, py35, py36, py37, py38, py39, py40, py41, py42, py43, py44, py45, py46, py47, py48, py49, py50, py51, py52, py53, py54;
int pantalla = 0;
color c1 = color(14, 20, 39);

void setup() {
 // noLoop();
  size(1200, 500);
  fuente = loadFont("Batang-48.vlw");
  dts = loadImage("dts1.png");
  dobly=loadImage("dobly1.png");
  sdds=loadImage("sdds.png");
  IATSE=loadImage("IATSE.png");
  motion=loadImage("motion.png");
  MJ=loadImage("michael-jeter.png");
  bell=loadImage("bell.png");

  posY0 = height/2;
  posX0 = width/2 + 5; 
  posX1 = posX0 + 10;
  corto1 = posX0/20 + 5; //corto1 35
  py = height; //500  Cast
  corto = py/10; //corto 50
  largo = corto + 10;
  py1 = py+corto1; //550
  py2 = py1+corto1;
  py3 = py2+corto1;
  py4 = py3+corto1;
  py5 = py4+corto1;
  py6 = py5+corto1;
  py7 = py6+corto1;
  py8 = py7+corto1;
  py9 = py8+corto1;
  py10 = py9+corto1;
  py11 = py10+corto;//Waiters
  py12 = py11+corto1; 
  py13 = py12+corto1;
  py14 = py13+corto1;
  py15 = py14+corto1;
  py16 = py15+corto1;
  py17 = py16+corto1;
  py18 = py17+corto1;
  py19 = py18+corto1;
  py20 = py19+corto1;
  py21 = py20+corto1;
  py22 = py21+corto1;
  py23 = py22+corto1;
  py24 = py23+corto; //elves
  py25 = py24+corto1;
  py26 = py25+corto1;
  py27 = py26+corto1;
  py28 = py27+corto1;
  py29 = py28+corto1;
  py30 = py29+corto1;
  py31 = py30+corto; //Voice Performers
  py32 = py31+corto1;
  py33 = py32+corto1;
  py34 = py33+corto1;
  py35 = py34+corto1;
  py36 = py35+corto; //Illustrators
  py37 = py36+corto1;
  py38 = py37+corto1;
  py39 = py38+corto; //Designers
  py40 = py39+corto1;
  py41 = py40+corto1;
  py42 = py41+largo*2; //
  py43 = py42+largo;
  py44 = py43+largo; 
  py45 = py44+largo;
  py46 = py45+largo;
  py47 = py46+largo; 
  py48 = py47+largo;
  py49 = py48 + largo*2; //(height/5)-20; //80 dobly
  py50 = py49 + largo*2; //height/5;//100 dts
  
  textAlign (CENTER);
}

void draw() {
  background(#0E1427);

  if (frameCount >= 0) {
    pantalla = frameCount/160;
  }

  if (pantalla == 0 && pantalla <1) {
    opacidad = map(frameCount, 30, 100, 255, 30);
    tint(opacidad);
    image(bell, 0, 0, width, height);
  }
  if (pantalla==0 && frameCount > 120) {
    opacidad = map(frameCount, 100, 150, 0, 255);  
    fill(c1, opacidad);
    rect(0, 0, width, height);
  }

  textFont(fuente);
  textSize(30);

  if (pantalla == 1) { //160 a 320
    opacidad = map(frameCount, 270, 90, 0, 255);
    text("Directed by\n ROBERT ZEMECKIS", posX0, posY0-20);
    opacidad = map(frameCount, 170, 270, 255, 0);
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
    opacidad = map(frameCount, 1130, 1260, 255, 0);
    text("A\n ROBERT ZEMECKIS\n Film", posX0, posY0-20);
  }

  fill(237, 221, 93, opacidad);
  textSize(20);

  if (pantalla >= 7 && frameCount > 1280) {
    fill(237, 221, 93);
    textSize(20);
    textAlign(CENTER);
    text("Cast", posX0, py);
    text("Waiters", posX0, py11);
    text("Elves", posX0, py24);
    text("Voice Performers", posX0, py31);
    text("Illustrators", posX0, py36);
    text("CG Designers", posX0, py39);

    text("Microphone Booms provided by J.L. FISHER, INC.", posX0, py42);
    text("THE WORLD BOOK ENCYCLOPEDIA", posX0, py43);
    text("The Major League Baseball trademarks depicted in this motion picture were licensed by", posX0, py44);
    text("MAJOR LEAGUE BASEBALL PROPERTIES, INC.", posX0, py45);
    text("Color by TECHNICOLOR", posX0, py46);
    text("KODAK Motion Pictures Products", posX0, py47);
    text("FUJIFILM Motion Pictures Products", posX0, py48);

    textAlign(RIGHT);
    //Cast
    text("Hero Boy", posX0, py1);
    text("Father", posX0, py2);
    text("Sister Sarah", posX0, py3);
    text("Mother", posX0, py4);
    text("Conductor", posX0, py5);
    text("Know-it-all", posX0, py6);
    text("Hero Girl", posX0, py7);
    text("Lonely Boy", posX0, py8);
    text("Pastry Chefs", posX0, py9);
    //Waiters
    text("JOSH ELI", posX0, py12);
    text("ROLANDAS HENDRICKS", posX0, py13);
    text("JOHN SCOTT", posX0, py14);
    text("SEAN SCOTT", posX0, py15);
    text("Hobo", posX0, py16);
    text("Smokey", posX0, py17);
    text("Steamer", posX0, py18);
    text("Toothless Boy", posX0, py19);
    text("Read Head Girl", posX0, py20);
    text("Scrooge", posX0, py21);
    text("Elf General", posX0, py22);
    text("Elf Lieutenant", posX0, py23);
    //Elves
    text("PHIL FONDACARO", posX0, py25);
    text("MARK POVINELLI", posX0, py26);
    text("CHRIS COPPOLA", posX0, py27);
    text("Little Boy", posX0, py28);
    text("Santa Claus", posX0, py29);
    text("Elf Singer", posX0, py30);
    //Voice Performers
    text("Hero Boy", posX0, py32);
    text("Smokey & Steamer", posX0, py33);
    text("Lonely Boy", posX0, py34);
    text("Sister Sarah", posX0, py35);
    //Illustrators
    text("STEFAN DECHANT", posX0, py37);
    text("JAMES CLYNE", posX0, py38);
    //CG Designers
    text("PETE BILLINGTON", posX0, py40);
    text("MATTHEW A. WARD", posX0, py41);

    textAlign(LEFT);
    //Cast
    text("TOM HANKS", posX1, py1);
    text("TOM HANKS", posX1, py2);
    text("LESLIE ZEMECKIS", posX1, py3);
    text("LESLIE ZEMECKIS", posX1, py4);
    text("TOM HANKS", posX1, py5);
    text("EDDIE DEEZEN", posX1, py6);
    text("NONA GAYE", posX1, py7);
    text("PETER SCOLARI", posX1, py8);
    text("BRENDAN KING", posX1, py9);
    text("ANDY PELLICK", posX1, py10-5);
    //Waiters
    text("MARK MENDOCA", posX1, py12);
    text("MARK GOODMAN", posX1, py13);
    text("GREGORY GAST", posX1, py14);
    text("GORDON HART", posX1, py15);
    text("TOM HANKS", posX1, py16);
    text("MICHAEL JETER", posX1, py17);
    text("MICHAEL JETER", posX1, py18);
    text("CHRIS COPPOLA", posX1, py19);
    text("JULENE RENEE", posX1, py20);
    text("TOM HANKS", posX1, py21);
    text("CHARLES FLEISCHER", posX1, py22);
    text("STEVEN TYLER", posX1, py23);
    //Elves
    text("DEBBIE LEE CARRINGTON", posX1, py25);
    text("ED GALE", posX1, py26);
    text("JULENE RENEE", posX1, py27);
    text("DANTE PASTULA", posX1, py28);
    text("TOM HANKS", posX1, py29);
    text("STEVEN TYLER", posX1, py30);
    //Voice Performers
    text("DARYL SABARA", posX1, py32);
    text("ANDRE SOGLIUZZO", posX1, py33);
    text("JIMMY BENNET", posX1, py34);
    text("ISABELLA PEREGRINA", posX1, py35);
    //Illustrators
    text("PHILLIP KELLER", posX1, py37);
    text("OLIVER SCHOLL", posX1, py38);
    //CG Designers
    text("YOUNG DUK CHO", posX1, py40);
    text("ZAC WOLLONS", posX1, py41);

    tint(237, 221, 93);
    image(dobly, 70, py49, 200, 90);
    image(dts, 450, py49+10, 100, 50);
    image(sdds, 780, py49, 240, 70);
    image(motion, 200, py50, 250, 130);
    image(IATSE, 800, py50-25, 200, 190);

    py--;
    py1--;
    py2--;
    py3--;
    py4--;
    py5--;
    py6--;
    py7--;
    py8--;
    py9--;
    py10--;
    py11--;
    py12--;
    py13--;
    py14--;
    py15--;
    py16--;
    py17--;
    py18--;
    py19--;
    py20--;
    py21--;
    py22--;
    py23--;
    py24--;
    py25--;
    py26--;
    py27--;
    py28--;
    py29--;
    py30--;
    py31--;
    py32--;
    py33--;
    py34--;
    py35--;
    py36--;
    py37--;
    py38--;
    py39--;
    py40--;
    py41--;
    py42--;
    py43--;
    py44--;
    py45--;
    py46--;
    py47--;
    py48--;
    py49--;
    py50--;
    py51--;
    py52--;
    py53--;
  } 

  if (pantalla >= 26) {
    opacidad = map(frameCount, 4161, 4300, 0, 255);
    textAlign(LEFT);
    textSize(30);
    fill(237, 221, 93, opacidad);
    text("Dedicated to\nthe memory of\nMichael Jeter", 300, 150);
    opacidad = map(frameCount, 4161, 4700, 10, 255);
    noTint();
    fill(#0E1427, opacidad);
    rect(0, 0, width, height);
    tint(opacidad);
    image(MJ, 600, height/6, 250, 360);
  } 
  if (pantalla >= 28 && frameCount >= 4400) {
    opacidad = map(frameCount, 5000, 4000, 255, 0);
    fill(0, 0, 0, opacidad);
    rect(0, 0, width, height);
  }

  if (pantalla >= 1 && pantalla < 8) { 
    strokeWeight(random(4));
    stroke(215,218,227);
    point(random(1200), random(500));
    strokeWeight(random(5));
    point(random(1200), random(500));
    strokeWeight(random(3));
    point(random(1200), random(500));
    strokeWeight(random(8));
    point(random(1200), random(500));
    strokeWeight(random(7));
    point(random(1200), random(500));
    strokeWeight(random(6));
    point(random(1200), random(500));
  }

  println(frameCount);
  println("pantalla" + pantalla);
}

/*void mousePressed() {
  
  loop();
  noLoop();
}*/
