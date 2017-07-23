int frogX = 210;
int frogY = 405;
int hopDistance = 10;
Car carOne = new Car( 0, 135, 30, 2);
Car carTwo = new Car( 420, 302, 40, 5);
Car carThree = new Car( 420, 230, 35, 4);


void setup(){
  size( 420, 420);
}

void draw(){
  boundary();
  background( 0, 68, 238);
  fill( 0, 153, 0);
  ellipse( frogX, frogY, 30, 30);
  carOne.display();
  carTwo.display();
  carThree.display();
  carOne.drive();
  carTwo.drive();
  carThree.drive();
  if(intersects(carOne)||intersects(carTwo)||intersects(carThree)){
    frogX = 210;
    frogY = 405;
  }
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
        frogY -= hopDistance;
      }
      else if(keyCode == DOWN)
      {
        frogY += hopDistance;
      }
      else if(keyCode == RIGHT)
      {
        frogX += hopDistance;
      }
      else if(keyCode == LEFT)
      {
        frogX -= hopDistance;
      }
   }
}

void boundary(){
  if(frogX <= 15){
    frogX = 15;
  }
  if(frogX >= 405){
    frogX = 405;
  }
  if(frogY <= 15){
    frogY = 15;
  }
  if(frogY >= 405){
    frogY = 405;
  }
}

boolean intersects(Car car) {
if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}
        
public class Car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  public int getX(){
    return this.carX;
  }
  public int getY(){
    return this.carY;
  }
  public int getSize(){
    return this.carSize;
  }
  
  public Car( int carX, int carY, int carSize, int carSpeed){
    this.carX = carX;
    this.carY = carY;
    this.carSize = carSize;
    this.carSpeed = carSpeed;
  }
  
   void display() {
    fill( random(256), random(256),random(256));
    rect( this.carX , this.carY, this.carSize, 20);
  }

  void drive(){
    this.carX += this.carSpeed;
    if(this.carX <= 0){
      this.carX = 420;
    }
    if(this.carX >= 420){
      this.carX = 0;
    }
  }
}