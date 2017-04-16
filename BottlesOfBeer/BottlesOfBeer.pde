int x = 99;
void draw(){
  if( x > 1){
    println( x + " bottles of beer on the wall.");
    println( x + " bottles of beer.");
    println("take one down, pass it around.");
    x = x-1;
    println( x + " bottles of beer on the wall.");
  }
  if( x == 1){
    println( x + " bottle of beer on the wall.");
    println( x + " bottle of beer on the wall.");
    println( x + " bottle of beer.");
    println("take one down, pass it around");
    x = 0;
    println("no more bottles of beer on the wall.");
  }
}