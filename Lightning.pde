int startX;
int startY;
int endX; 
int endY;
PImage moon;

void setup(){
  size(600,600);
  moon = loadImage("https://www.astronomy.com/wp-content/uploads/sites/2/2023/03/ASYSM0123_07.png?fit=600%2C338");
  background(0,0,0);
  fill(128, 128, 128);
  noStroke();
  ellipse(55,10,50,50);
  ellipse(100,40,100,100);
  ellipse(150,30,120,120);
  ellipse(200,30,90,90);
  ellipse(240,5,60,60);
  
  image(moon,400,0,170,100);
  
  strokeWeight(3);
}
void draw(){
stroke((int)(Math.random()*100)+150, (int)(Math.random()*100)+100, 35);

while (endX < 300){
  endX = startX + (int)(Math.random()*10);
  endY = startY + (int)(Math.random()*19)-9;
  }
}
void mousePressed(){
startX = 0;
startY = 0;
endX = 0;
endY = 0;
}
