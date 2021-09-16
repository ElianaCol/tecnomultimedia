void actualizarPantalla(int _pantalla, boolean camino) {
  println(_pantalla, "Estado nro: " + pantalla);
  if (_pantalla == 1) {
    pantalla = 2;
  } else if (_pantalla == 2) {
    pantalla = 3;
  } else if (_pantalla == 3) {
    pantalla = 4;
  } else if (_pantalla == 4) {
    pantalla = 5;
  } else if (_pantalla == 5) {
    pantalla = 6;
  } else if (_pantalla == 6 && camino) {
    pantalla = 7;
  } else {
    pantalla = 8;
  } 
  if (_pantalla == 7) {
    pantalla = 0;
  } else if (_pantalla == 8) {
    pantalla = 9;
  } else if (_pantalla == 9) {
    pantalla = 10;
  } else if (_pantalla == 10) {
    pantalla = 11;
  } else if (_pantalla == 11) {
    pantalla = 12;
  } else if (_pantalla == 12) {
    pantalla = 13;
  } else if (_pantalla == 13) {
    pantalla = 14;
  } else if (_pantalla == 14) {
    pantalla = 15;
  } else if (_pantalla == 15) {
    pantalla = 16;
  } else if (_pantalla == 16) {
    pantalla = 17;
  } else if (_pantalla == 17) {
    pantalla = 18;
  } else if (_pantalla == 18) {
    pantalla = 19;
  } else if (_pantalla == 19) {
    pantalla = 20;
  } else if (_pantalla == 20) {
    pantalla = 21;
  } else if (_pantalla == 21) {
    pantalla = 22;
  } else if (_pantalla == 22) {
    pantalla = 23;
  } else if (_pantalla == 23) {
    pantalla = 24;
  } else if (_pantalla == 24) {
    pantalla = 25;
  } else if (_pantalla == 25) {
    pantalla = 26;
  } else if (_pantalla == 26) {
    pantalla = 27;
  } else if (_pantalla == 27) {
    pantalla = 28;
  } else if (_pantalla == 28) {
    pantalla = 29;
  } else if (_pantalla == 29 && camino == false) {
    pantalla = 30;
  } else if (_pantalla == 30) {
    pantalla = 31;
  } else if (_pantalla == 31) {
    pantalla = 32;
  } else if (_pantalla == 32) {
    pantalla = 33;
  } else if (_pantalla == 33) {
    pantalla = 34;
  } else if (_pantalla == 34) {
    pantalla = 35;
  } else if (_pantalla == 35) {
    pantalla = 36; // Final ancianos
  } else if (_pantalla == 29 && camino) {
    pantalla = 37;
  } else if (_pantalla == 37) {
    pantalla = 38;
  } else if (_pantalla == 38) {
    pantalla = 39;
  } else if (_pantalla == 39) {
    pantalla = 40;
  } else if (_pantalla == 40) {
    pantalla = 41;
  } else if (_pantalla == 41) {
    pantalla = 42;
  } else if (_pantalla == 42) {
    pantalla = 43;
  } else if (_pantalla == 43) {
    pantalla = 44;
  } else if (_pantalla == 44) {
    pantalla = 45;
  } else if (_pantalla == 45) {
    pantalla = 46;
  } else if (_pantalla == 46) {
    pantalla = 47;
  } else if (_pantalla == 47) {
    pantalla = 48;
  } else if (_pantalla == 48) {
    pantalla = 49;
  } else if (_pantalla == 49) {
    pantalla = 50;
  } else if (_pantalla == 50) {
    pantalla = 51;
  } else if (_pantalla == 51) {
    pantalla = 52;
  } else if (_pantalla == 52) {
    pantalla = 53;
  } else if (_pantalla == 53) {
    pantalla = 54;
  } else if (_pantalla == 55) {
    pantalla = 56;
  } else if (_pantalla == 56) {
    pantalla = 57;
  } else if (_pantalla == 57) {
    pantalla = 58;
  } else if (_pantalla == 58) {
    pantalla = 59;
  } else if (_pantalla == 59) {
    pantalla = 60;
  } else if (_pantalla == 60) {
    pantalla = 61;
  } else if (_pantalla == 61) { 
    pantalla = 80; //FINAL A consultar
  } else if (_pantalla == 54) {
    pantalla = 62;
  } else if (_pantalla == 62) {
    pantalla = 63;
  } else if (_pantalla == 63) {
    pantalla = 64;
  } else if (_pantalla == 64) {
    pantalla = 65;
  } else if (_pantalla == 65) {
    pantalla = 66;
  } else if (_pantalla == 66) {
    pantalla = 67;
  } else if (_pantalla == 67) {
    pantalla = 68;
  } else if (_pantalla == 68) {
    pantalla = 69;
  } else if (_pantalla == 69) {
    pantalla = 70;
  } else if (_pantalla == 70) {
    pantalla = 71;
  } else if (_pantalla == 71) {
    pantalla = 72;
  } else if (_pantalla == 72) {
    pantalla = 73;
  } else if (_pantalla == 73) {
    pantalla = 81; //FINAL B pez linterna
  } else if (_pantalla == 54) {
    pantalla = 74;
  } else if (_pantalla == 74) {
    pantalla = 75;
  } else if (_pantalla == 75) {
    pantalla = 76;
  } else if (_pantalla == 76) {
    pantalla = 77;
  } else if (_pantalla == 77) {
    pantalla = 78;
  } else if (_pantalla == 78) {
    pantalla = 79;
  } else if (_pantalla == 79) {
    pantalla = 80; //FINAL C comer
  }
}

