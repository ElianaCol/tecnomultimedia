/* Eliana Iguain Iafrate
 Tecnología Multimedial I
 TP#5: Mini Juego
 Link al video: 
 */

Juego juego;
Tiempo tiempo;
void setup() {
  size(400, 400);
  juego = new Juego();
  tiempo = new Tiempo(10);
}

void draw() {
  background(#9B6F2D);
  juego.dibujarJuego();
  juego.recolectarMonedasFalsas();
  if(juego.getPantalla()>1){
    juego=new Juego();
  }
}

void mousePressed() {
  juego.recolectarMonedas();
  juego.recolectarMonedasFalsas();
}
