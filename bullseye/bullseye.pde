int i= 150;
void setup(){
  size(200,200);
}

void draw(){
  i = i-9;
  if ( i%2 == 0 ){
    fill( 255, 3, 3);
  } else {
    fill( 255, 255, 255);
  }
  if ( i > 0){
  ellipse( 100, 100, i, i);
  }
}