void dibujarPantalla (int pantalla) {
  for (int i=0; i < pantallas.length; i++) {
    if (pantalla == i) {
      image(pantallas [i], 0, 0, width, height);
    }
  }
}

void botones(int x, int y, int tamX, int tamY) {
  if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY) {
    fill(#DCED6E, 30);
    if (mousePressed) {
      actualizarPantalla (pantalla, true);
    }
  } else {
    noFill();
  } 
  noStroke();
  rect(x, y, tamX, tamY);
}

void dialogos(String t) {
  pushStyle();
  stroke(#E1EA7B);
  fill(#DCED6E, 100);
  rect(0, 345, width-1, 100);
  textFont(fuente);
  textSize(25);
  fill(100, 20, 250);
  textAlign(CENTER, CENTER);
  text(t, width/2, 373);
  popStyle();
}

void showText(String t, int x) {
  pushStyle();
  textAlign(CENTER, CENTER);
  fill(100, 50, 50);
  textFont(SpongeBob);
  text(t, x, height/2 );
  popStyle();
}

void resaltar (String t, int tx, int ty, int x, int y, int tamX, int tamY) {
  pushStyle();
  textFont(SpongeBob);
  textAlign(CENTER, CENTER);
  textSize(20);
  fill(255);
  text(t, tx, ty);
  if (mouseX > x && mouseX < x + tamX && mouseY > y && mouseY < y + tamY) {
    fill(0);
    rect(x, y, tamX, tamY, 7);
    textSize(30);
    fill(255);
    text(t, tx, ty);
  }
  popStyle();
}

void creditos() {
  pushStyle();
  textAlign(CENTER, CENTER);
  fill(#FC3B51);
  textFont(SpongeBob);
  text("CREDITOS", width/2, 30 );
  textSize(20);
  text("Mini aventura basada en el capitulo\n''ROCK BOTTOM''", width/2, 100 );
  text("Creado por", width/2, 160);
  text("Eliana Iguain Iafrate", width/2, 185);
  text("Profesor", width/2, 220);
  text("Matias Jauregui Lorda", width/2, 245);
  text("Comision 2", width/2, 283);
  text("Tecnologia Multimedial", width/2, 320);
  text("Facultad de Artes", width/2, 355);
  text("2021", width/2, 380);
  resaltar("Reiniciar", 80, 355, 10, 320, 140, 70);
  popStyle();
}
