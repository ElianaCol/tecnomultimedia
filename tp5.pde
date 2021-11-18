/* Eliana Iguain Iafrate
 Tecnología Multimedial I
 TP#5: Mini Juego Recuperatorio
 Link al video: 
*/

Tiempo tiempo;
Juego juego;
void setup() {
  size(700, 600);
  juego = new Juego();
  tiempo = new Tiempo(10);
}

void draw() {
  background(#9B6F2D);
  juego.dibujarJuego();
  juego.recolectarMonedasFalsas();
}

void mousePressed() {
  juego.clickear();
  juego.recolectarMonedas();
  juego.recolectarMonedasFalsas();
}
