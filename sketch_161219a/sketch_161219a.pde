void setup(){size(800,800);
}
void draw(){
  triangle(250,250,599,250,424,mouseX);
  rect(250,250,350,350);
  if(mousePressed){
    fill(100,0,170);
  }else{
    fill(250,mouseY,80);
  }
}
