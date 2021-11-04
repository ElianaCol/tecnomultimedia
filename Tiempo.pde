class Tiempo {
  //campos
  int tiempoInicio;
  int tiempoCant;
  int time = 0;
  PImage perder;
  //constructor
  Tiempo(int tcant) { //le paso por parámetro la cantidad de tiempo
    tiempoInicio = millis();
    tiempoCant = tcant;
    perder=loadImage("img1.jpg");
  }

  //métodos
  void start() {
    if (juego.pantalla==0) {
      tiempoInicio = millis();
    } else if (juego.pantalla==1) {
      time = (tiempoInicio + tiempoCant) - millis(); //time maneja el resultado en sí
      if (time >= 0) {
        fill(#18AD23);
        rect(150, 0, 100, 30);
        fill(255);
        textSize(20);
        text(time/1000, 192, 20);       
      } else if (time<0){
       //juego.pantalla = 3;
       fill(255);
       rect(0,0,width,height);
       fill(0);
       text("imagen perder",170,height/2);
       image(perder,width,height);
       //juego.pantalla=3;
        if (mousePressed) {
          tiempoInicio = millis();
          tiempoCant = 10000;
        }
      }
    }
  }
}


/*void descontar() {
 if (juego.pantalla == 1) {
 fill(255);
 textAlign(CENTER);
 textSize(25);
 text(nf(second(), 2), 50, 50);
 // temp = map (millis(), 0, 7000, width, 0);
 // fill(cT);
 // rect(posXT, posYT, temp, h);
 int passedTime = millis() - tiempoTranscurrido;
 // Has five seconds passed?
 if (passedTime > tiempoTotal) {
 println("7 seconds have passed!");
 tiempoTranscurrido = 0; // Save the current time to restart the timer!
 }
 }
 if (tiempoTranscurrido<=0) {
 juego.pantalla = 2;
 image(juego.perder, 0, 0, width, height);
 }*/
