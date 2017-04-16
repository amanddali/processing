PImage rainbow;
PImage unicorn;

void setup() {
  rainbow = loadImage("url.jpg"); 
  rainbow.resize(1000,800);
  size(rainbow.width, rainbow.height);
  background(rainbow);


  unicorn = loadImage("unicorn.png"); 
}

void draw() {
  if(mousePressed){
  image(unicorn,mouseX,mouseY);
  }else{
    background(rainbow);
  }
}



