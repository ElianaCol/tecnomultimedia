class Plataforma extends FBox
{
  Plataforma(float _w, float _h)
  {
    super(_w, _h);
  }

  void inicializar(float _x, float _y, Boolean _piso)
  {
    setName("plataforma");
    setPosition(_x, _y);
    
    if(!_piso){
    attachImage(loadImage ("nube.png"));
    }
    
  }
}
