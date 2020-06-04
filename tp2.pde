PImage foto, luciernaga, logo;
PFont texto, texto2;
int px, px1, py, py1, out, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27;
int out28, out29, out30, out31, out32, out33, out34, out35, out36, out37, out38, out39, out40, out41, out42, out43, out44, out45, out46, out47, out48, out49, out50, out51, out52, out53, out54, out55, out56;
int out57, out58, out59, out60, out61, out62, out63, out64, out65;
float tam, px3, py3;

void setup() {

  size(750, 422);
  noLoop();
  foto=loadImage("thelastofus.jpg");
  luciernaga=loadImage("luciérnagas3.png");
  logo=loadImage("tloulogo.png");

  px= width/5;
  py= height/2;
  px1= width/5;
  py1= height/2;
  out = height*2;
  out1= height*2+30;
  out2 = height*2+80;
  out3 = height*2+130;
  out4=height*2+170;
  out5=height*2+185;
  out6=height*2+220;
  out7=height*2+260;
  out8=height*2+300;
  out9=height*2+340;
  out10=height*2+380;
  out11=height*2+420;
  out12=height*2+460;
  out13=height*2+500;
  out14=height*2+540;
  out15=height*2+580;
  out16=height*2+610;
  out17=height*2+220;
  out18=height*2+260;
  out19=height*2+300;
  out20=height*2+340;
  out21=height*2+380;
  out22=height*2+420;
  out23=height*2+460;
  out24=height*2+500;
  out25=height*2+540;
  out26=height*2+580;
  out27=height*2+640;
  out28=height*2+680;
  out29=height*2+720;
  out30=height*2+740;
  out31=height*2+780;
  out32=height*2+800;
  out33=height*2+820;
  out34=height*2+850;
  out35=height*2+870;
  out36=height*2+900;
  out37=height*2+920;
  out38=height*2+940;
  out39=height*2+970;
  out40=height*2+980;
  out41=height*2+1000;
  out42=height*2+1030;
  out43=height*2+1040;
  out44=height*2+1060;
  out45=height*2+1080;
  out46=height*2+1110;
  out47=height*2+1130;
  out48=height*2+1160;
  out49=height*2+1170;
  out50=height*2+1190;
  out51=height*2+1220;
  out52=height*2+1230;
  out53=height*2+1250;
  out54=height*2+1270;
  out55=height*2+1290;
  out56=height*2+1320;
  out57=height*2+1330;
  out58=height*2+1350;
  out59=height*2+1450;
  out60=height*2+1470;
  out61=height*2+1500;
  out62=height*2+1530;
  out63=height*2+1550;
  out64=height-py*2-50;
  out65=height*2+1600;

}

//luciérnagas
void keyPressed() {
 noStroke();
 float distan=dist(px3,py3,width/2,height/2);
 float distMax=dist(0,0,width/2,height/2);
 float tam=map(distan,0,distMax,2,10);
 float tono=map(distan,0,distMax,0,255);
 fill(240,250,8,tono);
 ellipse(px3,py3,tam,tam);
 
 }
  

