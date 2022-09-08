class Personaje extends FBox{
  Boolean visible;
  
  Personaje (float _w, float _h){
    super (_w, _h); //esto que es?? superficie???
  }
  
  void inicializar(float _x, float _y){
    visible= true;
    
    //setName("chem1");
    setPosition(_x, _y);
    attachImage(loadImage ("hijo.png"));
   // setStatic(true);
    setRotatable(true);
    setRestitution(0.5); //rebotabilidad
    setFriction(2);
    setDensity(3);
  }
  
  void actualizar(){
  }
  
  void atrapa(){
    visible=false;
    contador= contador+1;
  }
  
  void explota(){
    visible=false;
    contador= contador-1;
  }
}
