class Tiempo {
  int tiempoInicio;
  int tiempoCant;
  int time = 0;
  boolean tiempoFinalizado;

  Tiempo (int tCant) {
    tiempoInicio = millis();
    tiempoCant = tCant*1000;
    tiempoFinalizado = false;
  }

  void start() {
    /*if (aventura.juego.getPantalla()==0) {
     tiempoInicio = millis();
     } else if (aventura.juego.getPantalla()==1) {*/
    time = (tiempoInicio + tiempoCant) - millis(); //contador hacia abajo
    if (time>=0) {
      fill(#F7EC02);
      rect(300, 13, 100, 30, 7);
      fill(0);
      textSize(20);
      textAlign(CENTER);
      text(time/1000, 350, 35);
    } else if (time<1) {
      //aventura.juego.cambiarAPantalla(3);
      tiempoFinalizado = true;
    }
    println(time);
  }

  void reiniciar() {
    tiempoInicio = millis();
    //tiempoCant = 1000;
    tiempoFinalizado = false;
  }
}  
