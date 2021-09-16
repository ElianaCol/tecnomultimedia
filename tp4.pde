/* Eliana Iguain Iafrate
 Tecnología Multimedial I
 TP#4: Aventura Gráfica
 Link al video: https://www.youtube.com/watch?v=-0053Xo_mDo 
 */

PImage pantallas [] = new PImage [83];
PFont SpongeBob, fuente;
int pantalla;
void setup() {
  colorMode(HSB);
  size(500, 400);
  
  for (int i=0; i <pantallas.length; i++) {
    pantallas [i] = loadImage("img" + i + ".jpg");
  }
  pantalla = 0;
}

void draw () {
  SpongeBob = loadFont ("SpongeBob.vlw");
  fuente = loadFont ("fuente.vlw");
  dibujarPantalla(pantalla);
  println("estado:" + pantalla);

  if (pantalla == 6) {
    if ( mouseX < width/2 ) {
      showText("Pagar", width/4);
    } else if (mouseX > width/2) {
      showText("No\npagar", width/2+125);
    }
  }
  if (pantalla == 29) {
    if (mouseX < width/2) {
      showText("Preguntar", width/4);
    } else if (mouseX > width/2) {
      showText("Esperar", width/2+125);
    }
  }

  /// Dibujar botones de mitad de pantalla
  if (pantalla == 6 || pantalla == 29) {
    botones(0, 0, width/2, height);
    botones(width/2, 0, width/2, height);
  }
  /// Diálogos
  if (pantalla == 1) {
    dialogos("Para seguir presiona la flecha derecha");
  } else if (pantalla == 2) {
    dialogos("¡Otro fantástico día en Mundo Globo!");
  } else if (pantalla == 5) {
    dialogos("Son 50 centavos");
  } else if (pantalla == 7) {
    dialogos("Okay, deben estar por aquí.");
  } else if (pantalla == 8) {
    dialogos("Vamos Patricio, no tengo monedas.");
  } else if (pantalla == 13) {
    dialogos("Bob, ¿Dónde queda 'Saliendo de Bikini Bottom'?");
  } else if (pantalla == 14) {
    dialogos("¿Cómo?");
  } else if (pantalla == 24) {
    dialogos("Por favor, necesitamos volver a Bikini Bottom.");
  } else if (pantalla == 25) {
    dialogos("- Este fue un viaje gratis, disfruten.");
  } else if (pantalla == 28) {
    dialogos("¿Y ahora qué?");
  } else if (pantalla == 37) {
    dialogos("Tranquilo, quedate aquí, voy a consultar cuándo pasa otro.");
  } else if (pantalla == 39) {
    dialogos("Todo es muy raro aquí.");
  } else if (pantalla == 41) {
    dialogos("¡BOB ESPONJA, YA LLEGÓ EL OTRO!");
  } else if (pantalla == 43) {
    dialogos("¡BOB ESPONJAAAAAAaaaaaaaªªª!");
  } else if (pantalla == 45) {
    dialogos("Uhg, no puede ser, mejor espero en la parada.");
  } else if (pantalla == 48) {
    dialogos("Se está haciendo muy tarde, tengo que alimentar a Gary.");
  } else if (pantalla == 50) {
    dialogos("¡Vuelve por favor!");
  } else if (pantalla == 53) {
    dialogos("¡No puede ser!, tengo que hacer algo.");
  } else if (pantalla == 54) {
    dialogos("Consultar(A), Pedir ayuda(B) o Comer(C)");
  } else if (pantalla == 55) {
    dialogos("En serio...");
  } else if (pantalla == 57) {
    dialogos("Al fin. Buenas noches, ¿cuándo pasa el siguiente colectivo?");
  } else if (pantalla == 58) {
    dialogos("¿Cómo prtrtr? no le prtrtr entiendo prstsrts");
  } else if (pantalla == 59) {
    dialogos("¿Cuándo prtrtr pasa prtrtr el siguiente colectivo\n prstsrts prstsrts?");
  } else if (pantalla == 60) {
    dialogos("Ahhhh prtrtr, justo ahora prtrtr prtrtr.");
  } else if (pantalla == 61) {
    dialogos("Buenas noches prtrtr.");
  } else if (pantalla == 62) {
    dialogos("Hola, ¿podrías ayudarme?");
  } else if (pantalla == 63) {
    dialogos("prstrstsrstsrst");
  } else if (pantalla == 65) {
    dialogos("¡Espera, no quiero el globo, quiero ir a casaaa!");
  } else if (pantalla == 67) {
    dialogos ("Subir esta calle es imposible... ¿eh? ¿quién es?");
  } else if (pantalla == 68) {
    dialogos("prtrtr");
  } else if (pantalla == 71) {
    dialogos("Ohh, ¡muchas graciaaaaas prrrts!");
  } else if (pantalla == 73) {
    dialogos("¡No te preocupes Bob ya voy por tiiiii!");
  } else if (pantalla == 74) {
    dialogos("¿QUÉ?");
  } else if (pantalla == 78) {
    dialogos("IMPOSIBLE");
  }

  if (pantalla == 80 || pantalla == 81) {
    resaltar ("Reiniciar", 153, 355, 70, 320, 165, 70);
    resaltar ("Creditos", 343, 355, 260, 320, 165, 70);
  } else if (pantalla == 0) {
    resaltar ("Iniciar", 153, 355, 70, 320, 165, 70);
    resaltar ("Creditos", 343, 355, 260, 320, 165, 70);
  } else if (pantalla == 36) {
    resaltar ("Reiniciar", 153, 355, 70, 320, 165, 70);
    resaltar ("Creditos", 343, 355, 260, 320, 165, 70);
  }

  if (pantalla == 82) {
    creditos();
  }
}

