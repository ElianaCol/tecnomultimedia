/* Eliana Iguain Iafrate
   Tecno Multimedia I
   TP#3: Ilusión Óptica
   Link al video: https://youtu.be/D_Hh6Q4R0tY
*/

int cant, mov, tam;
float r;
void setup() {
  size(500, 500); 
  rectMode(CENTER);  
  cant=500;
  mov=500;
  tam=50;
  r=0;
}

void draw() {
  background(0);

  /////// Cuadrados
  for (int i=cant; i>=10; i-=8) { 
    float c = map(i, 10, 500, 10, 255); 
    fill(c);   
    rect(250, 250, i+mouseX, i+mouseY);
  } 

  /////// Líneas
  for (int x=0; x<=500; x+=50) {  
    for (int y=0; y<=500; y+=50) {
      if (key=='r') {
        stroke(random(r, 255));
        line(x, y, 250, 250);
      }
    }
  }

  /////// Elipse
  fill(0);
  ellipse(250, mov, tam, tam);
}

//////// Movimiento de la elipse y cantidad de cuadrados
void keyPressed() {
  if (key == '+')
    cant++;
  if (keyCode == UP && mov>=200) {
    mov-=4;
    tam-=0.01;
  } else if (keyCode == DOWN && mov>=200) {
    mov+=4;
    tam++;
  }

  /////// REINICIO
  if (key == ENTER) {
    cant=500;
    mov=500;
    tam=50;  
    r=0;
  }
}
