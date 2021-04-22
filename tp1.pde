void setup() {
  size(600, 600);
}

void draw() {
  background(#60AD5B);

  fill(255);
  stroke(255);
  strokeJoin(ROUND);
  circle(300, 300, 400);

  stroke(#3DE88E);
  strokeWeight(20);
  line(300, 300, 200, 520); //verde agua
  stroke(#3D9CE8);
  line(300, 300, 70, 300); // celeste
  line(300, 300, 70, 290); // celeste
  line(300, 300, 70, 280); // celeste
  line(300, 300, 70, 270); // celeste
  line(300, 300, 70, 250); // celeste
  line(300, 300, 70, 230); // celeste
  line(300, 300, 70, 310); // celeste
  line(300, 300, 70, 330); // celeste
  line(300, 300, 70, 350); // celeste
  line(300, 300, 70, 370); // celeste
  line(300, 300, 70, 380); // naranja

  stroke(#6A3DE8);
  line(300, 300, 204, 90); // violeta
  stroke(#FA0AE2);
  line(300, 300, 395, 90); // rosa
  stroke(#79FF05);
  line(300, 300, 400, 520); //verde manzana

  stroke(#F77C00);
  line(300, 300, 531, 300); // naranja
  line(300, 300, 531, 290); // naranja
  line(300, 300, 531, 280); // naranja
  line(300, 300, 531, 270); // naranja
  line(300, 300, 531, 250); // naranja
  line(300, 300, 531, 230); // naranja
  line(300, 300, 531, 310); // naranja
  line(300, 300, 531, 330); // naranja
  line(300, 300, 531, 350); // naranja
  line(300, 300, 531, 370); // naranja

  stroke(0);
  strokeJoin(ROUND);
  strokeWeight(3);
  fill(255, 0, 0);
  triangle(500, 0, 600, 100, 300, 300); //rojo
  fill(0, 255, 0);
  triangle(225, 599, 375, 599, 300, 300); //verde
  fill(0, 0, 255);
  triangle(0, 100, 100, 0, 300, 300); //azul

  fill(#E83BD4);
  triangle(225, 50, 375, 50, 300, 300); //magenta
  fill(#E7E81A);
  triangle(433, 501, 508, 420, 300, 300); //amarillo

  fill(#1AE8DC);
  triangle(166, 500, 94, 437, 300, 300); //cian

  noFill();
  stroke(5);
  strokeJoin(ROUND);
  strokeWeight(40);
  circle(300, 300, 500);

  stroke(0);
  noFill();
  circle(300, 300, 10);

  fill(255);
  circle(300, 300, 10);
}
