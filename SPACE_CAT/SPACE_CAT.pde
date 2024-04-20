PImage spaceImagen;
public Nave nave;
public Asteroide asteroide;
public Cat cat;

void setup()
{
  size(500, 889);
  spaceImagen = loadImage("SpaceOne1.png");
  nave = new Nave();
  nave.setPosicion(new PVector(width/2, height/2));
  nave.setVelocidad(new PVector(10, 10));
  //asteroide = new Asteroide(new PVector(width/2,0), new PVector(0,5));
  asteroide = new Asteroide(new PVector(random(width), 0), new PVector(random(-2, 2), random(3, 6)));
  cat = new Cat(new PVector(0,height/2), new PVector(2,0));
}

void draw()
{
  image(spaceImagen, 0, 0);
  nave.dibujar();
  actualizarVelocidadNave();
  asteroide.dibujar();
  asteroide.mover();
  cat.dibujar();
  cat.mover();
}

public void keyPressed()
{
  if (key=='d')
  {
    nave.mover(1);
  }
  if (key=='a')
  {
    nave.mover(0);
  }

  if (key=='w')
  {
    nave.mover(2);
  }
  if (key=='s')
  {
    nave.mover(3);
  }
}

public void actualizarVelocidadNave()
{
  if (nave.getPosicion().x>(width/2))
  {
    nave.getVelocidad().x=30;
  } else {
    nave.getVelocidad().x=10;
  }
}
