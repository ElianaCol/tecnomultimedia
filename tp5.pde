int pantalla;
int contador;
int tam =20;
int cantBasura = 20;
int cantMonedas = 5;
int [] basura = new int [cantBasura];
int [] monedas = new int [cantMonedas];
float [] x = new float [cantBasura];
float [] y = new float [cantBasura];

float [] x_ = new float [cantMonedas];
float [] y_ = new float [cantMonedas];
void setup () {
  size(400, 400);
  pantalla=0;
  for (int i=0; i<basura.length; i++) {
    for (int j=0; j<monedas.length; j++) {
      x[i]=random(30, width-50);
      y[i]=random(30, height-50);

      x_[j]=random(30, width-50);
      y_[j]=random(30, height-50);
    }
  }
}

void draw () {
  background(0);
  for (int i=0; i<basura.length; i++) {
    for (int j=0; j<monedas.length; j++) {
      fill(255);
      stroke(0);
      square(x[i], y[i], tam*2);
      circle (x_[j], y[j], tam);
    }
  }
  float s = map (millis (), 0, 7000, width+1, 0);
  //Segundos
  noStroke();
  fill(0, 255, 0);
  rect(0, 0, s, 20);
  if (s<=0 && pantalla == 1) { //y estado==
    fill(255);
    rect(0, 0, width, height);
    fill(0);
    textSize(10);
    text("demasiado tarde, el conductor está muy apurado", 70, height/2);
  }

  if (s<=0) {
    pantalla = 1;
  }

  textSize(20);
  fill(255, 255, 0);
  text("Puntaje: " + contador, width-150, 50);
  
  if (contador >= 50) {
    fill(255);
    rect(0, 0, width, height);
    fill(0);
    textSize(10);
    text("Muy bien, ahora toma asiento", 70, height/2);
    pantalla=2;
  }

  println(pantalla);
}




void mousePressed() {
  agarrar(true, 0);
}
void agarrar (boolean _agarrar, int _pantalla) {
  pantalla = _pantalla;
  for (int j=0; j<monedas.length; j++) {
    fill(255);
    stroke(0);
    circle (x_[j], y[j], tam);
    if (_agarrar && _pantalla == 0) {
      if (mouseX > x_[j] && mouseX < x_[j]+tam && mouseY > y_[j] && mouseY < y_[j]+tam) {
        contador+=10;
      }
    }
  }
}
