class Cat
{
  private PVector posicion;
  private PImage imagen;
  private PVector velocidad;

  public Cat()
  {
    imagen = loadImage("Cat.png");
  }

  public Cat(PVector posicion, PVector velocidad)
  {
    this.posicion = posicion;
    this.velocidad = velocidad;
    this.imagen = loadImage("Cat.png");
   
  }

  public void dibujar()
  {

    image(imagen, posicion.x, posicion.y , 100, 100);
    
  }

  public void mover()
  {
     this.posicion.x += this.velocidad.x;
    this.posicion.y += this.velocidad.y;

    if (this.posicion.x<=0 || this.posicion.x>=width-100) {
      this.velocidad.x = -this.velocidad.x;
    }
    if (this.posicion.x < 0) {
      this.posicion.x = 0;
    } else if (this.posicion.x > width - 100) {
      this.posicion.x = width - 100;
    }
   
    
  }
}
