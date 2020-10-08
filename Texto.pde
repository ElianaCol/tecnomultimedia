void HistoriaNav1 () {

  if (estado == "nav 1/4") {
    background (0);
    textFont(fuente0, 40);
    fill (255);
    text(textos[0], 30, 50); 
    boton1();
    textAlign(CENTER);
    textFont(fuente1, 20);
    fill(#F1F525);    
    text(textos[1], 135, 535);
    boton2();
    fill(#F1F525);
    text(textos[2], 635, 535);
  }
}
void HistoriaNav2 () {

  if (estado == "nav 2/4") {
    background (0);
    textFont(fuente0, 50);
    fill (255);
    text(textos[3], 40, 100);
    boton1();
    textFont(fuente1, 30);
    fill(#F1F525);
    text(textos[4], 95, 550);
    boton2();
    textFont(fuente1, 25);
    fill(#F1F525);
    text(textos[5], 585, 550);
  }
}
void HistoriaNav3 () {

  if (estado == "nav 3/4") {
    background(0);
    textFont(fuente0, 50);
    fill (255);
    text(textos[6], 30, 80);
    boton1();
    textFont(fuente1, 25);
    fill(#F1F525);
    text(textos[7], 80, 550);
    boton2();
    textFont(fuente1, 20);
    fill(#F1F525);
    text(textos[8], 600, 535);
  }
}

void HistoriaNav4 () {
  if (estado == "nav 4/4") {
    background (0);
    textFont(fuente0, 40);
    fill (255);
    text(textos[9], 20, 80);
    textFont(fuente1, 30);
    text(textos[10], 260, 550);
  }
}
void HistoriaPasc1 () {

  if (estado == "pasc 1/4") {
    background(0);
    fill (255);
    textFont(fuente0, 40);
    text(textos[11], 30, 70);
    boton1();
    textFont(fuente1, 20);
    fill(#F1F525);
    text(textos[12], 100, 535);
    boton2();
    fill(#F1F525);
    text(textos[13], 590, 535);
  }
}
void HistoriaPasc2 () {

  if (estado == "pasc 2/4") {
    background (0);
    textFont(fuente0, 50);
    fill (255);
    text(textos[14], 40, 100);
    boton1();
    textFont(fuente1, 30);
    fill(#F1F525);
    text(textos[15], 95, 550);    
    boton2();
    fill(#F1F525);
    textFont(fuente1, 25);
    text(textos[16], 585, 550);
  }
}
void HistoriaPasc3 () {

  if (estado == "pasc 3/4") {
    background(0);
    boton1();
    textFont(fuente0, 50);
    fill (255);
    text(textos[17], 30, 80);
    textFont(fuente1, 25);
    fill(#F1F525);
    text(textos[18], 80, 550);
    boton2();
    textFont(fuente1, 20);
    fill(#F1F525);
    text(textos[19], 600, 535);
  }
}
void HistoriaPasc4 () {
  if (estado == "pasc 4/4") {
    background (0);
    textFont(fuente0, 40);
    fill (255);
    text(textos[20], 20, 80);
    textFont(fuente1, 30);
    text(textos[21], 260, 550);
  }
}

void creditos () {
  background(0);
  textAlign(LEFT);
  if (estado == "créditos") {
    textFont(fuente1, 50);
    fill(#F1F525);
    text("CREDITOS", 300, 60);
    text("The Nightmare Before Christmas", 150, 200);
    line(364, 10, 369, 6);
    fill(0);
    strokeWeight(3);
    stroke(#E4E825);
    rect(70, 515, 135, 50);   
    fill(#F1F525);
    textFont(fuente1, 27);     
    text("Volver al Inicio", 83, 550);   
    textFont(fuente1, 35);
    fill(#F1F525);
    text("Mini Aventura basada en", 270, 120);
    text("Por", 370, 270 );
    text("Profesor", 350, 370);
    strokeWeight(2);
    stroke(#F1F525);
    line(372, 486, 373, 480);
    text("Tecnologia Multimedial I", 280, 505 );
    text("Com 1", 360, 460);
    text("Facultad de Artes", 310, 550 ); 
    text("2020", 370, 590);
    textFont(fuente0, 30);
    fill(255);
    text("Eliana Iguain Iafrate", 310, 310);
    text("José Luis Bugiolachi", 320, 410);
  }
}

void boton1() {
  if (estado=="nav 1/4" || estado=="nav 2/4" || estado=="nav 3/4"|| estado=="nav 4/4"|| estado=="pasc 1/4"|| estado=="pasc 2/4"|| estado=="pasc 3/4"|| estado=="pasc 4/4") {
    fill(0);
    strokeWeight(3);
    stroke(#E4E825);
    rect(70, 515, 135, 50);
  }
}

void boton2() {
  if (estado=="nav 1/4" || estado=="nav 2/4"|| estado=="nav 3/4"|| estado=="nav 4/4"|| estado=="pasc 1/4"|| estado=="pasc 2/4"|| estado=="pasc 3/4"|| estado=="pasc 4/4") {
    fill(0);
    strokeWeight(3);
    stroke(#E4E825);
    rect(570, 515, 135, 50);
  }
}

void PuertaNavidad() {
  if (mouseX>0 && mouseX<width-width/2 && mouseY>0 && mouseY<height && estado == "puertas") {
    fill(0, 255, 0, 100);
    rect(0, 0, width-width/2, height);
  }
}

void PuertaPascuas() {
  if (mouseX>400 && mouseX<800 && mouseY>0 && mouseY<height) {
    fill(255, 0, 0, 100);
    rect(400, 0, 400, height);
  }
}
