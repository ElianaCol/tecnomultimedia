PImage [] img = new PImage[38];
int num = 0;
int btnx, btny, bancho, balto;
PFont fuente0,fuente1;
String estado;

void setup() {
  size(800, 600);

  for (int i=0; i<img.length; i++) {

    if (i<10)
      img[i]=loadImage ("img" + i + ".png");
    else if (i>=9) {
      img[i]=loadImage ("img" + i + ".png");
    }
  }

  bancho = 100; // ancho botón            100  
  balto = bancho/2; // altura botón        50                           
  btnx = 700; // ubicación en X           700
  btny = height - balto;//ubicación en Y  550

  estado = "inicio";
  
}

void draw() {
  background(0);
  println("img : " + num);
  println("estado : " + estado);
  println("X: " + mouseX, "Y:"+ mouseY);
  fuente0=loadFont ("fuente0.vlw"); 
  fuente1=loadFont("fuente1.vlw");
  image (img[num], 0, 0);

  if (estado == "puertas") {
    num=9;
  }
  if (estado == "puertas") {
    PuertaNavidad();
  }
  if (estado == "puertas") {
    PuertaPascuas();
  }
  if (estado == "navidad") {
    num=10;
  }
  if (estado == "nav 1/4") {
    HistoriaNav1();
  }

  if (estado == "nav 2/4") {
    HistoriaNav2();
  }

  if (estado == "nav 3/4") {
    HistoriaNav3();
  }

  if (estado == "nav 4/4") {
    HistoriaNav4();
  }

  if (estado == "créditos") {
    creditos();
  }
  if (estado == "sequeda") {
    num=12;
  }
  if (estado == "HT") {
    num=13;
  }

  if (estado == "pino") {
    num=15;
  }

  if (estado == "investigaNav") {
    num=16;
  }
  if (estado == "guardar") {
    num=18;
  }
  if (estado == "contar") {
    num=19;
  } 
  if (estado == "jacknoel") {
    num=21;
  } 
  if (num==21) {
     
    textFont(fuente0, 50);
    fill (255);
    text("Jack decide repartir regalos de:", 200, 50);
    boton1();
    textFont(fuente1, 30);
    fill(#F1F525);
    text("Navidad", 105, 550);
    boton2();
    fill(#F1F525);
    text("Halloween", 595, 550);
  } 
  if (estado == "salvar") {
    num=22;
  }
  if (estado == "arruinar") {
    num=23;
  }  
  if (estado == "Pascuas") {
    num=24;
  }
  if (estado == "sequeda2") {
    num=26;
  }
  if (estado == "HT2") {
    num=27;
  }
  if (estado == "huevo") {
    num=29;
  }
  if (estado == "investigaPasc") {
    num=30;
  }
  if (estado == "guardar2") {
    num=32;
  }
  if (estado == "contar2") {
    num=33;
  }
  if (num==35) {
    textFont(fuente0, 50);
    fill (255);
    text("Jack decide repartir objetos de:", 200, 50);
    boton1();
    textFont(fuente1, 30);
    fill(#F1F525);
    text("Pascuas", 105, 550);
    boton2();
    fill(#F1F525);
    text("Halloween", 595, 550);
  }
  if (estado == "jackconejo") {
    num=35;
  }
   if (estado == "salvar2") {
    num=36;
  }
   if (estado == "arruinar2") {
    num=37;
  }
  if (estado == "pasc 1/4") {
    HistoriaPasc1();
  }
  if (estado == "pasc 2/4") {
    HistoriaPasc2();
  }
  if (estado == "pasc 3/4") {
    HistoriaPasc3();
  }
   if (estado == "pasc 4/4") {
    HistoriaPasc4();
  } 
}

void mousePressed() {

  //Historia inicial
  if (num >= 0 && num < 8) {
    num++;
  }

  //PUERTAS
  if (estado == "puertas" && mouseX > 0 && mouseX<width-width/2 && mouseY>0 && mouseY<height  ) { 
    estado="navidad";
  } else if (estado=="puertas" && mouseX>400 && mouseX<800 && mouseY>0 && mouseY<height) {
    estado="Pascuas";
  }

  //HISTORIA NAVIDAD
  //se queda en navidad/regresar/créditos/ inicio
  
 if (estado == "nav 1/4" && mouseX >balto+(bancho/5) && mouseX< bancho*2  && mouseY > (btny-balto)+(bancho/6) && mouseY<btny+(balto/5)+(balto/10)) {
    estado="sequeda";
  } else if (estado=="sequeda"  && mouseX > balto+(bancho/5) && mouseX< bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY< btny+(balto/5)+(balto/10)) {
    estado="nav 1/4";
  }
  if (estado=="sequeda" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="créditos";
  } else if (estado=="créditos"  && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="puertas";
  }

  //volver HT
  if (mouseX > 570 && mouseX < 705 && mouseY > 516 && mouseY < 564 && estado == "nav 1/4") {
    estado="HT";
  } 

  //destruir puerta /regresar/créditos/inicio
  if (estado == "nav 2/4" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6)  && mouseY < btny+(balto/5)+(balto/10)) {
    estado="pino";
  } else if (estado=="pino" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="créditos";
  } else if (estado=="créditos"  && mouseX > balto+(bancho/5)  && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="puertas";
  }
  if (estado== "pino" && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="nav 2/4";
  } else if (estado=="nav 2/4"&& mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="investigaNav";
  } 

  //guardar secreto/regresar/créditos/inicio
  if (estado == "nav 3/4" && mouseX >  balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="guardar";
  } else if (estado == "guardar" && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="nav 3/4";
  }
  if (estado=="guardar" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="créditos";
  } else if (estado=="créditos"  && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="puertas";
  }

  //contar secreto
  if (estado =="nav 3/4" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="contar";
  }

  //regalos navidad/regresar/créditos/inicio
  if (estado=="jacknoel" && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="salvar";
  } else if (estado=="salvar" && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="jacknoel";
  }

  if (estado=="salvar" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="créditos";
  } else if (estado == "créditos"  && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="puertas";
  }

  //regalos Halloween/regresar/créditos/inicio
  if (estado == "jacknoel" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="arruinar";
  } else if (estado == "arruinar"&& mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="jacknoel";
  } else if (estado == "arruinar" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="créditos";
  } else if (estado == "créditos" && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="puertas";
  }

  //HISTORIA PASCUAS
  //se queda en pascuas/regresar/créditos/ inicio
  if (estado=="pasc 1/4" && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="sequeda2";
  } else if (estado=="sequeda2"  && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="pasc 1/4";
  }
  if (estado=="sequeda2" && mouseX > btny+(balto/5)*2 && mouseX < btnx+(balto/10) && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="créditos";
  } else if (estado == "créditos"  && mouseX > balto+(bancho/5) && mouseX < bancho*2 && mouseY > (btny-balto)+(bancho/6) && mouseY < btny+(balto/5)+(balto/10)) {
    estado="puertas";
  }

  /*70= balto+(bancho/5)   200= bancho*2  516= (btny-balto)+(bancho/6)  564= btny+(balto/5)+(balto/10)
   570= btny+(balto/5)*2  705= btnx+(balto/10)   */

  //volver HT
  if (estado == "pasc 1/4" && mouseX > 570 && mouseX < 705 && mouseY > 516 && mouseY<564) {
    estado="HT2";
  } 

  //destruir puerta /regresar/créditos/inicio
  if (estado == "pasc 2/4" && mouseX >570 && mouseX<705 && mouseY > 516 && mouseY<564) {
    estado="huevo";
  } else if (estado == "huevo" && mouseX >570 && mouseX<705 && mouseY > 516 && mouseY<564) {
    estado="créditos";
  } else if (estado=="créditos" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="puertas";
  }
  if (estado == "huevo" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="pasc 2/4";
  } else if (estado=="pasc 2/4" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="investigaPasc";
  } 

  //guardar secreto/regresar/créditos/inicio
  if (estado == "pasc 3/4" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="guardar2";
  } else if (estado == "guardar2" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="pasc 3/4";
  }
  if (estado == "guardar2" && mouseX >570 && mouseX<705 && mouseY > 516 && mouseY<564) {
    estado="créditos";
  } else if (estado=="créditos"  && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="puertas";
  }

  //contar secreto
  if (estado == "pasc 3/4" && mouseX >570 && mouseX<705 && mouseY > 516 && mouseY<564) {
    estado="contar2";
  }

  //regalos pascuas/regresar/créditos/inicio
  if (estado == "jackconejo" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="salvar2";
  } else if (estado== "salvar2" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="jackconejo";
  }

  if (estado == "salvar2" && mouseX >570 && mouseX<705 && mouseY > 516 && mouseY<564) {
    estado="créditos";
  } else if (estado=="créditos"  && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="puertas";
  }

  //regalos Halloween/regresar/créditos/inicio
  if (estado == "jackconejo" && mouseX >570 && mouseX<705 && mouseY > 516 && mouseY<564) {
    estado="arruinar2";
  } else if (estado == "arruinar2" && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="jackconejo";
  } else if (estado == "arruinar2" && mouseX >570 && mouseX<705 && mouseY > 516 && mouseY<564) {
    estado="créditos";
  } else if (estado == "créditos"  && mouseX >70 && mouseX<200 && mouseY > 516 && mouseY<564) {
    estado="puertas";
  }
}
void keyPressed() {

  //Enter para navidad
  if (keyCode == ENTER && num==8) {
    estado="puertas";
  }

  if (keyCode == ENTER && estado=="navidad") {
    estado="nav 1/4";
  }
  if (keyCode == ENTER && estado=="HT") {
    estado="nav 2/4";
  }
  if (keyCode == ENTER && estado=="investigaNav") {
    estado="nav 3/4";
  }
  if (keyCode == ENTER && estado=="contar") {
    estado="nav 4/4";
  } else if (keyCode == ENTER && estado=="nav 4/4") {
    estado="jacknoel";
  }

  //Enter para pascuas
  if (keyCode == ENTER && estado=="Pascuas") {
    estado="pasc 1/4";
  }
  if (keyCode == ENTER && estado=="HT2") {
    estado="pasc 2/4";
  }
  if (keyCode == ENTER && estado=="investigaPasc") {
    estado= "pasc 3/4";
  }
  if (keyCode == ENTER && estado=="contar2") {
    estado="pasc 4/4";
  } else if (keyCode == ENTER && estado=="pasc 4/4") {
    estado="jackconejo";
  }
}
