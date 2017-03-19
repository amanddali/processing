int o = 300;
int k = 200;
int g = 600;
int speed = 1;
void setup(){
  size( 800, 400);
}

void drawBullseye( int x, int y){
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


