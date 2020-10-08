PImage [] img = new PImage[38];
String [] textos = new String [22];
PFont fuente0, fuente1;
String estado;
int num = 0;
int pantalla;

void setup() {
  size(800, 600);

  for (int i=0; i<img.length; i++) {

    if (i<10)
      img[i]=loadImage ("img" + i + ".png");
    else if (i>=9) {
      img[i]=loadImage ("img" + i + ".png");
    }
  }
  
  estado = "inicio";
}

void draw() {
  background(0);

  println("img : " + num);
  println("estado : " + estado);
  println("X: " + mouseX, "Y:"+ mouseY);

  fuente0=loadFont ("fuente0.vlw"); 
  fuente1=loadFont("fuente1.vlw");

//textos
  textAlign(LEFT);
  textos[0] = ("Al entrar, Jack no podía creer lo que veían sus cavidades orbitarias:\nluces de todos colores, niños riéndo (acostumbraba verlos llorar o gritar\nde miedo), canciones... ¿Alegres? no podía entender nada. Distraído\ncon todo aquello, no se había percatado de que su pierna se había\nhundido por completo en una gran motaña de una extraña capa blanca y\nbrillante que cubría todo el suelo. Sin duda le parecía un lugar cuanto\nmenos curioso ¿Qué debería hacer ahora entonces?");
  textos[1] = ("Quedarse en\n Navidad");
  textos[2] = ("Volver a\nHalloween Town");
  textos[3] = ("Al volver a Halloween Town, Jack no podía quitarse de\nla cabeza todo lo que había conocido, ¿Sería peligroso\nque la puerta siga allí al alcance de todos?¿Será que\nquien destruyó las otras puertas tenía una razón lógica?\nJack, decide...");
  textos[4] = ("Investigar");
  textos[5] = ("Destruir puerta");
  textos[6] = ("Luego de una exhaustiva investigación de todo lo\nrelacionado con lo que esos humanos llamaban Navidad,\nJack logra descubrir qué es y quién está detrás de ello,\npero, ¿Debería contarle a los demás? o ¿Sería mejor\n guardar el secreto?");
  textos[7] = ("Guardar secreto");
  textos[8] = ("Contar a Lock,\nShock y Barrel");
  textos[9] = ("Jack confía su gran secreto con Lock,Shock y Barrel, unos niños que van\ny vienen haciendo males, y esta vez fue una de aquellas veces, ya que ni\nbien recibieron estrictas órdenes de parte de Jack para no pisar aquel\nmundo, los niños, no solo lo hicieron sino que secuestraron a quien allí\nmanda... el Conejo de Pascuas. Sin él, las Pascuas serían un desastre.\nPero ¿Quién podría reemplazarlo?");
  textos[10] = ("Presiona Enter para continuar");
  textos[11] = ("Al entrar, lo primero que notó fueron niños corriendo por todos lados,\npero no parecían asustados, sino curiosos, buscando algo que más tarde\ndecubrió eran huevos de chocolate, decorados con distintas formas de\nvarios colores. Sin duda le parecía un lugar cuanto menos curioso\n¿Qué debería hacer ahora entonces?");
  textos[12] = ("Quedarse en\n   Pascuas");
  textos[13] = ("        Volver a\nHalloween Town");
  textos[14] =("Al volver a Halloween Town, Jack no podía quitarse de\nla cabeza todo lo que había conocido, ¿Sería peligroso\nque la puerta siga allí al alcance de todos?¿Será que\nquien destruyó las otras puertas tenía una razón lógica?\nJack, decide...");
  textos[15] =("Investigar");
  textos[16] =("Destruir puerta");
  textos[17] =("Luego de una exhaustiva investigación de todo lo\nrelacionado con lo que esos humanos llamaban Navidad,\nJack logra descubrir qué es y quién está detrás de ello,\npero, ¿Debería contarle a los demás? o ¿Sería mejor\n guardar el secreto?");
  textos[18] =("Guardar secreto");
  textos[19] =("Contar a Lock,\nShock y Barrel");
  textos[20] =("Jack confía su gran secreto con Lock,Shock y Barrel, unos niños que van\ny vienen haciendo males, y esta vez fue una de aquellas veces, ya que ni\nbien recibieron estrictas órdenes de parte de Jack para no pisar aquel\nmundo, los niños, no solo lo hicieron sino que secuestraron a quien allí\nmanda... el Conejo de Pascuas. Sin él, las Pascuas serían un desastre.\nPero ¿Quién podría reemplazarlo?");
  textos[21] =("Presiona Enter para continuar");  
  
  image (img[num], 0, 0);

  if (estado.equals("puertas")) {
    num=9;
  }
  if (estado.equals("puertas")) {
    PuertaNavidad();
  }
  if (estado.equals("puertas")) {
    PuertaPascuas();
  }
  if (estado.equals("navidad")) {
    num=10;
  }
  if (estado.equals("nav 1/4")) {
    HistoriaNav1();
  }

  if (estado.equals("nav 2/4")) {
    HistoriaNav2();
  }

  if (estado.equals("nav 3/4")) {
    HistoriaNav3();
  }

  if (estado.equals("nav 4/4")) {
    HistoriaNav4();
  }

  if (estado.equals("créditos")) {
    creditos();
  }
  if (estado.equals("sequeda")) {
    num=12;
  }
  if (estado.equals("HT")) {
    num=13;
  }

  if (estado.equals("pino")) {
    num=15;
  }

  if (estado.equals("investigaNav")) {
    num=16;
  }
  if (estado.equals("guardar")) {
    num=18;
  }
  if (estado.equals("contar")) {
    num=19;
  } 
  if (estado.equals("jacknoel")) {
    num=21;
  } 
  if (num==21) {
    textFont(fuente0, 50);
    fill (255);
    text("Jack decide repartir regalos de:", 200, 50);
    textFont(fuente1, 30);
    fill(0);
    strokeWeight(3);
    stroke(#E4E825);
    rect(70, 515, 135, 50);
    fill(#F1F525);
    text("Navidad", 105, 550);
    fill(0);
    strokeWeight(3);
    stroke(#E4E825);
    rect(570, 515, 135, 50);
    strokeWeight(2);
    stroke(#F1F525);
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
    textFont(fuente1, 30);
    fill(0);
    strokeWeight(3);
    stroke(#E4E825);
    rect(70, 515, 135, 50);
    fill(#F1F525);
    text("Pascuas", 105, 550);
    fill(0);
    strokeWeight(3);
    stroke(#E4E825);
    rect(570, 515, 135, 50);
    strokeWeight(2);
    stroke(#F1F525);
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
  if (botOver(70, 514, 135, 50) && estado=="nav 1/4") {
    estado="sequeda";
  } else if (botOver(70, 514, 135, 50) && estado=="sequeda") {
    estado="nav 1/4";
  }

  //CREDITOS     
  if (botOver(570, 514, 135, 50) && estado=="sequeda" ||botOver(570, 514, 135, 50) && estado== "pino"  ||  botOver(570, 514, 135, 50) &&estado == "salvar"||  botOver(570, 514, 135, 50) &&estado == "arruinar"||botOver(570, 514, 135, 50) &&estado == "sequeda2" ||botOver(570, 514, 135, 50) &&estado == "huevo" ||botOver(570, 514, 135, 50) &&estado == "guardar2"||botOver(570, 514, 135, 50) &&estado == "salvar2"||botOver(570, 514, 135, 50) &&estado == "arruinar2" ) {
    estado="créditos";
  } else if (estado == "créditos" && botOver(70, 514, 135, 50)) {
    estado="puertas";
  }

  //volver HT
  if (botOver(570, 514, 135, 50) && estado=="nav 1/4") {
    estado="HT";
  } 

  //destruir puerta /regresar/créditos/inicio

  if (botOver(570, 514, 135, 50) && estado=="nav 2/4") {
    estado="pino";
  } 
  if (botOver(70, 514, 135, 50) && estado=="pino") {
    estado="nav 2/4";
  } else if (botOver(70, 514, 135, 50) && estado=="nav 2/4") {
    estado="investigaNav";
  } 

  //guardar secreto/regresar/créditos/inicio

  if (botOver(70, 514, 135, 50) && estado=="nav 3/4") {
    estado="guardar";
  } else if (botOver(70, 514, 135, 50) && estado=="guardar") {
    estado="nav 3/4";
  } 

  //contar secreto

  if (botOver(570, 514, 135, 50) && estado=="nav 3/4") {
    estado="contar";
  } 

  //regalos navidad/regresar/créditos/inicio
  if (botOver(70, 514, 135, 50) && estado=="jacknoel") {
    estado="salvar";
  } else if (botOver(70, 514, 135, 50) && estado=="salvar") {
    estado="jacknoel";
  } 


  //regalos Halloween/regresar/créditos/inicio
  if (botOver(570, 514, 135, 50) && estado=="jacknoel") {
    estado="arruinar";
  } else if (botOver(70, 514, 135, 50) && estado=="arruinar") {
    estado="jacknoel";
  } 

  //HISTORIA PASCUAS
  //se queda en pascuas/regresar/créditos/ inicio

  if (botOver(70, 514, 135, 50) && estado=="pasc 1/4") {
    estado="sequeda2";
  } else if (botOver(70, 514, 135, 50) && estado=="sequeda2") {
    estado="pasc 1/4";
  } 

  //volver HT
  if (botOver(570, 514, 135, 50) && estado=="pasc 1/4") {
    estado="HT2";
  }  

  //destruir puerta /regresar/créditos/inicio
  if (botOver(570, 514, 135, 50) && estado=="pasc 2/4") {
    estado="huevo";
  } 

  if (botOver(70, 514, 135, 50) && estado=="huevo") {
    estado="pasc 2/4";
  } else if (botOver(70, 514, 135, 50) && estado=="pasc 2/4") {
    estado="investigaPasc";
  }  

  //guardar secreto/regresar/créditos/inicio
  if (botOver(70, 514, 135, 50) && estado=="pasc 3/4") {
    estado="guardar2";
  } else if (botOver(70, 514, 135, 50) && estado=="guardar2") {
    estado="pasc 3/4";
  } 

  //contar secreto
  if (botOver(570, 514, 135, 50) && estado=="pasc 3/4") {
    estado="contar2";
  } 

  //regalos pascuas/regresar/créditos/inicio
  if (botOver(70, 514, 135, 50) && estado=="jackconejo") {
    estado="salvar2";
  } else if (botOver(70, 514, 135, 50) && estado=="salvar2") {
    estado="jackconejo";
  } 

  //regalos Halloween/regresar/créditos/inicio
  if (botOver(570, 514, 135, 50) && estado=="jackconejo") {
    estado="arruinar2";
  } else if (botOver(70, 514, 135, 50) && estado=="arruinar2") {
    estado="jackconejo";
  }
}
void keyPressed() {

  //Enter para navidad

  if (num==8) {
    Enter ("puertas");
  }
  if (num==10) {
    Enter ("nav 1/4");
  }
  if (num==13) {
    Enter ("nav 2/4");
  }
  if (num==16) {
    Enter ("nav 3/4");
  }
  if (estado=="contar") {
    Enter ("nav 4/4");
  } else  if (estado=="nav 4/4") {
    Enter ("jacknoel");
  }

  //Enter para pascuas

  if (num==24) {
    Enter ("pasc 1/4");
  }
  if (num==27) {
    Enter ("pasc 2/4");
  }
  if (num==30) {
    Enter ("pasc 3/4");
  }  
  if (estado=="contar2") {
    Enter ("pasc 4/4");
  } else if (num==33) {
    Enter ("jackconejo");
  }
}

boolean botOver(int posX, int posY, int ancho, int alto) {
  if (mouseX>posX && mouseX< posX+ancho  && mouseY > posY && mouseY<posY+alto) {
    return true;
  }
  return false;
} 

void Enter (String pantalla) {
  if (keyCode == ENTER) {
    estado = pantalla;
  }
}
