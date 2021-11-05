Juego juego;
Tiempo tiempo;
void setup() {
  size(400, 400);
  juego = new Juego();
  tiempo = new Tiempo(10);
}

void draw() {
  background(#9B7E2D);
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
