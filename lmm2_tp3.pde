String estado;
PImage portada;
PImage  inter[]=new PImage [7];
//PImage  resal[]=new PImage [2];
int Frameactual=0 ;
PImage f1, f2, f3, f4, f5, f6, f7, f8, f9, inst, Fondo, barra, botonoff, botonoff1, botonoff2, botonoff3, Cllo, Cen, Cnor;
int tiempo1=0;
int tiempo=0;
int tiempo2=0;
int tb2=0;
int contador, i;
boolean b1=false;
boolean b2=false;
boolean c1=false;
boolean c2=false;
int delay;
int moral, rating;


void setup() {
  size(1200, 800);

  estado="juego";
  tiempo=25;
  portada=loadImage("portada.png");
  f1=loadImage("historia1.png");
  f2=loadImage("historia2.png");
  f3=loadImage("historia3.png");
  f4=loadImage("historia4.png");
  f5=loadImage("historia5.png");
  f6=loadImage("historia6.png");
  f7=loadImage("historia7.png");
  f8=loadImage("historia8.png");
  f9=loadImage("historia9.png");
  Fondo=loadImage("FondoP.png");
  barra=loadImage("bARRAS.png");
  botonoff=loadImage("0.png");
  botonoff1=loadImage("0.png");
  botonoff2=loadImage("0.png");
  botonoff3=loadImage("0.png");
  Cllo=loadImage("cylt.png"); //cara llorando
  Cen=loadImage("cyle.png"); //cara enojado
  Cnor=loadImage("cyl.png"); //cara normal
  inst=loadImage("instruc.jpg");
  for (int i = 0; i <6; i++) {
    inter[i]=loadImage("d_"+i+".png");
  }
  /* for (int i = 0; i <2; i++) {
   resal[i]=loadImage("resaltar_"+i+".png");
   }*/
}


void draw() {
  println(estado);
  if (estado.equals("0")) {
    image(portada, 0, 0, 1200, 700);
    Frameactual=frameCount % 6;

    if (Frameactual==0) {
      image(inter[0], 100, 250);
    }
    if (Frameactual==1) {
      image(inter[1], 300, 250);
    }
    if (Frameactual==2) {
      image(inter[2], 100, 250);
    }
    if (Frameactual==3) {
      image(inter[3], 100, 250);
    }
    if (Frameactual==4) {
      image(inter[4], 650, 250);
    }
    if (Frameactual==5) {
      image(inter[5], 100, 250);
    }
    if (Frameactual==6) {
      image(inter[6], 100, 250);
    }
    ////////////////ANIMACIÓN INICIAL/////////////////////
  } 
  if (estado.equals("1")) {
    tiempo++;
    image(f1, 0, 0, 1200, 700);
    //image(resal[frameCount %2], 0, 0, 1200, 700);
  } 
  if (tiempo>3) {
    estado.equals("2");
    image(f2, 0, 0, 1200, 700);
  }  
  if (tiempo>6) {
    estado.equals("3");
    image(f3, 0, 0, 1200, 700);
  }
  if (tiempo>9) {
    estado.equals("4");
    image(f4, 0, 0, 1200, 700);
  }
  if (tiempo>12) {
    estado.equals("5");
    image(f5, 0, 0, 1200, 700);
  }
  if (tiempo>15) {
    estado.equals("6");
    image(f6, 0, 0, 1200, 700);
  }
  if (tiempo>19) {
    estado.equals("7");
    image(f7, 0, 0, 1200, 700);
  }
  if (tiempo>=22) {
    estado.equals("8");
    image(f8, 0, 0, 1200, 700);
  }
  if (tiempo>=23) {
    estado.equals("9");
    image(f9, 0, 0, 1200, 700);
  } 
  if (tiempo>=25) {
    estado.equals("juego");
    tiempo=tiempo+1;
    image(Fondo, 0, 0, 1200, 700);
    image(barra, 0, 0, 1200, 700);
    rect(400, 72, moral, 18);
    fill(0, 255, 0);
    rect(400, 120, rating, 18);
    fill(255, 0, 0);
  } else if (estado.equals("")) {
    image(inst, 0, 0, 1200, 700);
  }


  if ( estado.equals("juego")) {
    if ( c1==true) {
      image(Cllo, 0, 0, 1200, 700);
    }
    if ( c2==true) {
      image(Cen, 0, 0, 1200, 700);
    }
    if (delay>=20) {
      delay=0;
    }
    if (moral<5) {
      moral=5;
    }
    moral=moral-1;
    if (rating<5) {
      rating=5;
    }
    rating=rating-1;
    delay=delay+1;
    if (tiempo<=80) {  
      if ( delay<10) {
        b1=false;
        image(botonoff, 180, 605);
        image(botonoff1, 310, 605);
        image(botonoff2, 750, 605);
        image(botonoff3, 880, 605);
      } else if (delay>10) {
        b1=true;
      }
    } else if (tiempo>=80) {
      if (  delay<10) {
        b1=false;
        image(botonoff, 180, 605);
        image(botonoff2, 750, 605);
      } else if (delay>10) {
        b1=true;
        image(botonoff1, 310, 605);
        image(botonoff3, 880, 605);
      }
    }
  } 
  println("tiempo", tiempo);



  /*if ( estado.equals("3")) {
   tiempo1=tiempo1+1;
   println("tiempo1", tiempo1);
   if (estado.equals("3") && tiempo1>=10) {
   estado="4";
   }
   }*/
}    
void keyPressed() {
  /* if (keyCode=='F' && estado.equals("2")) {
   estado = "3";
   }*/
  if (keyCode==ENTER && estado.equals("9")) {
    estado="juego";
  }
}

void mouseClicked() {
  if (estado.equals("0")) {
    if (mouseY>450&& mouseY<450+100&& mouseX>300 && mouseX<300+250) {
      estado = "1";
    }
  }
  /* if (estado.equals("1")&&tiempo>0) {    
   
   estado = "2";
   }*/

  if (estado.equals("juego")&& b1==true) {    
    if (mouseY>605&& mouseY<605+90&& mouseX>750 && mouseX<750+90) {
      moral=moral+45;
      rating=rating-10;
      c2=false;
      c1=false;
    }
    if (mouseY>605&& mouseY<605+90&& mouseX>880 && mouseX<880+90) {
      moral=moral+40;
      rating=rating-10;
      c2=false;
      c1=false;
    }

    if (mouseY>605&& mouseY<605+90&& mouseX>180 && mouseX<180+90) {
      c2=false;
      c1=true;
      rating=rating+40;
      moral=moral-10;
    }
    if (mouseY>605&& mouseY<605+90&& mouseX>310 && mouseX<310+90) {
      c1=false;
      c2=true;
      rating=rating+45;
      moral=moral-10;
    }

    if (estado.equals("0")) {
      if (mouseY>400&& mouseY<400+100&& mouseX>650 && mouseX<650+250) {
        estado = "5";
      }
    }
  }
}
