int cantGotas = 200;
PImage nube;
Lluvia[] gotas = new Lluvia [cantGotas];
void setup () {
  size (400, 400);
  nube = loadImage("nube.png");
  for (int i=0; i<gotas.length; i++) {
    float x = i*20;
    //crea cada objeto
    gotas[i] = new Lluvia (random(x), random(0, 30));
  }
}

void draw () {
  background(193);
  for (int i=0; i<gotas.length; i++) {
    gotas[i].update();
    gotas[i].dibujar();
    gotas[i].rayos();
  }
  imageMode(CENTER);
  image(nube, 200, 0, 700, 380);
}
class Lluvia {
  float x, y, velocidad;
  Lluvia(float x_, float y_) {
    x = x_;
    y = y_;
    velocidad = random (2, 5);
  }
  void dibujar () {
    stroke(0, 0, 255);
    strokeWeight(1);
    line(x, y, x, y+10);
  }
  void update() {
    y += velocidad;
    reiniciar();
  }
  void rayos () {
    if (frameCount%2 == 1) {
      fill(255);
      rect(0, 0, width, height);
      strokeWeight(3);
      stroke(#FAFF08);
      line(200,0,250,190);
      line(250,190,230,300);
      line(230,300,200,400);
    }
  }
  void reiniciar() {
    if (y>height) {
      y=10;
      velocidad=random(3,5);
    }
  }
}