void draw() {
  background(foto);
  image (luciernaga, px-(px/2), out65, px1-(px1/3), py1-(py1/2));
  image(logo, -11, out64);
  
  cursor(CROSS);
  
  px3=random(width);
  py3=random(height);
  tam=random(3,9);
  

  texto=loadFont("Gill.vlw");
  textFont(texto, 30);
  fill(255);
  text("CAST", px/2+(px/5), out );
  textFont(texto, 25);
  text("ASHLEY JOHNSON", px/11, out2);
  text("TROY BAKER", px/11, out3);
  text("HANNAH HAYES", px/11, out6);
  text("JEFFREY PIERCE", px/11, out7);
  text("ANNIE WERSCHING", px/11, out8);
  text("ROBIN ATKIN DOWNES", px/11, out9);
  text("MERLE DANDRIDGE", px/11, out10);
  text("W EARL BROWN", px/11, out11);
  text("BRANDON SCOTT", px/11, out12);
  text("NADJI JETER", px/11, out13);
  text("ASHLEY SCOTT", px/11, out14);
  text("REUBEN LANGDON", px/11, out15);
  text("NOLAN NORTH", px/5, out27);
  textFont(texto, 20);
  text("CAST", (px*3)/4, out4);
  text("MUSIC", (px*3)/4, out28);
  text("GUSTAVO SANTAOLALLA", (px*3)/7, out30);
  text("GUSTAVO SANTAOLALLA", px/10, out32);
  text("ANIBAL KERPEL", px/10, out33);
  text("MARC SENASAC", px/10, out35);
  text("TED KOCHER", px/10, out37);
  text("ERNEST JOHNSON", px/10, out38);
  text("JONATHAN MAYER", px/10, out41);
  text("ANTHONY CARUSO", px/10, out44);
  text("JOEL YARGER", px/10, out45);
  text("TIM DAVIES", px/10, out47);
  text("SCOTT HANAU", px/10, out50);
  text("ANDREW BURESH", px/10, out53);
  text("MATT LEVINE", px/10, out54);
  text("MONTY MUDD", px/10, out55);
  text("LUCIA PERAZA", px/10, out58);
  text("BRUCE STRALEY", px/2, out60);
  text("NEIL DRUCKMANN", px/2, out63);

  strokeWeight(3); 
  stroke(#FA4C4C);
  line(px/3, out+5, px1+px1/3, out+5);
  line(px/2, out28+5, px1+px1/4, out28+5);

  texto2=loadFont("Gill2.vlw");
  textFont(texto2, 15);
  fill(#B9AEAE);
  text("STARRING", px/2+(px/10), out1);
  textFont(texto2, 13);
  text("(IN ORDER OF APPEARENCE)", px/3+5, out5);
  text("ORIGINAL SCORE PRODUCED AND PERFOMED BY", px/10, out29);
  text("SCORE PRODUCED, RECORDED AND MIXED BY", px/10, out31);
  text("MUSIC MIXING AND RECORDING", px/10, out34);
  text("MUSIC EDITING", px/10, out36);
  text("MUSIC PRODUCER FOR", px/10, out39);
  text("SCEA AND ADDITIONAL MUSIC BY", px/10, out40);
  text("MUSIC MIXING, EDITING AND", px/10, out42);
  text("ADDITIONAL MUSIC BY", px/10, out43);
  text("SYMPHONIC SOUND DESIGN", px/10, out46);
  text("ASSOCIATE MUSIC PRODUCER", px/10, out48);
  text("AND INTEGRATION", px/10, out49);
  text("MUSIC EDITING AND", px/10, out51);
  text("ADDITIONAL MUSIC BY", px/10, out52);
  text("PRODUCTION COORDINATOR", px/10, out56);
  text("FOR VISUAL MUSIC", px/10, out57);
  text("GAME DIRECTOR", px/2, out59);
  text("CREATIVE DIRECTOR", px/2, out62);

  textFont(texto2, 20);
  text("ELLIE", px+px/3, out2);
  text("JOEL", px+px/3, out3);
  text("AS   DAVID", px, out27);
  text("SARAH", px+px/3, out17);
  text("TOMMY", px+px/3, out18);
  text("TESS", px+px/3, out19);
  text("ROBERT", px+px/3, out20);
  text("MARLENE", px+px/3, out21);
  text("BILL", px+px/3, out22);
  text("HENRY", px+px/3, out23);
  text("SAM", px+px/3, out24);
  text("MARIA", px+px/3, out25);
  text("JAMES", px+px/3, out26);

  textFont(texto2, 15);
  text("AND", px-px/15, out16 );

  py--;
  out --;
  out1--;
  out2--;
  out3--;
  out4--;
  out5--;
  out6--;
  out7--;
  out8--;
  out9--;
  out10--;
  out11--;
  out12--;
  out13--;
  out14--;
  out15--;
  out16--;
  out17--;
  out18--;
  out19--;
  out20--;
  out21--;
  out22--;
  out23--;
  out24--;
  out25--;
  out26--;
  out27--;
  out28--;
  out29--;
  out30--;
  out31--;
  out32--;
  out33--;
  out34--;
  out35--;
  out36--;
  out37--;
  out38--;
  out39--;
  out40--;
  out41--;
  out42--;
  out43--;
  out44--;
  out45--;
  out46--;
  out47--;
  out48--;
  out49--;
  out50--;
  out51--;
  out52--;
  out53--;
  out54--;
  out55--;
  out56--;
  out57--;
  out58--;
  out59--;
  out60--;
  out61--;
  out62--;
  out63--;
  out64--;
  out65--;
}

void mousePressed() {
  loop();
}
