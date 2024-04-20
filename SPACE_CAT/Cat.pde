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

    image(imagen, posicion.x, random(0,0), 80, 80);
    
  }

  public void mover()
  {
    if (this.posicion.x<width) {
      this.posicion.x += this.velocidad.x;
    } else {
      this.posicion.x = this.posicion.x*-1;
      
    }
    
  }
}
