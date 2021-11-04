class Tiempo {
  int tiempoInicio;
  int tiempoCant;
  int time = 0;
  PImage perder;

  Tiempo(int tcant) { 
    tiempoInicio = millis();
    tiempoCant = tcant*1000;
    perder=loadImage("img1.jpg");
  }

  void start() {
    if (juego.pantalla==0) {
      tiempoInicio = millis();
    } else if (juego.pantalla==1) {
      time = (tiempoInicio + tiempoCant) - millis(); 
      if (time >= 0) {
        fill(#18AD23);
        rect(150, 0, 100, 30);
        fill(255);
        textSize(20);
        text(time/1000, 192, 20);
      } else if (time<0) {
        juego.pantalla=3;
        reinicio();
      }
    }
  }
  void reinicio() {
    if (mousePressed) {
      juego.pantalla=1;
      tiempoInicio = millis();
      tiempoCant = 10000;
    }
  }
}
