Juego juego;
Tiempo tiempo;
void setup() {
  size(400, 400);
  juego = new Juego();
  tiempo = new Tiempo(10000);
}

void draw() {
  background(255);
  juego.dibujarJuego();
  //tiempo.descontar();
  juego.recolectarMonedasFalsas();
  //tiempo.start();
}

void mousePressed() {
  juego.recolectarMonedas();
  juego.recolectarMonedasFalsas();
  //juego.botones(200,200,200,200);
}
