/* Eliana Iguain Iafrate
 Tecnología Multimedial I
 TP#5: Minijuego Recuperatorio
 Link al video: https://www.youtube.com/watch?v=MsDOzvgOYro
 */
Aventura aventura;
void setup() {
  size(700, 600);
  aventura = new Aventura();
}

void draw() {  
  aventura.dibujarAventura();
}

void mousePressed() {
  aventura.caminoMouse();
  aventura.juego.clickear();
  aventura.juego.recolectarMonedas();
  aventura.juego.recolectarMonedasFalsas();
}

void keyPressed() {
  aventura.caminoTecla();
}
