int o = 300;
float k = 200;
float g = 600;
float speed = .2;
void setup(){
  size( 800, 400);
}

void drawBullseye( float x, float y){
  for(int i=0; i<30; i++){
    if ( o > 0){
      ellipse( x, y, o, o);
      o = o-10;
    }
   } 
   o = 300;
}

void draw(){
    println(k);
    noFill();
    if( k < 700){
      background( 170, 161, 161);
      drawBullseye( k, 200);
      drawBullseye( g, 200);
      g = g-speed;
      k = k+speed;
    }
    else{
      k = 101;
      g = 699;
    }
}


