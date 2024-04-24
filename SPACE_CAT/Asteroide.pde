class Asteroide
{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;

  public Asteroide()
  {
    imagen = loadImage("Asteroide11.png");
  }

  public Asteroide(PVector posicion, PVector velocidad)
  {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage("Asteroide11.png");
   
  }

  public void dibujar()
  {

    image(imagen, posicion.x, posicion.y, 60, 60);
    
  }

  public void mover()
  {
    if (this.posicion.y<height) {
      this.posicion.y += this.velocidad.y;
    } else {
      posicion.y = 0;
      posicion.x = random(width);
      velocidad.y = random(1,5);
    }
  }
}
