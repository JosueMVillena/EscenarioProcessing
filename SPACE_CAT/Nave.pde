class Nave
{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;

  //CONSTRUCTOR
  public Nave()
  {
    imagen = loadImage("naveEspacial.png");
  }

  public void dibujar()
  {

    image(imagen, posicion.x, posicion.y, 80, 80);
  }

  public void mover(int direccion)
  {
    if (direccion==0) {
      this.posicion.x-=this.velocidad.x;
    }
    if (direccion==1) {
      this.posicion.x+=this.velocidad.x;
    }
    if (direccion==2) {
      this.posicion.y-=this.velocidad.y;
    }
    if (direccion==3) {
      this.posicion.y+=this.velocidad.y;
    }
  }

  public PVector getPosicion()
  {
    return this.posicion;
  }

  public PVector getVelocidad()
  {
    return this.velocidad;
  }

  public void setPosicion(PVector posicion)
  {
    this.posicion = posicion;
  }

  public void setVelocidad(PVector velocidad)
  {
    this.velocidad = velocidad;
  }
}
