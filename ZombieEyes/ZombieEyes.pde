void setup(){
  size( 500, 500);
  PImage face = loadImage("imgres.jpg");
  image(face, 0, 0);
}

void draw(){
  fill( mouseX, mouseY, 5);
  ellipse( 322, 206, 50, 50);
  ellipse( 203, 222, 50, 50);
  fill( 0, 0, 0);
  ellipse( 322, 206, 10, 10);
  ellipse( 203, 222, 10, 10);
}