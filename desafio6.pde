Boton bot;

void setup() {
  size(400, 400);
  textAlign(CENTER, CENTER);
  bot = new Boton(width/2, height/2, 200, 100); //construyo el objeto
}

void draw() {
  background(255);
  rectMode(CENTER);
  fill(0);
  bot.dibujar();
}

class Boton {
  int x, y;
  int w, h;
  Boton (int x_, int y_, int w_, int h_) {
    x = x_;
    y = y_;
    w = w_;
    h = h_;
  }
  void dibujar() {
    textSize(15);
    text("Iniciar", width/2, height/2);
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
      rect(x, y, w, h, 10);
      fill(255);
      textSize(30);
      text("Iniciar", width/2, 200);
    }
  }
}