void keyPressed() {
  if (keyCode == RIGHT && pantalla !=6 && pantalla !=0 && pantalla !=36 ) {
    if ( pantalla !=29  && pantalla !=54 && pantalla !=80 && pantalla !=81) {
      actualizarPantalla(pantalla, true);
    }
  }
  if (keyCode == 'A' && pantalla == 54) {
    pantalla = 55;
  } 
  if (keyCode == 'B' && pantalla == 54) {
    pantalla = 62;
  }
  if (keyCode == 'C' && pantalla == 54) {
    pantalla = 74;
  }
  if (keyCode == 'R') {
    pantalla = 0;
  }
}

void mousePressed() {
  if (pantalla == 6 || pantalla == 29) {
    if  (mouseX < width/2) {
      actualizarPantalla(pantalla, true);
    } else if ( mouseX > width/2) {
      actualizarPantalla(pantalla, false);
    }
  }
  if (pantalla == 80 || pantalla == 81) {
    if (mouseX > 70 && mouseX < 233 && mouseY > 322 && mouseY < 390 ) {
      pantalla = 0;
    } else if ( mouseX > 260 && mouseX < 423 && mouseY > 320 && mouseY < 390) {
      pantalla = 82;
    }
  }
  if (pantalla == 0 && mouseX > 70 && mouseX < 233 && mouseY > 322 && mouseY < 390) {
    pantalla = 1;
  } else if (pantalla == 0 && mouseX > 260 && mouseX < 423 && mouseY > 320 && mouseY < 390) {
    pantalla = 82;
  } else if (pantalla == 36 && mouseX > 70 && mouseX < 233 && mouseY > 322 && mouseY < 390) {
    pantalla = 0;
  } else if (pantalla == 36 && mouseX > 260 && mouseX < 423 && mouseY > 320 && mouseY < 390 ) {
    pantalla = 82;
  }
  if (pantalla == 82 && mouseX > 10 && mouseX < 150 && mouseY > 320 && mouseY < 390) {
    pantalla = 0;
  } // Créditos reinicio
}
