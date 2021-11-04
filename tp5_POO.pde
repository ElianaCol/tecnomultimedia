Juego juego;
Tiempo tiempo;
void setup() {
  size(400, 400);
  juego = new Juego();
  tiempo = new Tiempo(10);
}

void draw() {
  background(255);
  juego.dibujarJuego();
  juego.recolectarMonedasFalsas();
}

void mousePressed() {
  juego.recolectarMonedas();
  juego.recolectarMonedasFalsas();

}
