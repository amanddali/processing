int y=10;
int randomNumber;
int score=0;
int checkCatch;
void setup(){
  size(800,800);  
}


void draw(){
  background(85,102,136);
  stroke(0,0,0);
  fill(0,0,0);
  rect(mouseX,730,60,70);
  fill(0,0,255); 
  stroke(0,0,255);
  ellipse(randomNumber,y,10,20);   
  y=y+10;
  if(y>800){
  y=0;
  randomNumber=(int)random(800);
  }
  if (y==730){
  checkCatch(randomNumber);
  }
  fill(0,0,0);
textSize(16);
text("Score: " + score,20,20);
}
void checkCatch(int x){
if (x > mouseX && x < mouseX+100){
      score++;
      y=0;
}else if (score > 0)
     score--;
println("Your score is now: " + score);

}