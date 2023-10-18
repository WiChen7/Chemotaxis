//declare bacteria variables here   
Snow[] Chemotaxis = new Snow[300];
void setup()   
{     
  //initialize bacteria variables here
  size(500, 500);
  for (int i = 0; i < Chemotaxis.length; i++) {
    Chemotaxis[i] = new Snow();
  }
}   
void draw()   
{    
  //move and show the bacteria   
  background(0);
  fill(255, 255, 0);
  noStroke();
  ellipse(100, 100, 100, 100);
  fill(0);
  ellipse(120, 90, 100, 100);
  for (int i = 0; i<Chemotaxis.length; i++) {
    Chemotaxis[i].move();
    Chemotaxis[i].show();
  }  
  
  
}
class Snow    
{     
  //lots of java!   
  int myX;
  float myY;
  float mySpeed;
  int mySize;
  int myColor;
  Snow() {
    myX=(int)(Math.random()*600);
    myY=(int)(Math.random()*600);
    mySize = (int)(Math.random()*10-1);
    mySpeed = mySize/100.0;
    myColor = color(255,0,0);
  }
void move() {
  myX = myX + (int)(Math.random()*5)-1;
  myY = myY + (float)(Math.random()*3)+1;
  if (myY > 600) {
    myY = 0;
  }
  if (myX > 600) {
    myX = 0;
  }
}
void show() {
  fill(myColor);
  stroke(myColor);
  ellipse(myX, myY, mySize, mySize);
  move();
}
}
