import ddf.minim.*;
AudioSample sound;

void setup(){
  Minim minim = new Minim(this);
  sound = minim.loadSample("sound.wav");
  size( 500, 500);
  fill( 247, 205, 152);
  ellipse( 250, 250, 400, 400);
  fill( 203, 12, 12);
  ellipse( 250, 250, 350, 350);
  fill( 245, 221, 126);
  ellipse( 250, 250, 325, 325);
}

void draw(){
  PImage pineapple = loadImage("pineapple.ppm.gif");
  pineapple.resize( 25, 25);
    if(mousePressed){
      sound.trigger();
      image( pineapple, mouseX, mouseY);
    }
}

