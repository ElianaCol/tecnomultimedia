/* Eliana Iguain Iafrate
 Tecnología Multimedial I
 TP#5: Mini Juego Recuperatorio
 Link al video: 
*/
//------------------------------------------------------------------------------------------------------------------------------------------------------//
/*Observaciones: 
 (1) el bug es por la linea 77 de la clase Juego: "pantalla = 2;" hace que automáticamente cambie el estado; 
 (2) los PImages deberías crearlos y cargarlos dentro de cada clase correspondiente, NO todos en Juego; 
 (3) en varias ocasiones accedes a las propiedades directamente, OJO con eso, lo correcto es acceder mediante métodos; 
 (4) es raro que elementos+monedasOriginales sean una clase y las falsas otras, ¿porque no hacer 3 clases o una clip y otras monedas falsasYoriginales? 
 */

Tiempo tiempo;
Juego juego;
void setup() {
  size(700, 600);
  juego = new Juego();
  tiempo = new Tiempo(10);
}

void draw() {
  background(#9B6F2D);
  juego.dibujarJuego();
  juego.recolectarMonedasFalsas();
}

void mousePressed() {
  juego.clickear();
  juego.recolectarMonedas();
  juego.recolectarMonedasFalsas();
}
